import 'package:flutter/material.dart';
import 'package:mvc_example/Controller/counter_controller.dart';
import 'package:mvc_example/Model/counter_model.dart';

class CounterViewScreen extends StatefulWidget {
  const CounterViewScreen({Key? key}) : super(key: key);

  @override
  State<CounterViewScreen> createState() => _CounterViewScreenState();
}

CounterModel ref = CounterModel();

class _CounterViewScreenState extends State<CounterViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MVC Example",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Counter : ${ref.count}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  ref.add();
                  setState(() {});
                },
                child: const Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.sub();
                  setState(() {});
                },
                child: const Icon(
                  Icons.remove,
                  size: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
