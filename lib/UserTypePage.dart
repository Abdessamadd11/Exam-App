import 'package:flutter/material.dart';

class UserTypePage extends StatefulWidget {
  const UserTypePage({super.key});

  @override
  State<UserTypePage> createState() => _UserTypePageState();
}

class _UserTypePageState extends State<UserTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/backgroundimage.png", fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Image.asset(
                  "images/logoapp.png",
                  alignment: Alignment.topCenter,
                ),
                SizedBox(height: 10),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.deepPurple),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/stagaireimage.png"),
                        SizedBox(width: 15),
                        Text("Stagaire", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.deepPurple),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/teacherimager.png"),
                        SizedBox(width: 15),
                        Text("Stagaire", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.deepPurple),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/administratorimage.png"),
                        SizedBox(width: 15),
                        Text("Stagaire", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
