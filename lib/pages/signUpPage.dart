
import 'package:databasetask1/parts.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _phoneController = TextEditingController();
final _passController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
    _nameController;
    _emailController;
    _phoneController;
    _passController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03032b),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Parts.welcoming(
                    'Create\n Account',
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Parts.reusableTextField(
                    _nameController,
                    'User Name',
                    Icons.person_outline,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _emailController,
                    'E-mail',
                    Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _phoneController,
                    'Phone Number',
                    Icons.phone_enabled_outlined,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _passController,
                    'Password',
                    Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //Parts.arrow(),
                  const SizedBox(
                    height: 100,
                  ),
                  //showing error here
                  //debugLocked: is not true
                  //Parts.ask(context, 'Don\'t have an account? ', 'SIGN UP', Parts.pushScreen(context, SignUpPage(),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'SIGN IN',
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
