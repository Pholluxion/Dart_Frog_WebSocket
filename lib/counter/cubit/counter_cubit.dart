import 'package:broadcast_bloc/broadcast_bloc.dart';

///
class StateCubit extends BroadcastCubit<String> {
  ///
  StateCubit() : super('HELLO WORLD');

  /// set the current state.
  void ledHigh() => emit('ON_BOARD_LED_1=1');

  /// set the current state.
  void ledLow() => emit('ON_BOARD_LED_1=0');

  ///
  void setImage(String image) => emit(image);
}
