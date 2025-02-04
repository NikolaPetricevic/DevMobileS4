import 'package:counter_app/views/home_view.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../viewmodels/counter_view_model.dart';
import 'package:provider/provider.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = context.watch<CounterViewModel>();
    return
      ChangeNotifierProvider(
        create: (_) => CounterViewModel(),
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeView(),
          // '/second': (context) => const SecondPage(),
        },
      ),
    );
  }

}