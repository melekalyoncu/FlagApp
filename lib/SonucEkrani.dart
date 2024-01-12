import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  int dogruSayisi;

  SonucEkrani({required this.dogruSayisi});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SonucEkrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.dogruSayisi} doğru ${5-widget.dogruSayisi} yanlış",style: TextStyle(fontSize: 30),),
            Text("% ${(widget.dogruSayisi*20).toInt()} başarı",style: TextStyle(fontSize: 30,color: Colors.pink),),

            SizedBox(width: 250,height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);

              }, child: Text("Tekrar Dene"),),
            ),

          ],
        ),
      ),
    );
  }
}
