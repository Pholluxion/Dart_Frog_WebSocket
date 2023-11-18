import 'package:broadcast_bloc/broadcast_bloc.dart';

/// A [Cubit] that manages the state of the image
class DataCubit extends BroadcastCubit<String> {
  /// Create an instance of [DataCubit]
  DataCubit() : super('');

  /// Update the state of the cubit
  void update(String data) => emit(data);
}
