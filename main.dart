
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Flutter 🤦‍',
    home:HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String lorem =



        'By becoming a TED Member, you’ll be on the frontier of a brighter future, helping us build a community united by the power of knowledge. '
        'Together, we’ll share new perspectives, discover innovative ways of thinking and maybe even change the world. '
        'As a non-profit, we also rely on support from our audience to further our mission of making knowledge accessible to everyone.';
    return Scaffold(
      //appbar
      appBar: AppBar(


        title:Row(
          children: [
            Image.network('https://yt3.ggpht.com/ytc/AKedOLQGnY6McntoY-eWaRDI047FWFqj7pVlw2nBfkwz7w=s68-c-k-c0x00ffffff-no-rj'),

            const Text(' İdeas Worth Spreading'),],



        )
           , backgroundColor: Colors.red,


      ),
      //alt butonlar

      drawer: Drawer(
        elevation: 0,

        child:ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white54
              ),


              child: Text('WATCH'),

              padding: EdgeInsets.symmetric(),

            )
          ],
        )






    ),/*
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),*/
      //body(arka kısım) hep en altta olmalı
      body:Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[


            const LinearProgressIndicator(

              minHeight: (0.9),


            ),
            const Padding(
              padding: EdgeInsets.all(18),
              


            ),
            Text(lorem,
            maxLines: 50,
            )
            ,
          ]
        ),

      ),
        floatingActionButton:FloatingActionButton(
          backgroundColor: Colors.white24 ,
          highlightElevation: (0.5),

          onPressed:(){

        },

        )

    );
  }
}

/*actions: [
          Icon(Icons.call),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search),
          ),
          Icon(Icons.favorite_border),
        ],*/