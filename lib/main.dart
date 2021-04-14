import 'package:cubit_bloc/Navigation.dart';
import '../NavCubit.dart';
import 'package:cubit_bloc/photo_bloc/photo_bloc.dart';
import 'package:cubit_bloc/photo_bloc/photo_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(Master());

class Master extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NavigationCubit()),
          BlocProvider(create: (_) => PhotoBloc()..add(FetchPhotoEvent())),
        ],
    child: Navigation(),
      )
    );
  }
}









