import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_color_generated/utils/color_utils.dart';

abstract class ColorEvent {}

class GenerateNewColor extends ColorEvent {}

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.white) {
    on<GenerateNewColor>((event, emit) {
      emit(generateRandomColor());
    });
  }
}
