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
      title: 'OnboardScreen',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Kendini Medite Et'),
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

    String parag = 'MEDİTASYON SİZE İYİ GELECEK.'
        'Meditasyon, Stresi Yönetebilmenizi, Stres ile Baş Etmenizi Sağlar'
        'Sosyal Hayatınızı Canlandırır,'
        'Daha Az Çaba ile Daha Fazla İş Bitirirsiniz'
        'Depresyon ve Anksiyete’ye İyi Gelir, Şifalandırır'
        'Yorgunluğu Giderir. Yarım Saat Meditasyon Yapmak Tüm Gece Uyumaktan Daha Fazla Psikolojik Dinlenme Sağlar.';





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
            children: <Widget>[
            Container(
              child:
              new Image.network("https://media.giphy.com/media/iLBQAlaft9NU4/giphy.gif"),

              width: 500,
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal:20 ,vertical: 20),

            ),
            Container(
              width: 650,


              child: RichText(
                maxLines: 5,

                text: TextSpan(text: parag, style:TextStyle(
                  color: Colors.black54,
                  fontSize:height/40,

                ),
                ),
              ) ,


            ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: Text('TAMAM'),
              )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}