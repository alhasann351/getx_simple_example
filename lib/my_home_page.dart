import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_example/example_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ExampleController exampleController = Get.put(ExampleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'GetX Simple Example',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                color: Colors.blue.withOpacity(exampleController.opacity.value),
                height: 200,
                width: 200,
              ),
            ),
            Obx(
              () => Slider(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                value: exampleController.opacity.value,
                onChanged: (value) {
                  exampleController.setOpacityValue(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
