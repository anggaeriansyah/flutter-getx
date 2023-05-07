import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx/viewModel.dart/homePage_Controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomePageController _controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter GetX'),
        ),
        body: Center(
          child: Obx(() => Text(
                _controller.count.toString(),
                style: const TextStyle(fontSize: 25),
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(
          children: [
            Positioned(
              right: 120,
              bottom: 170,
              child: FloatingActionButton(
                onPressed: () => _controller.increment(),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
            Positioned(
              left: 120,
              bottom: 170,
              child: FloatingActionButton(
                onPressed: () => _controller.decrement(),
                tooltip: 'Decrement',
                child: const Icon(Icons.exposure_minus_1),
              ),
            )
          ],
        ));
  }
}
