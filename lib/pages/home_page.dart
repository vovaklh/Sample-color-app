import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_color_generated/blocs/color_bloc/color_block.dart';
import 'package:sample_color_generated/blocs/color_bloc/color_event.dart';
import 'package:sample_color_generated/di/locator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _colorBloc = locator<ColorBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocProvider<ColorBloc>(
      create: (context) => _colorBloc,
      child: BlocBuilder<ColorBloc, Color>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => _colorBloc.add(GenerateNewColorEvent()),
            child: Container(
              color: state,
              child: const Center(
                child: Text("Hey there"),
              ),
            ),
          );
        },
      ),
    );
  }
}
