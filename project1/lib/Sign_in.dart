import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _signinState();
}

class _signinState extends State<Signin> {
  final emailController = TextEditingController();
  final PasswordController = TextEditingController();

  void signIn({required String email, required String password}) {
    if (email == "kriti@gmail.com" && password == "kriti@123") {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("You are logged in")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid email or password")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/ui.png',
                width: 500,
                height: 290,
              ),
              Text(
                "Sign In",
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('''
You can use your Fingerprint
to grant access to the app'''),
              SizedBox(
                height: 50,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: emailController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: PasswordController,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  )),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  signIn(
                    email: emailController.text.trim(),
                    password: PasswordController.text.trim(),
                  );
                },
                child: Container(
                  height: 40,
                  width: 130,
                  color: Color(0xFF4244e7),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator.adaptive(),
              //LinearProgressIndicator(),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xFF4244e7),
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Text("Still without Account?"),
              RichText(
                text: TextSpan(
                    text: "Create One",
                    style: TextStyle(
                      color: Color(0xFF4244e7),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
