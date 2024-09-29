import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    print("==>Bulid");

    CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () {
              return Text(
                " ${controller.count.value}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              controller.increment();
            },
            child: Center(
              child: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Increment",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              controller.increment();
            },
            child: Center(
              child: Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Increment",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
