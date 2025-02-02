import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightGreen,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                'BELA NEGARA',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Image.asset('assets/logo_upn.png'),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username tidak boleh kosong';
                        }
                        return null;
                      },
                      onSaved: (value) => username = value!,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(Icons.lock, color: Colors.black),
                        suffixIcon: IconButton(
                          icon: Icon(
                              isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black),
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                        ),
                        labelStyle: const TextStyle(color: Colors.black),
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                      onSaved: (value) => password = value!,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 24, 109, 27),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          if (username == 'infernozt' &&
                              password == 'infernozt505') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage(username: username)),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Username atau password salah')),
                            );
                          }
                        }
                      },
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
