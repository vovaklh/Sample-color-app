import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_color_generated/blocs/color_block.dart';
import 'package:sample_color_generated/di/locator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _colorBloc = locator<ColorBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
      create: (context) => _colorBloc,
      child: BlocBuilder<ColorBloc, Color>(
        builder: (context, state) {
          return Container(
            color: state,
            child: Center(
              child: TextButton(
                onPressed: () => _colorBloc.add(GenerateNewColor()),
                child: const Text("Hey there"),
              ),
            ),
          );
        },
      ),
    );
  }
}
