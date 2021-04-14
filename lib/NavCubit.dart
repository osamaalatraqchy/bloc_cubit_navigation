
import 'package:cubit_bloc/photo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<Photos> {
  NavigationCubit() : super(null);
  void showPhotoDetails(Photos photo) => emit(photo);
  void returnToPhotos() => emit(null);

}

