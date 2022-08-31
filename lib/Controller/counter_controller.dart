class CounterController {
  addition(int val) {
    return val + 1;
  }

  subtraction(int val) {
    if (val == 0) {
      val = 0;
      return val;
    } else {
      return val - 1;
    }
  }
}
