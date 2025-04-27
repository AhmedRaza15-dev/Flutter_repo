import 'package:flutter/material.dart';
import 'dart:ui';

class MyloginPage extends StatelessWidget {
  const MyloginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Changed from center
                  children: [
                    Column( // Wrap all upper content in a Column
                      children: [
                        Text("Welcome Back!",
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: "Name",
                              border: UnderlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.password),
                              labelText: "Password",
                              border: UnderlineInputBorder()
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [Colors.blue, Colors.purple],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Text(
                              "Login Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          onPressed: (){},
                          child: Text("Forget Password?",
                            style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    // This will now stick to the bottom
                    Center( // Changed from Align to Center for better centering
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the row contents
                        children: [
                          Text("Don't have an account? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector( // Better than Text for clickable text
                            onTap: () {
                              // Add your sign up navigation here
                            },
                            child: Text("Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}