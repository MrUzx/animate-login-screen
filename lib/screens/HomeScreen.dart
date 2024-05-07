import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Background Cotainer
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  //light-1
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeInDown(
                      duration: const Duration(
                        seconds: 1,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-1.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //light-2
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1200),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Clock
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1300),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/clock.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Text "Login"
                  Positioned(
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            //TextField for phone number
            FadeInUp(
              duration: const Duration(milliseconds: 1300),
              child: Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 48),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.indigo.shade600,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        hintText: 'phone number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //TextField for password
            FadeInUp(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 48),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.indigo.shade600,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        hintText: 'password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Button login
            FadeInUp(
              duration: const Duration(milliseconds: 700),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigo.shade600,
                      Colors.indigo.shade400,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 45,
                margin: const EdgeInsets.symmetric(
                  horizontal: 48,
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            // Sign in text button
            FadeInUp(
              duration: const Duration(
                milliseconds: 400,
              ),
              child: const Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
