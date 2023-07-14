import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiData {
  get(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    List data = jsonDecode(response.body);
    if (response.statusCode == 200)
      return data;
    else
      throw Exception(
          'there was an error and returned statuscode: ${response.statusCode} with response body: ${response.body}');
  }

  post({
    required Map<String, dynamic> body,
    @required String? token,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=utf-8',
    };

    if (token != null) {
      headers.addAll({'Authorization': token});
    }
    http.Response response = await http.post(
      Uri.parse('https://fakestoreapi.com/products'),
      body: body,
      headers: headers,
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200)
      return data;
    else
      throw Exception(
          'there was an error and returned statuscode: ${response.statusCode} with response body: ${response.body}');
  }

  put({
    required Map<String, dynamic> body,
    @required String? token,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=utf-8',
    };

    if (token != null) {
      headers.addAll({'Authorization': token});
    }
    http.Response response = await http.put(
      Uri.parse('https://fakestoreapi.com/products'),
      body: body,
      headers: headers,
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200)
      return data;
    else
      throw Exception(
          'there was an error and returned statuscode: ${response.statusCode} with response body: ${response.body}');
  }
}
