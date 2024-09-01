class CustomExeption implements Exception {
  final String message;

  CustomExeption({required this.message});

  @override
  String toString() {
    return message;
  }
}
