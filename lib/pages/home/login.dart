import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:keep_user_login/localdb.dart';
import 'package:keep_user_login/constant.dart';
import 'package:keep_user_login/pages/home/home_page.dart';
import 'package:keep_user_login/service/auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);


  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

Future<void> checkUserLog() async
{
  // ignore: await_only_futures
  final FirebaseAuth auth = await FirebaseAuth.instance;
  // ignore: await_only_futures
  final user = await auth.currentUser;
  if(user != null)
    {
      constant.name = (await LocalDataSaver.getName())!;
      constant.email = (await LocalDataSaver.getEmail())!;
      constant.img = (await LocalDataSaver.getImg())!;
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
}

  @override
  // ignore: must_call_super
  void initState(){

    checkUserLog();
}



  signInMethod(context) async
  {
    await signInWithGoogle();
    constant.name = (await LocalDataSaver.getName())!;
    constant.email = (await LocalDataSaver.getEmail())!;
    constant.img = (await LocalDataSaver.getImg())!;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Login To App"),),
      body: Stack(
      children: <Widget>[
         Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/logo2.jpg"), fit: BoxFit.fill,),
          ),
        ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(Buttons.Google, onPressed:() {
              signInMethod(context);
            })
          ],
        ),
      ),
     ]
     ),);
  }
}