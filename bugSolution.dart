```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (jsonError) {
        print('Error decoding JSON: $jsonError');
        return null; // Or throw a custom exception
      }
    } else {
      print('Error fetching data. Status code: ${response.statusCode}. Response Body: ${response.body}');
      return null; // Or throw a custom exception
    }
  } catch (networkError) {
    print('Network error fetching data: $networkError');
    return null; // Or throw a custom exception
  }
}
```