import 'dart:convert';

import 'package:catspragma/constant/constant.dart';
import 'package:http/http.dart' as http;
import '../models/cats.model.dart';
import 'http_error_handler.dart';

class CatsPragmaApiServices {
  final http.Client httpClient;
  CatsPragmaApiServices({
    required this.httpClient
  });

  Future<List<dynamic>> getAllCats() async {
    List<dynamic> cats;
    final Uri uri =  Uri(
      scheme: 'https',
      host: kApiHost,
      path: '/v1/breeds'
    );
    try{
      final http.Response  response =  await httpClient.get(uri);
      if(response.statusCode != 200){
        throw httpErrorHandler(response);
      }
      final catsJson =  json.decode(response.body);
      cats = catsJson.map((json) => Cats.fromJson(json)).toList();
      return cats;
    }catch(e){
      rethrow;
    }
  }

  Future<List<dynamic>> getFindCats(String term) async {
    List<dynamic> filterCats;

    final Uri uri =  Uri(
        scheme: 'https',
        host: kApiHost,
        path: '/v1/breeds'
    );

    try{
      final http.Response  response =  await httpClient.get(uri);
      if(response.statusCode != 200){
        throw httpErrorHandler(response);
      }

      final catsJson =  json.decode(response.body);

      filterCats = catsJson.map((dynamic json){
        final objectJson =  Cats.fromJson(json);
        if(objectJson.name.toLowerCase().contains(term.toLowerCase())){
          return objectJson;
        }
      }).toList();

      filterCats = filterCats.where((element) => element != null).toList();
      return filterCats;
    }catch(e){
      rethrow;
    }
  }

}
