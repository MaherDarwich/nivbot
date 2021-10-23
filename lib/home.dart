import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {

    @override
  bool get wantKeepAlive => false;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.redAccent,

      appBar: AppBar(title: Text('Home Page'),),
      body: TextField(),
    );
  }


}