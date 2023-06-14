import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static Future<void> saveUser(String username, String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('email', email);
  }

  static Future<Map<String,dynamic>> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return {'username': prefs.getString('username'), 'email': prefs.getString('email')};
  }

  static Future<void> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('username');
    prefs.remove('email');
  }
}
