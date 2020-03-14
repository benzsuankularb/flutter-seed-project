import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile/stores/counter_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage();

  @override
  Widget build(BuildContext context) {
    final counterStore = Provider.of<CounterStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${counterStore.count}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterStore.increase(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
