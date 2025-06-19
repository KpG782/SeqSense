// lib/homepage/homepage_widget.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '../fibonacci/fibonacci_widget.dart';
import '../lucas/lucas_widget.dart';
import '../tribonacci/tribonacci_widget.dart';
import '../collatz/collatz_widget.dart';
import '../euclidean/euclidean_widget.dart';
import '../pascal_triangle/pascal_triangle_widget.dart';

import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({Key? key}) : super(key: key);

  static const String routeName = 'Homepage';
  static const String routePath = '/homepage';

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF78CAD2),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Automata Theory',
                    style: FlutterFlowTheme.of(context)
                        .headlineMedium
                        .override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.w600,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 32.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Mr. Lester Diampoc - III ACSAD',
                    style: FlutterFlowTheme.of(context)
                        .bodyMedium
                        .override(
                      font: GoogleFonts.inter(),
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    // height removed to avoid overflow
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F4C75),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color(0x20000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Activity Definition',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.w600,
                              ),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Explore these six math essentials: Fibonacci, Lucas, Tribonacci, Pascal’s Triangle, Collatz, and the Euclidean GCD. Each showcases how simple recursive or iterative rules can generate powerful number patterns.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              font: GoogleFonts.inter(),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.4,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _buildTile(
                        icon: Icons.numbers_sharp,
                        label: 'Fibonacci Numbers',
                        onTap: () => context.pushNamed(
                          FibonacciWidget.routeName,
                          extra: {
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                            )
                          },
                        ),
                      ),
                      _buildTile(
                        icon: Icons.calculate_sharp,
                        label: 'Lucas Numbers',
                        onTap: () => context.pushNamed(
                          LucasWidget.routeName,
                          extra: {
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.leftToRight,
                            )
                          },
                        ),
                      ),
                      _buildTile(
                        icon: Icons.analytics_sharp,
                        label: 'Tribonacci Numbers',
                        onTap: () => context.pushNamed(
                          TribonacciWidget.routeName,
                          extra: {
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.topToBottom,
                            )
                          },
                        ),
                      ),
                      _buildTile(
                        icon: Icons.format_list_numbered,
                        label: 'Collatz Sequence',
                        onTap: () => context.pushNamed(
                          CollatzWidget.routeName,
                          extra: {
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.scale,
                              alignment: Alignment.bottomCenter,
                            )
                          },
                        ),
                      ),
                      _buildTile(
                        icon: Icons.grid_4x4,
                        label: 'Euclidean Algorithm',
                        onTap: () => context.pushNamed(
                          EuclideanWidget.routeName,
                          extra: {
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType:
                              PageTransitionType.rightToLeft,
                            )
                          },
                        ),
                      ),
                      _buildTile(
                        icon: Icons.filter_1,
                        label: 'Pascal Triangle',
                        onTap: () => context.pushNamed(
                          PascalTriangleWidget.routeName,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE1F5FE),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color(0x20000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Members',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.w600,
                              ),
                              color: const Color(0xFF1B262C),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Ken Patrick Garcia\nBrian Ashley Papa\nMars Maguddayao',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                    ),
                                    color: const Color(0xFF1B262C),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color(0x154A90E2),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.groups,
                                  color: Color(0xFF4A90E2),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE1F5FE),
        boxShadow: const [
          BoxShadow(blurRadius: 6, color: Color(0x15000000), offset: Offset(0, 2))
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: const Color(0xFF4A90E2), size: 32),
              const SizedBox(height: 12),
              Text(
                label,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context)
                    .titleSmall
                    .override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.w800,
                  ),
                  color: const Color(0xFF1B262C),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
