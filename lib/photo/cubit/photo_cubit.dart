import 'package:broadcast_bloc/broadcast_bloc.dart';
import 'package:web_socket/photo/model/photo.dart';

/// A [Cubit] that manages the state of the image
class PhotoCubit extends BroadcastCubit<Photo> {
  /// Create an instance of [PhotoCubit]
  PhotoCubit() : super([]);

  /// Update the state of the cubit
  void update(Photo image) => emit(image);
}
