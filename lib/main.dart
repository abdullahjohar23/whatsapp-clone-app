import 'package:flutter/material.dart';
import 'package:whatsapp_clon_app/pages/main_page.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainPage(),
        );
    }
}
