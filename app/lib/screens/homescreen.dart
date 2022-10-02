import 'dart:math';

import 'package:app/models/index.dart';
import 'package:app/utils.dart';
import 'package:app/widgets/appBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final rand = Random();
  late List<Item> items;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    items = categories[0].itemList;
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: GenericAppBar(pageName: 'HOME', isHomePage: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('CATEGORIES', 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 15,
            ),),

            const SizedBox(height: 10),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        items = categories[index].itemList;
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: colors[rand.nextInt(3)],
                            radius: 37,
                          ),
                          const SizedBox(height: 5),
                          Text(categories[index].name, style: TextStyle(
                            color: (selectedIndex == index) ? Theme.of(context).primaryColor : Colors.white
                            ),)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            CarouselSlider.builder(itemCount: items.length,
             itemBuilder: (context, index, pageViewIndex){
              return Column(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: items[index].color,
                  ), 
                  Text(items[index].name, textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white, 
                    fontSize: 20,
                  )),
                  Text('${items[index].price}c', textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor, 
                    fontSize: 20,
                  ))
                ],
              );
             },
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              height: 400, 
              viewportFraction: 0.7,
              initialPage:  0,
            )),


            Center(
              child: Text('Work in Progress!', 
              style: TextStyle(
                color: Theme.of(context).primaryColor, 
                fontWeight: FontWeight.bold, 
                fontSize: 40
              ))
            ),
          ],
        ),
      ),
    );
  }
}