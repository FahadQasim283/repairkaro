import 'package:flutter/material.dart';
import 'core/routes/route_generator.dart';
import 'core/theme/theme.dart';

class Densat extends StatelessWidget {
  const Densat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Densat',
      theme: AppTheme.lightTheme,
      routerConfig: RouteGenerator.router,
    );
  }
}
