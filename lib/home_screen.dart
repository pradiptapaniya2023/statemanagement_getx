import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("getX Homepage"),
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Using getX
          Get.snackbar("Msg using getX", "Okay!",
              icon: const Icon(Icons.add), backgroundColor: Colors.blueGrey);

          //Regular ScaffoldMessenger
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Processing Data")));
        },
      ),
    );
  }
}
