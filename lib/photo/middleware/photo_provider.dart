import 'package:dart_frog/dart_frog.dart';

import 'package:web_socket/photo/cubit/photo_cubit.dart';

/// A [PhotoCubit] that manages the state of the photo
final _state = PhotoCubit();

/// Provides an instance of a [PhotoCubit].
final photoProvider = provider<PhotoCubit>((_) => _state);
