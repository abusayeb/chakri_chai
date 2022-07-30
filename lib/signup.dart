import 'package:chakri_chai/login.dart';
import 'package:chakri_chai/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController userName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Lottie Image
                  Container(
                    child: Lottie.asset("asset/signup.json"),
                  ),
                  const SizedBox(height: 25),

                  //WElCOME text
                  Container(
                    height: 45,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                          color: Color.fromARGB(255, 226, 109, 247), width: 3),
                    ),
                    child: Text("Sign Up here",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 36,
                          color: Colors.white,
                        )),
                    alignment: Alignment.center,
                  ),
                  const SizedBox(height: 25),

                  //First Name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextField(
                          controller: firstName,
                          cursorColor: Colors.blueAccent,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.account_circle),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 1),
                              ),
                              hintText: "First Name",
                              hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Last name textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextField(
                          controller: lastName,
                          cursorColor: Colors.blueAccent,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.account_circle),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 1),
                              ),
                              hintText: "Last Name",
                              hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Email TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextField(
                          controller: email,
                          cursorColor: Colors.blueAccent,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.mail),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 1),
                              ),
                              hintText: "Email",
                              hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          cursorColor: Colors.blueAccent,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.vpn_key),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 1),
                              ),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                          validator: (val) {
                            if (val!.length < 6) {
                              return "Password must be at least 6 characters";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              password = val as TextEditingController;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          cursorColor: Colors.blueAccent,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.vpn_key),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 1),
                              ),
                              hintText: "Confirm password",
                              hintStyle: const TextStyle(
                                fontStyle: FontStyle.italic,
                              )),
                          validator: (val) {
                            if (val!.length < 6) {
                              return "Password must be at least 6 characters";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              password = val as TextEditingController;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Sign in button
                  GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(166, 192, 54, 219),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  //Already Have an account?/Sign in here
                  Text.rich(
                    textSpan(context, LogIn(), "Already have an account? ",
                        "Sign in"),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
