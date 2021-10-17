import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 🤦‍',
      theme: ThemeData(
       
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'İlginç Bilgiler'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get style => null;



  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    final double height = ekran.size.height;
    final double width= ekran.size.width;
    String lorem ='Zürafaların boyunlarının uzun olduğunu biliriz ancak zürafalar ile ilgili ilginç olan kısım boyunlarının uzunluğu değil, boyun omurlarının sayısıdır. Zürafalar da aynı insanlar gibi sadece 7 adet boyun omuruna sahiptir. Boyun omurları özelleşerek, kemik yapıları uzayarak uzun boyunlarını destekleyecek şekilde evrimleşmişlerdir. ';





    return Scaffold(
      appBar: AppBar(


        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child:
              new Image.network("https://media2.giphy.com/media/H6VPKP45Nh8cYSv1Qe/200w.webp?cid=ecf05e47xz324spcskdete0byldw7lfi45ulru1u16ccjfgm&rid=200w.webp&ct=g"),

              width: 500,
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal:20 ,vertical: 20),

            ),
            Container(
              width: 500,


              child: RichText(
                maxLines: 5,

                text: TextSpan(text: lorem, style:TextStyle(
                      color: Colors.black54,
                  fontSize:height/40,


                  






                ),
                ),
              ) ,


            ),
            ElevatedButton(

              style:ElevatedButton.styleFrom(



                primary: Colors.orangeAccent,
                onPrimary: Colors.black,



              ),
              onPressed: (){},
              child: const Text('OK'),

            )









          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
