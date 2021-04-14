import 'package:cubit_bloc/NavCubit.dart';
import 'package:cubit_bloc/pages/photo_details.dart';
import 'package:cubit_bloc/pages/photo_view.dart';
import 'package:cubit_bloc/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, Photos>(
      builder: (context, state) {
       return Navigator(
         pages: [
           MaterialPage(child: PhotosView()),
           if(state !=null) MaterialPage(child: PhotoDetailsView(photo: state,))
         ],
         onPopPage: (route, result) {
           context.read<NavigationCubit>().returnToPhotos();
           return route.didPop(result);
         },
       );
      },
    );
  }
}
