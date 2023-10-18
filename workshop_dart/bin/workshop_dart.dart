import 'fundamentacao/const_final_static/cfs_examples.dart';
import 'fundamentacao/dynamic_var/dynamic_var_examples.dart';
import 'fundamentacao/enums/enum_examples.dart';
import 'fundamentacao/enums/order_status_enhanced_enum.dart';
import 'fundamentacao/enums/transportation_enum.dart';
import 'fundamentacao/interpolation/interpolation_examples.dart';
import 'fundamentacao/private_public/private_public_examples.dart';
import 'null_safety/null_safety_examples.dart';
import 'poo/exceptions/custom/custom_exception_example.dart';

void main(List<String> arguments) {
  /*
  print('getConstFinalStaticExamples');
  getConstFinalStaticExamples();
  print('');

  print('getEnumExamples');
  getEnumExamples();
  print('');

  print('getDynamicVarExamples');
  getDynamicVarExamples();
  print('');

  print('getPrivatePublicExamples');
  getPrivatePublicExamples();
  print('');

  print('getInterpolationExamples');
  getInterpolationExamples();
  print('');

  print('getNullSafetyExamples');
  getNullSafetyExamples();

  createExceptionExample('exception message 01');
  createExceptionExampleWithInstantiation('exception message 02');
  createExceptionExampleWithLateInitialization('exception message 03');
   */
}

void getConstFinalStaticExamples() {
  ConstFinalStaticExamples exe =
      ConstFinalStaticExamples("I was born late and missed the cake.");
  exe.modifyListElement();

  ConstFinalStaticExamples.printStaticProperty();
  exe.printProperty();
  print('');
  ConstFinalStaticExamples exePizza = ConstFinalStaticExamples.initRadius(10);
  print("Circle area is: ${exePizza.circleArea()} cm.");
  ConstFinalStaticExamples.staticPizzaArea(15);
}

void getEnumExamples() {
  EnumExamples examples = EnumExamples();
  examples.getSelectedTransportationMessage(Transportation.boat);
  examples.printOrderStatusComparison(OrderStatus.cancelled);
}

void getDynamicVarExamples() {
  DynamicVarExamples dynamicVarExamples = DynamicVarExamples();
  dynamicVarExamples.tryChangeVarAttributeToDouble();
  dynamicVarExamples.tryChangeDynamicNumber();
}

void getPrivatePublicExamples() {
  PrivatePublicExamples privatePublicExamples = PrivatePublicExamples();

  print(privatePublicExamples.publicProperty);
  privatePublicExamples.publicProperty = "Now I have a new value";
  print(privatePublicExamples.publicProperty);

  print(privatePublicExamples.getPrivateProperty);
}

void getInterpolationExamples() {
  InterpolationExamples interpolationExamples = InterpolationExamples();
  interpolationExamples.printVariables();
  print('');
  interpolationExamples.printInternalProperties();
  print('');
  interpolationExamples.printInternalMethod();
}

void getNullSafetyExamples() {
  NullSafetyExamples.getBasicNullSafetyExample();
  print('');
  NullSafetyExamples.getNullSafetyAssertionExample();
  print('');
  NullSafetyExamples.getLateVariableAfterInitializationExample();
  print('getLateVariableBeforeInitializationExample will throw an uncatched exception');
  NullSafetyExamples.getLateVariableBeforeInitializationExample();
  print('');
  NullSafetyExamples.getNonNullableListInOneLineExample();
  print('');
  NullSafetyExamples.getNonNullableListInManyLinesExample();
  print('');
  NullSafetyExamples.getFunctionNullSafetyExample();
  print('');
  NullSafetyExamples.getSafeCallCountryInfoExample();
  print('');
  NullSafetyExamples.getSafeCallStreetInfoFromNullPersonExample();
  print('');
  NullSafetyExamples.getNullAssertionOperatorPerishableProductWithDateExample();
  print('');
  NullSafetyExamples
      .getNullAssertionOperatorPerishableProductWithoutDateExample();
}

void createExceptionExample(String exceptionMessage){
  print('');
  ThrowMyException.throwException(exceptionMessage);
}

void createExceptionExampleWithInstantiation(String exceptionMessage){
  print('');
  ThrowMyException.throwExceptionWithInstantiation(exceptionMessage);
}

void createExceptionExampleWithLateInitialization(String exceptionMessage){
  print('');
  ThrowMyException.throwExceptionWithLateInitialization(exceptionMessage);
}
