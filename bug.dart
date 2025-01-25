```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!  Process the JSON response.
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle error - status code not 200
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors and JSON decoding errors
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```