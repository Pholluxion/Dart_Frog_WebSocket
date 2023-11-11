/// {@template message}
/// WebSocket messages.
/// {@endtemplate}
enum Message {
  ///
  ledHigh('ON_BOARD_LED_1=1'),

  ///
  ledLow('ON_BOARD_LED_1=0');

  /// {@macro message}
  const Message(this.value);

  /// The value of the message.
  final String value;
}
