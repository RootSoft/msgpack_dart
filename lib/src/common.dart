part of algorand_msgpack;

class FormatError implements Exception {
  FormatError(this.message);
  final String message;

  String toString() {
    return "FormatError: $message";
  }
}
