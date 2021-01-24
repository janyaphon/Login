import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controller1;
  TextEditingController _controller2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Text("Login Page"),
      ),
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/back.jpg'),
            ) 
            ) ,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Column(
                children: [
                  Title(
                      color: Colors.tealAccent[400],
                      child: Text("VegeFruits",
                          style: TextStyle(
                              height: 3,
                              fontSize: 40,
                              color: Colors.tealAccent[400])))
                ],
              ),
//text form fild
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Title(
                            color: Colors.tealAccent[400],
                            child: Text("Login",
                                style: TextStyle(
                                    height: 2,
                                    fontSize: 40,
                                    color: Colors.tealAccent[400]))),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  child: TextFormField(
                    controller: _controller1,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Title(
                            color: Colors.tealAccent[400],
                            child: Text("Forgot password?",
                                style: TextStyle(
                                    height: 0.5,
                                    fontSize: 15,
                                    color: Colors.tealAccent[400]))),
                      ],
                    ),
                  ),
                ],
              ),

              Divider(),

//submit button
              Container(
                width: 200,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.tealAccent[400],
                  child: Text('Login'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print(_controller1);
                    }
                    if (_formKey.currentState.validate()) {
                      print(_controller2);
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Title(
                        color: Colors.black,
                        child: Text("VegeFruits App",
                            style: TextStyle(
                                height: 15,
                                fontSize: 17,
                                color: Colors.black))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
