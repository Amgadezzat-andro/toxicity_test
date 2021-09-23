import 'package:flutter/material.dart';
import 'package:toxicity_test/models/http_exception.dart';
import 'dart:convert';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
//import 'dart:developer' as dev; for debugging

class Auth with ChangeNotifier {
  // intilaize vars for authentication classs
  // get token from response
  String _token;
  // time to log out automatically
  DateTime _expiryDate;
  // get user id from response
  String _userId;
  Timer _authTimer;

// return true if token != null
  bool get isAuth {
    return token != null;
  }

// return token if  expirydate not null and its after now and token not null
  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    } else {
      return null;
    }
  }

// getter for user Id
  String get userId {
    return _userId;
  }

// function to authenticate user to firebase
//https://firebase.google.com/docs/reference/rest/auth#section-create-email-password
  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    //dev.debugger();
    // get web api key from project settings in firebase
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyCvr46sV7Ud5kObTFH45qMWbmcYKzLuoYY';
    try {
      // send info as json to firebase  using http.post
      final res = await http.post(url,
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }));
      // get response from firebase in string
      final responseData = json.decode(res.body);

      // handling response error with http exception class throw error to
      // HttpeExpection
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }

      // get token from response
      _token = responseData['idToken'];
      // get userId from response
      _userId = responseData['localId'];
      //get expirydate from response by adding it to nowTime
      _expiryDate = DateTime.now()
          .add(Duration(seconds: int.parse(responseData['expiresIn'])));

      // function is timer to excute logout function
      _autoLogout();
      notifyListeners();

// save data to sharedpreferences as map String
      final prefs = await SharedPreferences.getInstance();
      String userData = json.encode({
        'token': _token,
        'userId': userId,
        'expiryDate': _expiryDate.toIso8601String(),
      });
      prefs.setString('userData', userData);
    } catch (error) {
      // handle error in function
      throw error;
    }
  }

// sing up using authenticate function and pass 'signUp' as url segment
  Future<void> Signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

// sing in using authenticate function and pass 'signInWithPassword' as url segment
  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }

// function to try log in automatically when first opening app
  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    // check if the there is userdata
    if (!prefs.containsKey('userData')) return false;

    // get data from shared pref by decoding it
    final extractedData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;

    // converting expirydate from string to datetime
    final expiryDate = DateTime.parse(extractedData['expiryDate']);
    // if it is old time then no login
    if (expiryDate.isBefore(DateTime.now())) return false;

    // set data into vars
    _token = extractedData['token'];
    _userId = extractedData['userId'];
    _expiryDate = expiryDate;
    notifyListeners();
    _autoLogout();
    return true;
  }

  Future<void> Logout() async {
    //clear vars and cancel timer
    _token = null;
    _userId = null;
    _expiryDate = null;
    if (_authTimer != null) {
      _authTimer.cancel();
      _authTimer = null;
    }
    //clear shared pref
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  void _autoLogout() {
    // check if auth timer exists
    if (_authTimer != null) {
      _authTimer.cancel();
    }
    // make timer from expirydate - time now to excute logout
    final timetoExpiry = _expiryDate.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timetoExpiry), Logout);
  }
}
