import 'package:flutter/material.dart';
import 'frontpage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 87, 87, 87),
        appBar: AppBar(
          title: Center(child: Text('Curriculum Vitae')),
          backgroundColor: Color.fromARGB(153, 255, 0, 0),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/prog.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Adjust opacity here
                  BlendMode.dstATop,
                )),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('images/ccs.png'),
                        height: 200,
                        width: 200,
                      ),
                      TextFormField(
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Username';
                          } else if (value.length < 5) {
                            return 'Username must be at least 5 characters long';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return 'Password must contain at least one uppercase letter';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 38, 0, 255)),
                        onPressed: () {
                          if (_formKey.currentState?.validate() == true) {
                            // Check for specific username and password
                            if (_usernameController.text == "akiro" &&
                                _passwordController.text == "Admin123") {
                              // Successful login
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FrontPage()),
                              );
                            } else {
                              // Incorrect username or password
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('Incorrect username or password'),
                                ),
                              );
                            }
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 247, 246, 246),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                      SizedBox(height: 80),
                      SizedBox(height: 80),
                    ])),
          ),
        ));
  }
}
