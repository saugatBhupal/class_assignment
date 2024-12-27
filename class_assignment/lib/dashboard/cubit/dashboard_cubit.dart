import 'package:class_assignment/area_of_circle/area_of_circle_view.dart';
import 'package:class_assignment/area_of_circle/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment/simple_interest.dart/cubit/simple_interst_cubit.dart';
import 'package:class_assignment/simple_interest.dart/simple_interest_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(this._simpleInterestCubit, this._areaOfCircleCubit)
      : super(null);

  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _simpleInterestCubit,
            child: SimpleInterestView(),
          ),
        ));
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _areaOfCircleCubit,
            child: AreaofCircleView(),
          ),
        ));
  }
}
