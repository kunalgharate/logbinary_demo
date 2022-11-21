

import 'dart:convert';
import 'dart:io';

import 'package:demo_app_sqflite/models/order_model.dart';
import 'package:demo_app_sqflite/service/dio_client.dart';
import 'package:dio/dio.dart';

import '../service/end_points.dart';

class OrderRepo {

  Map<String, dynamic> toJson() => {
    "restaurant_id":101,
    "status":4,
    "page":1,
    "search":10
  };


  Dio _dio = Dio();

  OrderRepo() {
    _dio = Dio(BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: 50000,
      receiveTimeout: 50000,
    ));

  }


  Future<List<Order>?>? getOrders() async {
    try {

      final Response response = await _dio.post(Endpoints.users,
          options:Options(headers: {
          "accept": "*/*",
          "Content-Type": "application/json"
          }),data: toJson());

       var data = GetOrder.fromMap(response.data);

    return data.data?.orderInfo?.orders;
    }
    catch (e) {
      rethrow;
    }

  }



}