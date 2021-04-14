import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cubit_bloc/photo.dart';

class PhotoRepository {
  final _baseUrl = "jsonplaceholder.typicode.com";

  Future<List<Photos>> getPhotos() async {
    try {
      final uri = Uri.https(_baseUrl, '/photos');
      final response = await http.get(uri);
      final json = jsonDecode(response.body) as List;
      final photos = json.map((photo) => Photos.fromJson(photo)).toList();
      return photos;
    } catch (e) {
      throw e;
    }
  }
}