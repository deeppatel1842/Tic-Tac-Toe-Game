import 'package:flutter/material.dart';
import 'package:keep_user_login/pages/home/login.dart';
import 'package:keep_user_login/constant.dart';
import 'package:keep_user_login/service/auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);


  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // ignore: non_constant_identifier_names
  SignOutMethod(context) async
  {
    await signOut();
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(constant.img),),
              Text(constant.name),
              Text(constant.email),
              ElevatedButton(onPressed: () {
                SignOutMethod(context);
              }, child: const Text("SIGN OUT"))
            ],
          ),
        ),
      ),
    );
  }
}