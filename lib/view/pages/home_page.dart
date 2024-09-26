import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st_m_counter_app/controller/counter_comntroller.dart';

import 'package:st_m_counter_app/view/pages/second_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<CounterController>(context, listen: false);
    print("Rebuilding");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterController>(
              child: Text("Hello"),
              builder: (context, value, child) {
                print("Wow rebuilding");
                return Column(
                  children: [
                    if (child != null) child,
                    Text(
                      value.data.toString(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: Text(
                "+",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.sub();
              },
              child: Text(
                "-",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.next_plan),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return SecondPage();
            }));
          }),
    );
  }
}
