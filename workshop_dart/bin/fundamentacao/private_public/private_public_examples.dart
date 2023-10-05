class PrivatePublicExamples{
  String publicProperty = "I am public!";
  final String _privateProperty = "I am private!";

  PrivatePublicExamples();

  String get getPrivateProperty{
    return _privateProperty;
  }
}