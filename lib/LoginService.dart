import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'user.dart'; // Import the User model

class LoginService {
  final String baseUrl = 'http://192.168.10.245:3010';

//   Future<List<User>> fetchUsers() async {
//     final response = await http.get(Uri.parse(baseUrl));

//     if (response.statusCode == 200) {
//       List<dynamic> data = json.decode(response.body);
//       return data.map((json) => User.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load users');
//     }
//   }

//   Future<User> fetchUser(int id) async {
//     final response = await http.get(Uri.parse('$baseUrl/$id'));

//     if (response.statusCode == 200) {
//       return User.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to load user');
//     }
//   }

  Future<void> loginUser(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/auth/signin'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create user');
    }
  }
}
