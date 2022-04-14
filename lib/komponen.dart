import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {
  String email = "nadia@gmail.com";
  String password = "nadia";

  TextEditingController emailControl = new TextEditingController();
  TextEditingController passwordControl = new TextEditingController();
  final formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text("Sign In", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: 25.0, fontWeight: FontWeight.bold)),
        _formBuilder(),
      ]),
    )));
  }

  Widget _formBuilder() {
    return Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: emailControl,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black12,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Username tidak boleh kosong';
                }
                return null;
              },
              decoration: new InputDecoration(
                hintText: "username or email",
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black38),
                prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: passwordControl,
                obscureText: true,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
                decoration: new InputDecoration(
                  hintText: "password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.black)),
                ),
              )),
          TextButton(
            child: Text("Forgot Password?", style: TextStyle(color: Colors.black45)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpPage();
              }));
            },
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 45,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25),
                    ),
                  ),
                  child: Text("Sign In"),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Thanks();
                      }));
                    } else {
                      print('Password salah');
                    }
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 45,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25), side: BorderSide(color: Colors.black)),
                  ),
                  child: Text("Sign Up", style: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<SignUpPage> {
  String email = "nadia@gmail.com";
  String password = "nadia";

  TextEditingController emailControl = new TextEditingController();
  TextEditingController passwordControl = new TextEditingController();
  final formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text("Sign In", textAlign: TextAlign.center, style: TextStyle(color: Colors.black87, fontSize: 25.0, fontWeight: FontWeight.bold)),
        _formBuilder(),
      ]),
    )));
  }

  Widget _formBuilder() {
    return Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: emailControl,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black12,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Username tidak boleh kosong';
                } else if (value != email) {
                  return 'Username kurang tepat';
                }
                return null;
              },
              decoration: new InputDecoration(
                hintText: "username or email",
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black38),
                prefixIcon: Icon(Icons.account_circle, color: Colors.black),
                enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: passwordControl,
                obscureText: true,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Password tidak boleh kosong';
                  } else if (value != password) {
                    return 'Password mudah ditebak';
                  }
                  return null;
                },
                decoration: new InputDecoration(
                  hintText: "password",
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.black)),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: passwordControl,
                obscureText: true,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
                decoration: new InputDecoration(
                  hintText: "confirm password",
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: new BorderRadius.circular(25), borderSide: BorderSide(color: Colors.black)),
                ),
              )),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 45,
              width: 300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25),
                    ),
                  ),
                  child: Text("Sign In"),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      if (emailControl != email) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      } else {
                        print("Username salah");
                      }
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        Padding(padding: EdgeInsets.all(150)),
        Center(
          child: Text("Terimakasih", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
        ),
        Text(
          "Karena anda telah login",
          style: TextStyle(fontSize: 15),
        )
        ElevatedButton(
          child: Text("LogOut")
        )
      ])),
    );
  }
}
