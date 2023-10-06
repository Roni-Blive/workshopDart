import 'safe_call_address.dart';
import 'safe_call_person.dart';

class SafeCall{
  SafeCallPerson? person;

  SafeCall(String personName, SafeCallAddress address){
    person = SafeCallPerson(personName, address);
  }

  void getCountryInfo(){
    String? country = person?.address?.country;
    print(country);
  }

  /// Output: null (No null reference error)
  void getStreetInfoFromNullPerson(){
    person = null;

    String? street = person?.address?.street;
    print(street);
  }
}