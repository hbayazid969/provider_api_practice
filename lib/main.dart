import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/model/product_model.dart';
import 'package:provider_state_management/provider/product_provider.dart';
import 'package:provider_state_management/provider/provider_data.dart';
import 'package:provider_state_management/screen/data_overview.dart';
import 'package:provider_state_management/screen/home_screen.dart';
import 'package:provider_state_management/screen/increment_screen.dart';
import 'package:provider_state_management/service/product_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderData()),
        ChangeNotifierProvider(create: (context) => DataShow()),
        ChangeNotifierProvider(create: (context) => NewsProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
