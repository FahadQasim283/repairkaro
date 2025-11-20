import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for splash screen
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        // Navigate to next screen, e.g., home or auth
        // For now, just pop or navigate
        Navigator.of(context).pushReplacementNamed('/home'); // Assuming routes are set up
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Brand color, adjust as needed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo, replace with actual asset
            Image.asset(
              'assets/images/logo.png', // Assuming logo is here
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Densat',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Brand color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Facility Management Services',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
