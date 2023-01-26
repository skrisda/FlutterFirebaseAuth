import 'package:firebaseapp/pages/login.dart';
import 'package:firebaseapp/services/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
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
                        // print(_emailController.text);
                        AuthService.registerUser(
                                _emailController.text, _passwordController.text)
                            .then((value) => {
                                  if (value == "success")
                                    {
                                      Navigator.pop(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage()))
                                    }
                                  else
                                    {print("fail")}
                                });
                      }
                    },
                    child: const Text('Register'),
                  ),
                ],
              ))),
    );
  }
}
