

import 'package:cubit_bloc/photo_bloc/photo_event.dart';
import 'package:cubit_bloc/photo_bloc/photo_state.dart';
import 'package:cubit_bloc/photos_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotosState> {
  PhotoBloc() : super(PhotoLoadingState());

  PhotoRepository repo = PhotoRepository();

  @override
  Stream<PhotosState> mapEventToState(PhotoEvent event) async*{
      if(event is FetchPhotoEvent) {
        yield PhotoLoadingState();
        try{
          var photos = await repo.getPhotos();
          yield PhotoLoadedSuccessfullyState(photos: photos);
        }catch(e){

        }
      }
  }

}
