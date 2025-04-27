import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/login': (context) => const MyloginPage(),  // Added route
      },// Removed title parameter
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Removed title parameter

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static Color custom_color=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: custom_color.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white.withOpacity(0.5),
              width: 1,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Match the Container's borderRadius
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Blur effect
              child: Container(
                padding: const EdgeInsets.all(20), // Optional: Add padding inside the blurred area
                color: Colors.transparent, // Ensure the inner container is transparent
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/calender_time_logo.png",
                      height: 190,
                      width: 190,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Hello!",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      "Welcome to our application, best place \n to manage your schedule",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Disable default bg
                        shadowColor: Colors.transparent, // Remove shadow
                        padding: EdgeInsets.zero, // Let Container handle padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Match Container's border
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.purple], // Gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.blue, Colors.purple], // Your gradient colors
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(30), // Outer border radius
                      ),
                      padding: const EdgeInsets.all(2),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Inner button color
                          foregroundColor: Colors.blueAccent, // Text color
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Slightly smaller than container
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),

                    ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      IconButton(
                          onPressed: (){
                            setState(() {
                              custom_color=Colors.red;
                            });
                          },
                          icon: Icon(Icons.circle,size: 10,color: Colors.red,)),
                      SizedBox(width: 6,),
                      IconButton(
                          onPressed: (){
                            setState(() {
                              custom_color=Colors.green;
                            });
                          },
                          icon: Icon(Icons.circle,size: 10,color: Colors.green,)),
                      SizedBox(width: 6,),
                      IconButton(
                          onPressed: (){
                            setState(() {
                              custom_color=Colors.blue;
                            });
                          },
                          icon: Icon(Icons.circle,size: 10,color: Colors.blue,)),
                    ],
                  )
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