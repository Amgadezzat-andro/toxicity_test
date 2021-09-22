import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity_test/screens/sign.dart';
import 'package:toxicity_test/screens/start_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      height: MediaQuery.of(context).size.height * .32,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('assets/img/logo.png'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "email",
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            )),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                            )),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'forget password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        //color: Color.fromRGBO(83, 184, 187, 1),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => StartScreen()));
                        },
                        child: Text(
                          "login",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "do not have an account?",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )),
      )),
    );
  }
}
