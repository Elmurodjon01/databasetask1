import 'package:databasetask1/pages/signUpPage.dart';
import 'package:databasetask1/parts.dart';
import 'package:flutter/material.dart';

import '../model/userModel.dart';
import '../services/hiveDBService.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final passController = TextEditingController();
  @override
  void initState() {
    nameController;
    passController;

    super.initState();
  }
  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03032b),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Parts.avatar(),
                  const SizedBox(
                    height: 20,
                  ),
                  Parts.welcoming('Welcome Back!'),
                  const SizedBox(
                    height: 8,
                  ),
                  Parts.welcomingTwo(),
                  const SizedBox(
                    height: 70,
                  ),
                  Parts.reusableTextField(
                    nameController,
                    'User Name',
                    Icons.person_outline,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Parts.reusableTextField(
                    passController,
                    'Password',
                    Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Parts.restorePass(),
                  const SizedBox(
                    height: 40,
                  ),
                  Parts.arrow(pressed: _doLogin),
                  const SizedBox(
                    height: 100,
                  ),

                  Parts.ask(context, 'Don\'t have an account? ', 'SIGN UP'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _doLogin(){
    String username = nameController.text.toString().trim();
    String password = passController.text.toString().trim();
    User user = User(username: username, password: password);
    HiveDB().storeUser(user);
    var user2 = HiveDB().loadUser();
    // box.put('username', username);
    // box.put('password', password);
    // String id = box.get('username');
    // String pw = box.get('password');
    print(user2.username);
    print(user2.password);
  }
}
