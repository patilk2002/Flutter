import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
import '../widgets/item_widget.dart';
import 'dart:convert';

import '../widgets/themes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Kiran";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator().centered().expand(),
                  )
              ],
            ),
          ),
        ));
  }
}
