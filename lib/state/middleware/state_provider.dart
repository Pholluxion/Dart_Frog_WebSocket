import 'package:dart_frog/dart_frog.dart';

import 'package:web_socket/state/cubit/state_cubit.dart';

final _state = StateCubit();

/// Provides an instance of a [StateCubit].
final stateProvider = provider<StateCubit>((_) => _state);
