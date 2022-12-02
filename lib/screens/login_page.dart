import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/1.jpg"), fit: BoxFit.fill),
            ),
            child: Builder(builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  width: 600,
                  height: 510,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: Column(
                      children: [
                        const Text(
                          "Health Checker",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 78,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          decoration: InputDecoration(
                              hintText: "Enter Email ID",
                              labelText: "Email ID",
                              labelStyle: TextStyle(
                                  color: const Color.fromARGB(0, 0, 0, 0)
                                      .withOpacity(0.6)),
                              hintStyle: TextStyle(
                                  color: const Color.fromARGB(0, 0, 0, 0)
                                      .withOpacity(0.6)),
                              floatingLabelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0x00b4b4b4)),
                                borderRadius: BorderRadius.circular(12),
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email id';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'\s')),
                          ],
                          decoration: InputDecoration(
                              hintText: "Password",
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: const Color.fromARGB(0, 0, 0, 0)
                                      .withOpacity(0.6)),
                              hintStyle: TextStyle(
                                  color:
                                      const Color(0x00b4b4b4).withOpacity(0.6)),
                              floatingLabelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0x00b4b4b4)),
                                borderRadius: BorderRadius.circular(12),
                              )),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue)),
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3),
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 20,bottom: 20),
                        //   decoration: BoxDecoration(
                        //     color: Colors.black,
                        //     borderRadius: BorderRadius.circular(15)
                        //   ),
                        //   child: Center(
                        //     child: Text(
                        //       "Enter",
                        //       style: TextStyle(
                        //         font
                        //         color: Colors.white),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
