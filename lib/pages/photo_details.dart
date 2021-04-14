import 'package:flutter/material.dart';

import '../photo.dart';


class PhotoDetailsView extends StatelessWidget {
  Photos photo;
  PhotoDetailsView({this.photo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(photo.title),
        ),
        body: Center(child: CircleAvatar(
          radius: 200,
          child: Image.network(photo.url),),)

    );
  }
}