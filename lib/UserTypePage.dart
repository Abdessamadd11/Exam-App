import 'package:flutter/material.dart';
import 'package:ista_exams/login.dart';

class UserTypePage extends StatefulWidget {
  const UserTypePage({super.key});

  @override
  State<UserTypePage> createState() => _UserTypePageState();
}

class _UserTypePageState extends State<UserTypePage> {
  String stagaire = "Stagaire";
  String formateur = "Formateur";
  String admin = "Admin";
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Login(data: stagaire),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/stagaireimage.png"),
                        SizedBox(width: 15),
                        Text(stagaire, style: TextStyle(fontSize: 20)),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Login(data: formateur),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/teacherimager.png"),
                        SizedBox(width: 15),
                        Text(formateur, style: TextStyle(fontSize: 20)),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Login(data: admin),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/administratorimage.png"),
                        SizedBox(width: 15),
                        Text(admin, style: TextStyle(fontSize: 20)),
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
