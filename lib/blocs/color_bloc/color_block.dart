import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_color_generated/blocs/color_bloc/color_event.dart';
import 'package:sample_color_generated/utils/color_utils.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.white) {
    on<GenerateNewColorEvent>((event, emit) {
      emit(generateRandomColor());
    });
  }
}
