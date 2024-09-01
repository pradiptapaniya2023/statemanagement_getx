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
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Dialog Box"),
              subtitle: const Text("Subtitle Message"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("CANCEL")),
                    confirm: TextButton(
                        onPressed: () {}, child: const Text("OKAY")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Theme Box"),
              subtitle: const Text("Subtitle Message"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          debugPrint("|Enter Dark Btn|");
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 30,
          right: 20,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          child: const Icon(Icons.message),
          onPressed: () {
            //Using getX
            Get.snackbar("Msg using getX", "Okay!",
                icon: const Icon(Icons.add), backgroundColor: Colors.blueGrey);

            //Regular ScaffoldMessenger
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Processing Data")));
          },
        ),
      ),
    );
  }
}
