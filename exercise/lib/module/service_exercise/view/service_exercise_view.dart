import 'package:flutter/material.dart';
import 'package:exercise/core.dart';
import '../controller/service_exercise_controller.dart';

class ServiceExerciseView extends StatefulWidget {
  const ServiceExerciseView({Key? key}) : super(key: key);

  Widget build(context, ServiceExerciseController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ServiceExercise"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Simple Service Test",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () => controller.test(),
                    child: const Text("Test"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.testList.length,
                itemBuilder: (context, index) {
                  var item = controller.testList[index];
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${index + 1}. ${item["name"]}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        if (item["success"])
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () => controller.test(),
                            child: const Text("Success"),
                          ),
                        if (!item["success"])
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () => controller.test(),
                            child: const Text("Failed"),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ServiceExerciseView> createState() => ServiceExerciseController();
}
