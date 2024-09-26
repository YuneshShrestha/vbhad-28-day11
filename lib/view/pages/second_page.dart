import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:st_m_counter_app/controller/counter_comntroller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var contrller = Provider.of<CounterController>(context);
    return Scaffold(
      body: Center(
          child: Text(
        contrller.data.toString(),
        style: Theme.of(context).textTheme.displayLarge,
      )),
    );
  }
}
