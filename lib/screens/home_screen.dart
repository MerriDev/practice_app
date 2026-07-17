import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_app/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(155, 43, 40, 40),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'PracticeApp',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(155, 43, 40, 40),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Home Screen!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'Get Started',
                onPressed: () {
                  context.push('/profile', extra: 'Muhammad Umair');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
