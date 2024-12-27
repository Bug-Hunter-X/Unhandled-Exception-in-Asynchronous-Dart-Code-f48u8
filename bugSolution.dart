```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
       // Process data here
      print('Data fetched successfully: $data');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on Exception catch (e) {
    // Handle exception properly
    print('An error occurred: $e');
    // Take appropriate action, e.g., show an error message to the user, retry the request, etc.
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```