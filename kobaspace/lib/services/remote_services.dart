import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kobaspace/models/detail_model.dart';
import 'package:kobaspace/models/list_model.dart';
import 'package:kobaspace/models/review_model.dart';

class RemoteServices {
  static const String baseURL = 'http://34.207.166.213/office';
  static const String reviewBaseURL = 'http://34.207.166.213/review';

  Future<ListModel> dataList() async {
    final response = await http.get(Uri.parse('$baseURL/all'));
    if (response.statusCode == 200) {
      return ListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list');
    }
  }

  Future<DetailModel> dataDetail(int id) async {
    final response = await http.get(Uri.parse('$baseURL/$id'));
    if (response.statusCode == 200) {
      return DetailModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list');
    }
  }

  Future<ReviewModel> dataReview() async {
    final response = await http.get(Uri.parse('$reviewBaseURL/all'));
    if (response.statusCode == 200) {
      return ReviewModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load list');
    }
  }
}