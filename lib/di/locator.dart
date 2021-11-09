import 'package:get_it/get_it.dart';
import 'package:sample_color_generated/blocs/color_bloc/color_block.dart';

final locator = GetIt.instance;

void initDependencies() {
  locator.registerLazySingleton<ColorBloc>(() => ColorBloc());
}
