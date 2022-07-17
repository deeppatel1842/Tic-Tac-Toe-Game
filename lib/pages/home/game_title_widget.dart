part of 'home_page.dart';

class GameTitleWidget extends StatelessWidget {
  const GameTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
        children: [
           IconButton(
                 icon: const Icon(Icons.settings),
                  color: Colors.black87, 
                  onPressed: (){  Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Profile()));},
                  ),
          GestureDetector(
  onTap: () {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Rules()));
  }, // Image tapped
  child: Image.asset(
    'assets/images/rule.png',
    fit: BoxFit.cover, // Fixes border issues
    width: 32,
    height: 32,
  ),
)
            ]
            ),
    );
          }
  }
  

