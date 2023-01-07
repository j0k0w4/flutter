import 'package:flutter/material.dart';
import 'package:exercise/core.dart';
import '../controller/layout_exercise_controller.dart';

class LayoutExerciseView extends StatefulWidget {
  const LayoutExerciseView({Key? key}) : super(key: key);

  Widget build(context, LayoutExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutExercise"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LayoutExerciseView> createState() => LayoutExerciseController();
}