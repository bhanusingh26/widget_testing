import 'package:flutter_test/flutter_test.dart';
import 'package:prep_interview/count.dart';

void main() {
  late Counter counter;
  setUp(() {
    counter = Counter();
  });
  group('count ...', () {
    test('check initial value', () {
      final int count = counter.count;
      expect(count, 0);
    });

    test('check after incerement value', () {
      counter.increment();
      final int count = counter.count;
      expect(count, 1);
    });

    test('check after decrement value', () {
      counter.decrement();
      final int count = counter.count;
      expect(count, -1);
    });
  });
}
