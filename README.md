# Unhandled Exception in Asynchronous Dart Code

This example showcases a common error in Dart: improper exception handling in asynchronous operations using `async` and `await`.  The `fetchData` function attempts to fetch data from a network API.  While it includes a `try-catch` block, it only prints the error to the console. In a real application, this might not be sufficient.  A more robust solution is needed to handle potential errors gracefully and prevent app crashes.

## How to Reproduce

1.  Create a new Dart project.
2.  Replace the main function with the provided `fetchData` function.
3.  Run the code.  Simulate a network failure (e.g., by using a non-existent URL) to trigger the exception.
4.  Observe that the error is only printed to the console; the application continues running without explicitly reporting or handling the failure.

## Solution

The provided solution demonstrates how to improve error handling.  It handles the exception properly and gives the user a better idea of the error state.  This ensures better application stability and user experience.