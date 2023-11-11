import 'package:dart_frog/dart_frog.dart';
import 'package:web_socket/image/cubit/image_cubit.dart';

/// A [ImageCubit] that manages the state of the image
final _state = ImageCubit();

/// Provides an instance of a [ImageCubit].
final imegeProvider = provider<ImageCubit>((_) => _state);
