import 'package:cubit_bloc/photo_bloc/photo_bloc.dart';
import 'package:cubit_bloc/photo_bloc/photo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../NavCubit.dart';

class PhotosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('photos'),
      ),
      body: BlocConsumer<PhotoBloc, PhotosState>(
        listener: (context, state) {
             if(state is PhotoErrorState) {
               return ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text(state.message))
               );
             }
        },

        builder: (context, state) {
          if (state is PhotoLoadingState) {
            return Center(child: CircularProgressIndicator(),);
          } else if (state is PhotoLoadedSuccessfullyState) {
            return Card(
              child: ListView.builder(
                itemCount: state.photos.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(child: Image.network(state.photos[i]
                        .url),),
                    title: Text(state.photos[i].title),

                    onTap: () {
                      context.read<NavigationCubit>().showPhotoDetails(state.photos[i]);
                    },
                  );
                },
              ),
            );
          }
          else {
            return Container();
          }
        }
      )

    );
  }
}
