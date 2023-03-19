import 'package:ecom/firstPage/first.dart';
import 'package:ecom/login/forgepassword.dart';
import 'package:ecom/login/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _userEmailController = TextEditingController();
  var _userPasswordController = TextEditingController();
  var _emailFocusNode = FocusNode();
  var _passwordFocusNode = FocusNode();
  bool _isPasswordVisible = true;
  bool _autoValidate = false;

  String? _userNameValidation(String value) {
    if (value.isEmpty) {
      return "Please enter valid user name";
    } else {
      return null;
    }
  }

  String? _emailValidation(String value) {
    bool emailValid =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    if (!emailValid) {
      return "Enter valid email address";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black,
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.left,
                            controller: _userEmailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),

                                // labelText: "Email;",
                                hintText: 'Email or Username',
                                hintStyle: TextStyle(color: Colors.white)),
                            style: TextStyle(color: Colors.white),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context)
                                  .requestFocus(_emailFocusNode);
                            },
                            validator: ((value) => _emailValidation(value!)),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black,
                          ),
                          child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              hintText: 'Pasword',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyWidget()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(1),
                                child: Text(
                                  ' Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        const Center(
                          child: Text(
                            '- Or Sign In with -',
                            style: TextStyle(
                              color: Color.fromARGB(255, 135, 12, 12),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 249, 240, 240),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // const SizedBox(width: 50),
                            // GestureDetector(
                            //   onTap: () {
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => Signup()));
                            //   },
                            // child: Container(
                            //   // decoration: BoxDecoration(
                            //   //   borderRadius: BorderRadius.circular(30),
                            //   //   color: Color.fromARGB(255, 228, 221, 221),
                            //   // ),
                            //   child: Row(
                            //     children: [
                            //       Container(
                            //         child: const Center(
                            //           child: Padding(
                            //             padding: EdgeInsets.all(10.0),
                            //             child: Text(
                            //               ' Forget Password',
                            //               style: TextStyle(
                            //                 color:
                            //                     Color.fromARGB(255, 13, 2, 2),
                            //                 fontSize: 20,
                            //                 fontWeight: FontWeight.w300,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       ),

                            //     GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => Passwordreset()));
                            // }),
                            // Container(
                            //   child: Center(
                            //     child: Padding(
                            //       padding: EdgeInsets.all(10.0),
                            //       child: Text(
                            //         'Sign up',
                            //         style: TextStyle(
                            //           color: Color.fromARGB(
                            //               255, 14, 14, 14),
                            //           fontSize: 20,
                            //           fontWeight: FontWeight.w300,
                            //         ),
                            //       ),

                            //     ),
                            //   ),

                            // )

                            // ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(30),
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signup()));
                                    },
                                    child: Text("Google")),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
