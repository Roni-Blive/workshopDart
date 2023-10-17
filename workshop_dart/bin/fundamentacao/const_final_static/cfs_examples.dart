class ConstFinalStaticExamples{
  late final String _initializeLater;
  static const String _initializeNow = "I was born before.";

  static const double pi = 3.1415;
  late double myRadius;

  ConstFinalStaticExamples(this._initializeLater);

  ConstFinalStaticExamples.initRadius(this.myRadius);

  static void printStaticProperty(){
    print("Prop 1: $_initializeNow");
    final String finalString;
    finalString = "I'm a final string inside a static method.";
    print(finalString);
  }

  static void staticPizzaArea(double radius) {
    double pizza = pi * (radius * radius);
    print("My pizza has an area of $pizza cm.");
  }

  void printProperty(){
    print("Prop 2: $_initializeLater");
  }

  void modifyListElement(){
    try {
      final List<String> finalNames = ["Luke Skywalker", "Palpatine"];
      const List<String> constNames = ["Yoda", "R2-D2"];

      finalNames[0] = "Darth Vader";
      finalNames[1] = "Darth Sidious";
      constNames[1] = "BB-8";
    } on UnsupportedError catch(error, stack){
      print('Error message is: $error');
      print('Error type is: $UnsupportedError');
      print('StackTrace is: \n$stack');
    }
  }

  double circleArea() {
    return pi * (myRadius * myRadius);
  }
}