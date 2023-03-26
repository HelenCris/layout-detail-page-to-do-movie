// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FilmModel {
  final String image;
  final String title;
  final int vote_count;
  final double popularity;
  final List genres;

  FilmModel(this.image, this.title, this.vote_count, this.popularity,
      this.genres); // pegar name de cada genre

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backdrop_path': image,
      'title': title,
      'vote_count': vote_count,
      'popularity': popularity,
      'genres': genres,
    };
  }

  factory FilmModel.fromMap(Map<String, dynamic> map) {
    return FilmModel(
        map['backdrop_path'] as String,
        map['title'] as String,
        map['vote_count'] as int,
        map['popularity'] as double,
        List.from(
          (map['genres'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory FilmModel.fromJson(String source) =>
      FilmModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
