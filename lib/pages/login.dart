import 'package:firebaseapp/pages/home.dart';
import 'package:firebaseapp/pages/register.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
          child: Form(
              key: _formkey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        label: Text("E-mail"), prefixIcon: Icon(Icons.email)),
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "กรุณากรอกอีเมล";
                      }
                      return null;
                    }),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                        label: Text("Password"),
                        prefixIcon: Icon(Icons.password)),
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "กรุณากรอกรหัสผ่าน";
                      }
                      return null;
                    }),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        AuthService.loginUser(
                                _emailController.text, _passwordController.text)
                            .then((value) => {
                                  if (value == "success")
                                    {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePage()))
                                    }
                                });
                      }
                    },
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text('Register'),
                  ),
                ],
              ))),
    );
  }
}
