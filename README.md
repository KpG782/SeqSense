# 🔢 SeqSense

A Flutter project focused on visualizing and experimenting with popular number sequences and mathematical algorithms. Built using FlutterFlow, this app provides a clean and interactive interface for exploring Collatz, Fibonacci, Lucas, Tribonacci, Pascal's Triangle, Euclidean Algorithm, and more.

## 🚀 Features

- 📈 Interactive implementation of number sequences:
    - Collatz Sequence
    - Fibonacci Sequence
    - Tribonacci Sequence
    - Lucas Numbers
    - Pascal's Triangle
- 📐 Euclidean Algorithm visualization
- 🛠️ Modular architecture with custom logic in `custom_code`
- 🏠 Clean landing UI in `homepage`
- 🔄 State management via `app_state.dart`
- ⚙️ Built with FlutterFlow & customized in native Dart

## 📂 Project Structure

```plaintext
lib/
├── collatz/              # Collatz sequence logic and UI
├── custom_code/          # Custom functions or widgets
├── euclidean/            # Euclidean algorithm visual
├── fibonacci/            # Fibonacci-related logic
├── flutter_flow/         # FlutterFlow auto-generated files
├── homepage/             # App landing page
├── lucas/                # Lucas number logic
├── pascal_triangle/      # Pascal triangle generation
├── tribonacci/           # Tribonacci logic and UI
├── app_state.dart        # App-wide state management
├── index.dart            # Widget index or navigation
└── main.dart             # App entry point
