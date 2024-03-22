import 'package:flutter/material.dart';
import 'package:my_phones_store/screens/product_list_screen.dart';
import 'package:my_phones_store/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_phones_store/screens/product_list_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();
  runApp(MyApp());
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Example',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print('User ${userCredential.user!.uid} signed in with email and password.');

      // После успешной аутентификации переходим на страницу с продуктами
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductListScreen()),
      );
    } catch (e) {
      print('Failed to sign in with email and password: $e');
      // Здесь вы можете добавить обработку ошибок, например, показать диалоговое окно с ошибкой.
    }
  }

  Future<void> signUpWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print('User ${userCredential.user!.uid} signed up with email and password.');

      // После успешной регистрации переходим на страницу с продуктами
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProductListScreen()),
      );
    } catch (e) {
      print('Failed to sign up with email and password: $e');
      // Здесь вы можете добавить обработку ошибок, например, показать диалоговое окно с ошибкой.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => signInWithEmailAndPassword(context),
                  child: Text('Sign In'),
                ),
                ElevatedButton(
                  onPressed: () => signUpWithEmailAndPassword(context),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}