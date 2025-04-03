import 'package:flutter/material.dart';
import 'package:tallergorouter/routes/app_router.dart';

import 'themes/app_theme.dart'; // Importamos el tema

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //go_router para la navegacion
    return MaterialApp.router(
      theme:
          AppTheme.lightTheme, //tema personalizado y permamente en toda la app
      title: 'Flutter - UCEVA', // Se usa el tema personalizado
      routerConfig: appRouter, // Se hace uso de el router configurado
    );
  }
}
