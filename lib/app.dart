import 'package:flutter/material.dart';
import 'core/routes/route_generator.dart';
import 'core/theme/theme.dart';

class RepairKro extends StatefulWidget {
  const RepairKro({super.key});

  @override
  State<RepairKro> createState() => _DensatState();
}

class _DensatState extends State<RepairKro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'RepairKro',
      theme: AppTheme.lightTheme,
      routerConfig: RouteGenerator.router,
    );
  }
}
