import 'package:flutter/material.dart';
import 'package:exercise/state_util.dart';
import '../view/layout_exercise_view.dart';

class LayoutExerciseController extends State<LayoutExerciseView> implements MvcController {
  static late LayoutExerciseController instance;
  late LayoutExerciseView view;

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