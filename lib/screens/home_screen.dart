import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_app/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _formKey = GlobalKey<FormState>();
  // final _nameController = TextEditingController();

  // @override
  // void dispose() {
  //   super.dispose();
  //   _nameController.dispose();
  // }

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
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
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        elevation: 0,
      ),

      // body: Padding(
      //   padding: EdgeInsets.all(20),
      //   child: Form(
      //     key: _formKey,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const Text(
      //           'Enter Your Details',
      //           style: TextStyle(
      //             fontSize: 24,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //         const SizedBox(height: 30),
      //         TextFormField(
      //           controller: _nameController,
      //           style: TextStyle(color: Colors.white),
      //           decoration: InputDecoration(
      //             labelText: 'Name',
      //             labelStyle: const TextStyle(color: Colors.grey),
      //             hintText: 'Enter your name',
      //             hintStyle: const TextStyle(color: Colors.grey),
      //             prefixIcon: Icon(Icons.person, color: Colors.blue),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(color: Colors.grey),
      //             ),
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(color: Colors.blue, width: 2),
      //             ),
      //             errorBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(color: Colors.red),
      //             ),
      //             focusedErrorBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(12),
      //               borderSide: BorderSide(color: Colors.red),
      //             ),
      //           ),
      //           validator: (value) {
      //             if (value == null || value.trim().isEmpty) {
      //               return 'Name cannot be empty';
      //             }
      //             if (value.trim().length < 3) {
      //               return 'Name must be at least 3 character long';
      //             }
      //             return null;
      //           },
      //         ),
      //         const SizedBox(height: 30),
      //         CustomButton(
      //           text: 'Submit & Go',
      //           onPressed: () {
      //             if (_formKey.currentState!.validate()) {
      //               context.push(
      //                 '/profile',
      //                 extra: _nameController.text.trim(),
      //               );
      //             }
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter Your Details',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'Enter your name',

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Name cannot be empty!';
                  }
                  if (value.trim().length < 3) {
                    return 'Name must be at least 3 character long!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Submit & Go',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.push(
                      '/profile',
                      extra: _nameController.text.trim(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
