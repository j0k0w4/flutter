import 'package:exercise/core.dart';

class DashboardService {
  List exerciseList = [
    {
      "label": "Service",
      "type": "Dart",
      "page": const ServiceExerciseView(),
    },
    {
      "label": "Layout",
      "type": "Flutter",
      "page": const LayoutExerciseView(),
    },
    {
      "label": "Form",
      "type": "Flutter",
      "page": const FormExerciseView(),
    }
  ];
}
