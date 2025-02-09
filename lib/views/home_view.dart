import 'package:counter_app/viewmodels/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../widgets/custom_counter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .inversePrimary,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Image.asset('assets/logo.png', height: 40),
                ),
                const SizedBox(width: 10),
                const Text(appTitle),
              ],
            )
        ),
        body: Consumer<CounterViewModel>(
            builder: (context, viewModel, child) {
              return Center(
                child: Column(
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
                            onPressed: viewModel.decrementCounter,
                          ),
                          Text(
                            '${viewModel.getCompteur()}',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headlineMedium,
                          ),
                          Icon(
                            Icons.favorite,
                            color: viewModel.getCompteur() < 0 ? Colors.black : Colors.red,
                            size: 50,
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: viewModel.incrementCounter,
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
              );
            })
    );
  }


}