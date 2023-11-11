/// WebSocket messages.
enum Message {
  /// enable led
  ledHigh('ON_BOARD_LED_1=1'),

  /// disable led
  ledLow('ON_BOARD_LED_1=0'),

  ///enable video stream
  enableStream('ON_BOARD_VIDEO_1=1'),

  ///disble video stream
  disableStream('ON_BOARD_VIDEO_1=0');

  /// {@macro message}
  const Message(this.value);

  /// The value of the message.
  final String value;
}
