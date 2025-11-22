import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // Because adb reverse is set, use localhost
  static const String baseUrl = "http://127.0.0.1:8000";

  // Test API: GET /
  static Future<String> testConnection() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/"));

      if (response.statusCode == 200) {
        return "Backend Connected: ${response.body}";
      } else {
        return "Backend Error: ${response.statusCode}";
      }
    } catch (e) {
      return "Connection Failed: $e";
    }
  }

  // Upload 1 image for recognition — POST /frs/frs/recognize
  static Future<String> recognizeFace(String filePath) async {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/frs/frs/recognize"),
    );

    request.files.add(await http.MultipartFile.fromPath('file', filePath));

    var response = await request.send();
    var body = await response.stream.bytesToString();

    return body;
  }

  // Compare 2 faces — POST /frs/frs/compare
  static Future<String> compareFaces(String file1, String file2) async {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/frs/frs/compare"),
    );

    request.files.add(await http.MultipartFile.fromPath('file1', file1));
    request.files.add(await http.MultipartFile.fromPath('file2', file2));

    var response = await request.send();
    return await response.stream.bytesToString();
  }

  // Add new identity — POST /frs/frs/add_identity
  static Future<String> addIdentity(String name, String filePath) async {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse("$baseUrl/frs/frs/add_identity"),
    );

    request.fields["name"] = name;
    request.files.add(await http.MultipartFile.fromPath('file', filePath));

    var response = await request.send();
    return await response.stream.bytesToString();
  }

  // List identities — GET /frs/frs/list_identities
  static Future<String> listIdentities() async {
    final response = await http.get(
      Uri.parse("$baseUrl/frs/frs/list_identities"),
    );
    return response.body;
  }
}
