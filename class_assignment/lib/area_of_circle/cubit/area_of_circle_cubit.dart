import 'package:bloc/bloc.dart';

class AreaOfCircleCubit extends Cubit<double> {
  AreaOfCircleCubit() : super(0.0);

  void calculateCircleArea(double radius) {
    const double pi = 3.14159;

    if (radius < 0) {
      throw ArgumentError("Radius cannot be negative");
    }
    double area = pi * radius * radius;
    emit(area);
  }
}
