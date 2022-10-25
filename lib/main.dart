import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  var count = 0.obs;
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Input your token...",
            ),),)
          ],
        ),
        // child: Obx(() => Text("$count")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count ++,
      ));
}

class Controller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}

