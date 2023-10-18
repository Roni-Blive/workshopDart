import 'dart:async';

import 'funcionario_throw.dart';

class TryCatchExamples {
  static void throwExceptionWithFinally(String exceptionMessage, int number) {
    try {
      method(number);
      print("Seems good!");
    } on FormatException {
      print("There is a problem!");
    } on OutOfMemoryError catch (exception) {
      print("Exception message is: $exception.");
    } finally {
      print("It is the end now!");
    }
  }

  static void method(int x) {
    if (x > -1 && x <= 10) {
      throw FormatException();
    } else {
      throw OutOfMemoryError;
    }
  }

  static void throwExceptionWithFinallyAndCatchWith2Args(
      String exceptionMessage, int number) {
    try {
      method2(number);
      print("Seems good!");
    } on FormatException catch (e) {
      print('Exception details:\n $e');
    } catch (e, s) {
      print('Exception details:\n $e');
      print('Stack trace:\n $s');
    }
  }

  static void rethrowException(String exceptionMessage, int number) {
    try {
      method2(number);
      print("Seems good!");
    } on FormatException catch (e) {
      print('Exception details:\n $e');
      rethrow;
    } catch (e, s) {
      print('Exception details:\n $e');
      print('Stack trace:\n $s');
      rethrow;
    }
  }

  static void method2(int x) {
    if (x <= 10) {
      throw FormatException();
    } else {
      throw TimeoutException('');
    }
  }

  static void throwClass() {
    FuncionarioThrow fun = FuncionarioThrow();
    throw fun;
  }

  static void throwObject() {
    throw 'text';
  }
}
