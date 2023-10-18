enum InvalidCredentials { username, password }

class InvalidCredentialsException implements Exception {
  final InvalidCredentials cause;
  final String message;

  const InvalidCredentialsException({required this.cause, required this.message});

  function() async {
    try {
      await signIn(InvalidCredentials.username, InvalidCredentials.password);
    } on InvalidCredentialsException catch (e) {
      switch (e.cause) {
        case InvalidCredentials.username:
        // Handle invalid username.
          break;
        case InvalidCredentials.password:
        // Handle invalid password.
          break;
      }
    } on Error catch (e) {
      print(e);
    } catch (e) {
      // Handle all other exceptions.
    }
  }

  Future<int> signIn(InvalidCredentials username, InvalidCredentials password) async{
    return 0;
  }
}