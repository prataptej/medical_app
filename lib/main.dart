import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medical_app/Reminder.dart';
import 'package:medical_app/components/CategoryCard.dart';
import 'package:medical_app/components/ProductCard.dart';
import 'package:medical_app/constants.dart';
import 'package:medical_app/models/Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [
    Product('Surgical Mask', "It is designed to prevent infections.",
        'assets/images/mask.png', 160),
    Product(
        'Black n95 Mask',
        "It is n95 mask designed to prevent infections in patients.",
        'assets/images/black_mask.png',
        250),
    Product('Eye Patch', "It is designed to prevent infections in eyes.",
        'assets/images/eyepatch.png', 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: pi / 2,
            child: Icon(
              Feather.bar_chart_2,
              color: kTextPrimary,
              size: 30,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.search,
              color: kTextPrimary,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hi! John',
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Deliver to',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                Text(
                  'Current location',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Feather.chevron_down,
                  color: kTextPrimary,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                color: kSecondary,
                splashColor: kPrimary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Feather.camera,
                      color: kTextPrimary,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Upload your prescription',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: kTextSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 125,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    title: 'FirstAid',
                    icon: MaterialCommunityIcons.medical_bag,
                  ),
                  CategoryCard(
                    title: 'Medicines',
                    icon: MaterialCommunityIcons.pill,
                  ),
                  CategoryCard(
                    title: 'HealthCare',
                    icon: Feather.activity,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Today's deals",
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductCard(product: products[index]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondary,
        splashColor: kPrimary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Reminder(),
            ),
          );
        },
        child: Icon(
          Icons.alarm_add,
          color: kTextPrimary,
          size: 30,
        ),
      ),
    );
  }
}
