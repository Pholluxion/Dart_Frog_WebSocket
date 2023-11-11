import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket_counter/counter/counter.dart';

final _counter = StateCubit();

/// Provides an instance of a [StateCubit].
final stateProvider = provider<StateCubit>((_) => _counter);
