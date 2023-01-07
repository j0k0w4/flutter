import 'package:flutter/material.dart';
import 'package:exercise/state_util.dart';
import '../view/form_exercise_view.dart';

class FormExerciseController extends State<FormExerciseView> implements MvcController {
  static late FormExerciseController instance;
  late FormExerciseView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}