// fibonacci_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../custom_code/actions/calc_fibo.dart' as actions;
import 'fibonacci_model.dart';

class FibonacciWidget extends StatefulWidget {
  const FibonacciWidget({Key? key}) : super(key: key);

  // Route identifiers
  static const String routeName = 'Fibonacci';
  static const String routePath = '/fibonacci';

  @override
  State<FibonacciWidget> createState() => _FibonacciWidgetState();
}

class _FibonacciWidgetState extends State<FibonacciWidget> {
  final _model = FibonacciModel();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  bool _isValidInput(String text) {
    final n = int.tryParse(text);
    return n != null && n >= 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFE1F5FE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 12),
                Text(
                  'Fibonacci Numbers',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B262C),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Card(
                  color: const Color(0xFF78CAD2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'The Fibonacci sequence starts with 0 and 1, and each subsequent term is the sum of the two preceding ones.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1B262C),
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _model.indexController,
                  focusNode: _model.indexFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Enter sequence index',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [_model.indexMask],
                  maxLength: 3,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    final input = _model.indexController.text;
                    if (_isValidInput(input)) {
                      final String? result = await actions.calcFibo(input);
                      setState(() {
                        _model.answer = result ?? _model.answer;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter a non-negative integer.'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC947),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B262C),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF78CAD2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Result',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 200,
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                _model.answer,
                                textAlign: TextAlign.center,
                                style: const TextStyle(height: 1.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back to Main Menu'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}