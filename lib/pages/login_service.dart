import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  final String apiUrl = 'http://10.0.2.2:3000'; // For Android emulator

  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$apiUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['authenticated'];
    } else {
      throw Exception('Failed to log in');
    }
  }
}

