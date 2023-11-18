import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket/data/data.dart';

/// A [DataCubit] that manages the data
final _data = DataCubit();

/// Provides an instance of a [DataCubit].
final dataProvider = provider<DataCubit>((_) => _data);
