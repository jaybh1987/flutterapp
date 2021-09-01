
import 'dart:convert';

class JsonString {
  String jstring = '{ "name": "John Smith", "email": "john@example.com" }';

  Map<String, dynamic> user(String str) {
    Map<String, dynamic> u = jsonDecode(str);
    return u ;
  }

}



