class LateVariableNullSafety{
  late String babyName;

  void registerBabyName() {
    babyName = 'Little Johnny';
  }

  void printBabyName() {
    print(babyName);
  }
}