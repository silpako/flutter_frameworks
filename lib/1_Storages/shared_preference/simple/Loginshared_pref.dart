import 'package:flutter/material.dart';
import 'package:flutter_frameworks/1_Storages/Shared_Preference/simple/homeshared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Login_Shared(),
  ));
}

class Login_Shared extends StatefulWidget {
  @override
  State<Login_Shared> createState() => _Login_SharedState();
}

class _Login_SharedState extends State<Login_Shared> {
  // textfiled
  final userName = TextEditingController();
  final passWord = TextEditingController();
  late bool newUser;
  late SharedPreferences prefs; // late

  @override
  void initState() {
    check_user_already_login();
    super.initState();
  }

  void check_user_already_login() async {
    prefs = await SharedPreferences.getInstance();
    //if value of firstlogin is null newUser is true else newUser is true
    newUser = prefs.getBool('firstlogin') ?? true;

    if (newUser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home_Shared()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              controller: userName,
              decoration: const InputDecoration(
                  hintText: "UserName", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passWord,
              decoration: const InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  prefs = await SharedPreferences.getInstance();
                  String uname = userName.text
                      .trim(); // trim() - removes whitespace from both sides of a string(starting & ending)
                  String pass = passWord.text.trim();

                  if (uname != '' && pass != '') {
                    prefs.setString(
                        'username', uname); // uname and pass is inputed value
                    prefs.setString(
                        'password', pass); // user name and password stored key
                    //first login false means user already logged in
                    prefs.setBool('firstlogin', false);

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home_Shared()));
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
