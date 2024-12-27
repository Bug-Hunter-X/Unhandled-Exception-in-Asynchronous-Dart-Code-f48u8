```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final data = jsonDecode(response.body);
      // Process the data
    } else {
      // Error handling
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Exception handling
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately based on the application's needs
  }
}
```