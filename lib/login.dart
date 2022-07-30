import 'package:chakri_chai/signup.dart';
import 'package:chakri_chai/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
  TextEditingController emailLogIn = new TextEditingController();
  TextEditingController passwordLogIn = new TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      color:const Color.fromARGB(255, 150, 81, 163), width: 3),
                ),
                child: Text("Welcome",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 36,
                      color: Colors.white,
                    )),
                alignment: Alignment.center,
              ),
              const SizedBox(height: 25),

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
                      controller: emailLogIn,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
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
                    child: TextField(
                      controller: passwordLogIn,
                      obscureText: true,
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                          prefixIcon:const Icon(Icons.vpn_key),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.orange, width: 1),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              //Sign in button
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(166, 192, 54, 219),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Text(
                        "Sign In",
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

              //Dont Have an account?/Resister here
              Text.rich(
                    textSpan(context, signUp(), "Don't have an account? ","Register now"),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
