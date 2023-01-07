import 'package:flutter/material.dart';
import 'package:exercise/core.dart';
import '../controller/form_exercise_controller.dart';

class FormExerciseView extends StatefulWidget {
  const FormExerciseView({Key? key}) : super(key: key);

  Widget build(context, FormExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormExercise"),
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
  State<FormExerciseView> createState() => FormExerciseController();
}