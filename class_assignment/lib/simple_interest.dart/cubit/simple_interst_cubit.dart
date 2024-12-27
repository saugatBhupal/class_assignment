import 'package:bloc/bloc.dart';

class SimpleInterestCubit extends Cubit<String> {
  SimpleInterestCubit() : super("");

  void calculateInterest(String principal, String rate, String time) {
    double principalDouble = double.tryParse(principal) ?? 0.0;
    double rateDouble = double.tryParse(rate) ?? 0.0;
    double timeDouble = double.tryParse(time) ?? 0.0;

    if (principalDouble > 0 && rateDouble > 0 && timeDouble > 0) {
      double interest = (principalDouble * rateDouble * timeDouble) / 100;
      emit("Simple Interest: \$${interest.toStringAsFixed(2)}");
    } else {
      emit("Please enter valid inputs.");
    }
  }
}
