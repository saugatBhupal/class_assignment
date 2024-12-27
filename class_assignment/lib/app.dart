import 'package:class_assignment/area_of_circle/cubit/area_of_circle_cubit.dart';
import 'package:class_assignment/dashboard/cubit/dashboard_cubit.dart';
import 'package:class_assignment/dashboard/dashboard_view.dart';
import 'package:class_assignment/simple_interest.dart/cubit/simple_interst_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<SimpleInterestCubit>(),
            context.read<AreaOfCircleCubit>(),
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashboardView(),
      ),
    );
  }
}
