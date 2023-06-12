import 'package:flutter/material.dart';

class SurahPage extends StatefulWidget {

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  List morningTimes=["بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ","إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَ بِسْمِ ال","وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَ بِسْمِ الله وَإِيَّاكَ نَسْتَعِينُ اهْدِنَا الصِّرَ بِسْمِ الله","بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ","بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ بِسْمِ اللهِ الرَّحْمَنِ الرَِ"];
 // final Surah surah;
  @override
  Widget build(BuildContext context) {
   // int count = surah.versesCount;
   // int index = surah.id;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          minimum: const EdgeInsets.all(15),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text("Al-Fateha",style: TextStyle(color: Colors.black),),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              textAlign:TextAlign.justify,// count <= 20 ? TextAlign.center : TextAlign.justify,
              text: TextSpan(
                children: [
                  for (var i = 0; i <= 4; i++) ...{
                    TextSpan(
                      text:morningTimes[i] /*' ' +
                          quran.getVerse(index, i, verseEndSymbol: false) +
                          ' '*/,
                      style: const TextStyle(
                        fontFamily: 'Kitab',
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Image.asset("assets/img.png",width: 20,height: 20,),
                        /*CircleAvatar(
                          radius: 14,
                          child: Text(
                            '$i',
                            textAlign: TextAlign.center,
                           // textScaleFactor: i.toString() //<= 2 ? 1 : .3,
                          ),
                        )*/)
                  }
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}