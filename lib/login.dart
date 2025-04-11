import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final data;
  const Login({super.key, this.data});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.data, style: TextStyle(fontSize: 25)),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("images/backgroundimage.png", fit: BoxFit.cover),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Image.asset("images/logoapp.png", width: 300, height: 200),
                    Text(
                      "Log in",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.grey),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.grey[700]),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey[700]),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 2000,
                      child: MaterialButton(
                        color: Color(0xFFBDA7E3),
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Colors.deepPurple),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
