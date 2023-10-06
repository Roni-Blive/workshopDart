class FunctionNullSafety {
  void printName(String name) {
    print("Hello $name");
  }

  String? getName() {
    return null;
  }

  /*void printNullName() {
    printName(getName()});
  }*/
}
