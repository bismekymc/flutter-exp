import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) =>
        const ExtractArgumentsScreen(),
      },
      onGenerateRoute:(settings) {


        if (settings.name == PassArgumentsScreen.routeName)
          final args = settings.arguments as ScreenArguments;

        return MaterialPageRoute(

          builder: (context) {
            var args;
            return PassArgumentsScreen(
              message: 'görseller',
              title: 'hbhjb',



            );
          },

        );

    },


      title: 'Flutter 🤦‍',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'İlginç Bilgiler'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({Key? key}) : super(key: key);

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';


   const PassArgumentsScreen({Key? key, required String message, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }}

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
    String lorem ='Zürafaların boyunlarının uzun olduğunu biliriz ancak zürafalar ile ilgili ilginç olan kısım boyunlarının uzunluğu değil, '
        'boyun omurlarının sayısıdır. Zürafalar da aynı insanlar gibi sadece 7 adet boyun omuruna sahiptir. Boyun omurları özelleşerek, '
        'kemik yapıları uzayarak uzun boyunlarını destekleyecek şekilde evrimleşmişlerdir. ';


    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              child:
              new Image.network("https://media2.giphy.com/media/H6VPKP45Nh8cYSv1Qe/200w.webp?cid=ecf05e47xz324spcskdete0byldw7lfi45ulru1u16ccjfgm&rid=200w.webp&ct=g"),

              width: 400,
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal:30 ,vertical: 30),

            ),
            Container(
              width: 600,


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
              onPressed: () {

                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Daha Fazla Bilgi',
                    "Zürafaların uzun boyunlarının evriminin Asya kıtasında başlaması ve bu özelliği "
                        "kazandıktan sonra Afrika'ya geçmiş olmaları da bir başka ilginçlik.",


                ),
                );
              },
              child: const Text('Daha Fazlası'),
            ),


            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Daha Fazla Resim',
                    'örnek',


                  ),
                );

              },

              child: const Text('Görseller'),

            ),
          ],
        ),
      ),
    );
  }
}



class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
