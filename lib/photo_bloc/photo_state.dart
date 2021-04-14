

import '../../photo.dart';

abstract class PhotosState {}

class PhotoLoadingState extends PhotosState{}

class PhotoLoadedSuccessfullyState extends PhotosState {
  List<Photos> photos;
  PhotoLoadedSuccessfullyState({this.photos});
}

class PhotoErrorState extends PhotosState {
  String message;
  PhotoErrorState({this.message});
}