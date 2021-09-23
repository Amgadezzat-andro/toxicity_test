import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toxicity_test/screens/sign.dart';
import 'package:toxicity_test/screens/start_screen.dart';
import 'package:provider/provider.dart';
import 'package:toxicity_test/models/http_exception.dart';
import 'package:toxicity_test/providers/auth.dart';
import 'forget_pass.dart';

// enum to define if it's login or signup
enum AuthMode { Login, SignUp }

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  AuthMode _authMode = AuthMode.Login;

  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  var _isLoading = false;

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    FocusScope.of(context).unfocus();
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    try {
      if (_authMode == AuthMode.Login) {
        await Provider.of<Auth>(context, listen: false)
            .login(_authData['email'], _authData['password']);
      } else {
        await Provider.of<Auth>(context, listen: false)
            .Signup(_authData['email'], _authData['password']);
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartScreen()),
      );
    } on HttpException catch (error) {
      var errorMessage = 'Authentication Faild';
      if (error.toString().contains('EMAIL_EXISTS')) {
        errorMessage = 'this email address already in use';
      } else if (error.toString().contains('INVALID_EMAIL')) {
        errorMessage = 'this is not a valid email_address';
      } else if (error.toString().contains('WEAK_PASSWORD')) {
        errorMessage = 'this Password is too weak';
      } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
        errorMessage = 'could not find user with this email';
      } else if (error.toString().contains('INVALID_PASSWORD')) {
        errorMessage = 'Invalid password';
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      const errorMessage = "could not authenticate,try again later.";
      _showErrorDialog(errorMessage);
    }
    setState(() {
      _isLoading = false;
    });
  }

  void _showErrorDialog(String errorMessage) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('An Error Occurred!'),
        content: Text(errorMessage),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Okay'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: _formKey,
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
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {
                                  if (val.isEmpty || !val.contains('@')) {
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  _authData['email'] = val;
                                },
                              ),
                            ),
                            SizedBox(height: 10),
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
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                controller: _passwordController,
                                validator: (val) {
                                  if (val.isEmpty || val.length < 5) {
                                    return 'password is too short';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  _authData['password'] = val;
                                },
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                child: Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ForgotPassword()));
                                },
                              ),
                            ),
                            SizedBox(height: 15),
                            Container(
                              height: 50,
                              width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                //color: Color.fromRGBO(83, 184, 187, 1),
                                onPressed: () {
                                  setState(() {
                                    _submit();
                                  });
                                },
                                child: Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
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
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
