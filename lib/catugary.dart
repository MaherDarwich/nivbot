// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Catugary extends StatefulWidget {
  const Catugary({Key? key}) : super(key: key);

  @override
  _CatugaryState createState() => _CatugaryState();
}

class _CatugaryState extends State<Catugary> {
  List<Map> cat = [
    {
      'id': 1,
      'name': 'عامة',
      'img':'icons/math.png',
      'isfavoite': 'true',
    },
    {
      'id': 2,
      'name': 'رياضة',
      'img': 'icons/sport.png',
      'isfavoite': 'false',
    },
    {
      'id': 3,
      'name': 'علوم',
      'img': 'icons/Sciences.png',
      'isfavoite': 'true',
    },
    {
      'id': 4,
      'name': 'دراما',
      'img': 'icons/cinema.png',
      'isfavoite': 'true',
    },
    {
      'id': 5,
      'name': 'رياضيات',
      'img': 'icons/mathh.png',
      'isfavoite': 'false',
    },
    {
      'id': 6,
      'name': 'إسلامية',
      'img':'icons/islamic.png',
      'isfavoite': 'true',
    },
    {
      'id': 7,
      'name': 'انكليزي',
      'img': 'icons/language.png',
      'isfavoite': 'false',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView.builder(
              itemCount: cat.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Card(
                    elevation: 222,
                    // margin: EdgeInsets.all(10),
                    // color: Colors.black87,
                    shadowColor: Colors.blue,

                    child: Card(
                      color: Colors.black87,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(20),
                        minLeadingWidth: 200,
                        // isThreeLine: true,
                        // subtitle: Text('data'),

                        leading: Image(
                        image: AssetImage((cat[index]['img'])),
                        // height: 100,
                        // colorBlendMode: BlendMode.darken,
                        ),
                        title: Text(cat[index]['name'].toString(),
                            style: TextStyle(color: Colors.white),
                            textScaleFactor: 2),

                        trailing: cat[index]['isfavoite'] == 'true'
                            ? Icon(
                                EvaIcons.heart,
                                color: Colors.red,
                                
                              )
                            : Icon(EvaIcons.heart, color: Colors.white70),

                        // // Text(cat[index]['id'].toString(),
                        // //     style: TextStyle(color: Colors.white),
                        // //     textScaleFactor: 2),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
