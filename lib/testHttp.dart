import 'dart:convert';

import 'package:http/http.dart' as http ;

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class TestHttp {

  Future<Album> fetchAlbum() async {
    final res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if(res.statusCode == 200) {
          return Album.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("Fail to load album.");
    }
  }

}









