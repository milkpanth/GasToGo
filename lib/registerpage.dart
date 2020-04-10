import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: <Widget>[
            CirclePic(),
            Container(
              padding: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: UserName(), width: 150, height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: PassWord(), width: 150, height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: PhoneNumber(), width: 150, height: 30),
                ],
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(top: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       SizedBox(child: PassWord(), width: 150, height: 30),
            //     ],
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: RaisedButton(
                child: Text("Register"),
                color: Colors.transparent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BranchPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CirclePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150.0,
        height: 150.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage("https://1.bp.blogspot.com/-EYtWIxl-XOQ/XpBu6_hvkJI/AAAAAAAALBQ/D7ovm7Tf1a0ojLe2PIPldaDjhtCiu4nJgCLcBGAsYHQ/s320/GASTOGO_LOGO.jpg"))));
  }
}

class UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Username',
      ),
    );
  }
}

class PassWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}

class PhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Phone Number',
      ),
    );
  }
}

class BranchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Back to First Page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
} 

