import 'package:ecommerce/views/credentials/register.dart';
import 'package:flutter/material.dart';

// Modified Method

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 101, 192),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 37, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _gmailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your credential";
                            }
                            if (!value.contains('@')) {
                              return "Please enter a valid credential";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Gmail',
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your credential";
                            }
                            if (value.length < 8 || value.length != 8) {
                              return "Password must be of 8 characters";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 105,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            // _handleLoginAndNavigation(context); // Call the login handler
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the sign-up screen when the text is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage()), // Replace with your sign-up screen
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Don't have an Account? SignUp",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // Icon(Icons.facebook),
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
