import 'package:flutter/material.dart';
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
      child: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: counterViewModel.decrementCounter,
              ),
              Text(
                  counterViewModel.getCompteur() as String,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Icon(
                Icons.favorite,
                color: counterViewModel.getCompteur() < 0 ? Colors.black : Colors.red,
                size: 50,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: counterViewModel.incrementCounter,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Aller à la deuxième page'),
        ),
      ],
    ),
    ),
    );
  }

}