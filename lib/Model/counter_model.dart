import 'package:mvc_example/Controller/counter_controller.dart';

class CounterModel {
  int count = 0;
  CounterController obj1 = CounterController();
  add() {
    count = obj1.addition(count);
  }

  sub() {
    count = obj1.subtraction(count);
  }
}
