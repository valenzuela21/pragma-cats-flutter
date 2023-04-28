class MessageException implements Exception {
  String message;
  MessageException([this.message =  'Something went wrong']){
    message = 'Weather Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}