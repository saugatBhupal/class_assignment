import 'package:class_assignment/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0D52),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openSimpleInterestView(context);
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.monetization_on, size: 48),
                  Text('Simple Interest'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openAreaOfCircleView(context);
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.av_timer_outlined, size: 48),
                  Text('Area of Circle'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
