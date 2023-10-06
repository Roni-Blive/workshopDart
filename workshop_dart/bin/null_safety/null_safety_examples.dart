import 'basic_null_safety.dart';
import 'function_null_safety.dart';
import 'late_variable_null_safety.dart';
import 'non_nullable_list.dart';
import 'null_assertion_operator.dart';
import 'safe_call/safe_call.dart';
import 'safe_call/safe_call_address.dart';

class NullSafetyExamples{

  static void getBasicNullSafetyExample(){
    BasicNullSafety basicNullSafety = BasicNullSafety();
    basicNullSafety.addNullToDarkMatter();
    if(basicNullSafety.darkMatter == null){
      print("Dark Matter is null");
    }
    else{
      print("Dark Matter is not null");
    }
  }

  static void getNullSafetyAssertionExample(){
    NullAssertionOperator nullAssertionOperator = NullAssertionOperator();

    nullAssertionOperator.setValueToName("Baby Yoda");
    nullAssertionOperator.printNameLength();

    nullAssertionOperator.setValueToName(null);
    nullAssertionOperator.printNameLength();
  }

  static void getLateVariableBeforeInitializationExample(){
    LateVariableNullSafety lateVariableNullSafety = LateVariableNullSafety();
    lateVariableNullSafety.printBabyName();
  }

  static void getLateVariableAfterInitializationExample(){
    LateVariableNullSafety lateVariableNullSafety = LateVariableNullSafety();
    lateVariableNullSafety.registerBabyName();
    lateVariableNullSafety.printBabyName();
  }

  static void getNonNullableListInOneLineExample(){
    NonNullableList nonNullableList = NonNullableList();
    nonNullableList.printBasketInOneLine();
  }

  static void getNonNullableListInManyLinesExample(){
    NonNullableList nonNullableList = NonNullableList();
    nonNullableList.printBasketOneElementPerLine();
  }

  static void getFunctionNullSafetyExample(){
    FunctionNullSafety functionNullSafety = FunctionNullSafety();
    functionNullSafety.printName("Sheppard");
  }

  static void getSafeCallCountryInfoExample(){
    SafeCallAddress address = SafeCallAddress('902 Church Street', 'Morrisville', 'United States of America');
    SafeCall safe = SafeCall("Leonard", address);
    safe.getCountryInfo();
  }

  static void getSafeCallStreetInfoFromNullPersonExample(){
    SafeCallAddress address = SafeCallAddress('39 Nairn Ln', 'Bear', 'United States of America');
    SafeCall safe = SafeCall("Charlie", address);
    safe.getStreetInfoFromNullPerson();
  }
}