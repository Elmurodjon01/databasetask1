import 'package:flutter/material.dart';

class Parts {
  static Widget avatar() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 80,
      width: 80,
    );
  }

  static Widget welcoming() {
    return const Text(
      'Welcome Back!',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }

  static Widget welcomingTwo() {
    return const Text(
      'Sign into to Continue',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }

  static Widget reusableTextField(
    TextEditingController controllerOne,
    String label,
    IconData icon,
  ) {
    return TextField(
      controller: controllerOne,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.blue),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.red),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.white70),
        icon: Icon(
          icon,
          color: Colors.white70,
        ),
      ),
    );
  }

  static Widget restorePass() {
    return const Text(
      'Forgot Password?',
      style: TextStyle(color: Colors.white60, fontSize: 15),
    );
  }
}
