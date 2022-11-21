import 'dart:math';

import 'package:demo_app_sqflite/Utils.dart';
import 'package:demo_app_sqflite/models/local_order.dart';
import 'package:demo_app_sqflite/repo/order_repo.dart';
import 'package:demo_app_sqflite/service/database_service.dart';
import 'package:flutter/material.dart';

import 'models/order_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  final DatabaseService _databaseService = DatabaseService();

  Future<List<LocalOrder>>? localList;

  Future<List<LocalOrder>> getLocalOrders() async {
    return await _databaseService.getLocalOrders();
  }

  void _incrementCounter() {
    setState(() {
      _databaseService.truncateTable();
      localList = getLocalOrders();
    });
  }

  Future<List<Order>?>? orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Log Binary"),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: FutureBuilder<List<Order>?>(
              future: orders,
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                _databaseService.insertOrder(LocalOrder(
                                    Random().nextInt(100000),
                                    snapshot.data?[index].orderId,
                                    snapshot.data?[index].sequenceNo,
                                    snapshot.data?[index].orderTypeId
                                        .toString(),
                                    snapshot.data?[index].expectedDate
                                        .toString()));

                                setState(() {
                                  localList = getLocalOrders();
                                });
                              },
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                          width: 5.0, color: Colors.white),
                                      color: Colors.white),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "Order ID : ${snapshot.data?[index].orderId}   ${isPrime(snapshot.data?[index].sequenceNo) ? "\t Prime" : "\t Not prime"}"),
                                      Text(
                                          "Seq NO : ${snapshot.data?[index].sequenceNo}"),
                                      Text(
                                          "Order Type ID : ${snapshot.data?[index].orderTypeId}"),
                                      Text(
                                          "Expected Date : ${Utils.getFormattedDate(snapshot.data?[index].expectedDate ?? DateTime.now())}"),
                                    ],
                                  )));
                        },
                      );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Local Data"),
        ),
        Expanded(
          flex: 1,
          child: FutureBuilder<List<LocalOrder>?>(
              future: localList,
              builder: (context, snapshot) {
                return snapshot.connectionState == ConnectionState.waiting
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {},
                              child: Container(
                                  margin: EdgeInsets.all(10),
                                  width: double.infinity,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                          width: 5.0, color: Colors.white),
                                      color: Colors.white),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("ID : ${snapshot.data?[index].id}"),
                                      Text(
                                          "Order ID : ${snapshot.data?[index].order_id}"),
                                      Text(
                                          "Seq NO : ${snapshot.data?[index].seq_no}"),
                                      Text(
                                          "Order Type ID : ${snapshot.data?[index].order_type}"),
                                      Text(
                                          "Expected Date : ${Utils.stringToDate(snapshot.data?[index].expected_date??DateTime.now().toString())}"),
                                      ],
                                  )));
                        },
                      );
              }),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  // check prime number code 
  bool isPrime(N) {
    for (var i = 2; i <= N / i; ++i) {
      if (N % i == 0) {
        return false;
      }
    }
    return true;
  }

  @override
  void initState() {
    var orderrepo = OrderRepo();
    orders = orderrepo.getOrders();
    localList = getLocalOrders();
    super.initState();
  }
}
