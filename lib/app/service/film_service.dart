import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/film_model.dart';

class FilmService {
  final dio = Dio();

  final String _url =
      'https://api.themoviedb.org/3/movie/14836?api_key=fb1c070ef195d5d723198885c0b83632&language=en-US';

  Future<FilmModel> getFilm() async {
    Response response = await dio.get(_url);

    if (response.statusCode == 200) {
      var encoded = jsonEncode(response.data);

      var films = FilmModel.fromJson(encoded);

      return films;
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<FilmModel> getSimilarFilm() async {
    Response response = await dio.get('$_url/similar');

    if (response.statusCode == 200) {
      var encoded = jsonEncode(response.data);

      var films = FilmModel.fromJson(encoded);

      return films;
    } else {
      throw Exception('Failed to load');
    }
  }
}
