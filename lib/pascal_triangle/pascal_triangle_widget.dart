// pascal_triangle_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../custom_code/actions/calc_pascal.dart' as actions;
import 'pascal_triangle_model.dart';

class PascalTriangleWidget extends StatefulWidget {
  const PascalTriangleWidget({Key? key}) : super(key: key);

  static const String routeName = 'PascalTriangle';
  static const String routePath = '/pascalTriangle';

  @override
  State<PascalTriangleWidget> createState() => _PascalTriangleWidgetState();
}

class _PascalTriangleWidgetState extends State<PascalTriangleWidget> {
  final _model = PascalTriangleModel();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  bool _isValidInput(String text) {
    final n = int.tryParse(text);
    return n != null && n > 0;
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
                  'Pascal Triangle',
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
                      'Pascal Triangle is a triangular array where each number is the sum of the two directly above it, starting with 1 at the top.',
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
                  controller: _model.rowsController,
                  focusNode: _model.rowsFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Enter number of rows',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [_model.rowsMask],
                  maxLength: 2,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    final input = _model.rowsController.text;
                    if (_isValidInput(input)) {
                      final String? result = await actions.calcPascal(input);
                      setState(() {
                        _model.answer = result ?? _model.answer;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter a number greater than 0.'),
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