import 'package:flutter/material.dart';
import 'package:gastogo/login.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gastogo/registerpage.dart';

void main() => runApp(GastoGo());

//var headerSection = Container(height: 300, color: Colors.red,);
//var headerSection = Image.asset('assets/images/logo.jpg');

// var titleSection = Container(
//   height: 300,
//   color: Colors.green,
// );
// var buttonSection = Container(
//   height: 300,
//   color: Colors.blue,
// );
// var courseSection = Container(
//   height: 300,
//   color: Colors.yellow,
// );

class GastoGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gas to Go",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("GastoGo"),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 70),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.jpg',
                  width: 250,
                  height: 250,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: UserName(), width: 150, height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: PassWord(), width: 150, height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: LogIn(), width: 100, height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(child: NewAccount(), width: 150, height: 30),
                  //Text("Create New Account"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

// class PassWord extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 100),
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(color: Colors.white, border: Border.all()),
//     );
//   }
// }

// TextField(
//   obscureText: true,
//   decoration: InputDecoration(
//     border: OutlineInputBorder(),
//     labelText: 'Password',
//   ),
// )

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

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Login Page"),),
      body: Center(
        child: RaisedButton(
          child: Text("Login"),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BranchPage()));
          },
        ),
      ),
    );
  }
}

// class LogIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 100),
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(color: Colors.blueAccent, border: Border.all()),
//     );
//   }
// }

class NewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Text("Create New Account"),
    return Scaffold(
      // appBar: AppBar(title: Text("Login Page"),),
      body: Center(
        child: OutlineButton(
          child: Text(
            "Create New Account",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
            borderSide: BorderSide(color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          },
        ),
      ),
    );
  }
}

// void openPage(BuildContext context) {
//   Navigator.push(context, MaterialPageRoute(
//     builder: (BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Next page'),
//         ),
//         body: const Center(
//           child: Text(
//             'This is the next page',
//             style: TextStyle(fontSize: 24),
//           ),
//         ),
//       );
//     },
//   ));
// }

// class BranchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Page"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text("Back to First Page"),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

// class RegisterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Register"),
//       ),
//       body: Container(
//         padding: EdgeInsets.only(top: 50),
//         child: Column(
//           children: <Widget>[
//             CirclePic(),
//             Container(
//               padding: EdgeInsets.only(top: 70),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(child: PassWord(), width: 150, height: 30),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(child: PassWord(), width: 150, height: 30),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(child: PassWord(), width: 150, height: 30),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(child: PassWord(), width: 150, height: 30),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 30),
//               child: RaisedButton(
//                 child: Text("Register"),
//                 color: Colors.transparent,
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => BranchPage()));
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CirclePic extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 150.0,
//         height: 150.0,
//         decoration: new BoxDecoration(
//             shape: BoxShape.circle,
//             image: new DecorationImage(
//                 fit: BoxFit.fill,
//                 image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"))));
//   }
// }
