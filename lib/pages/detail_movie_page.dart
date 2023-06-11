import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Deskripsi Film',
          style: primaryColorTextStyle.copyWith(
              fontSize: 32, fontWeight: FontWeight.w800),
        ),
        backgroundColor: bgcolor1,
        elevation: 0,
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 26),
        child: Column(
          children: [
            Image.asset(
              'assets/img/banner_detail.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              
              child: Text('Rumble', 
              style: primaryTextStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w600),),
 
            ),
            SizedBox(
               child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 21,
                          vertical: 18,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                         child: Text('Rumble merupakan film animasi yang menceritakan ada universe yang dimana manusia dan monster bersatu. Para monster adalah para atlet gulat bintang yang bergulat demi memperebutkan sabuk juara dalam kompetisi monster wrestling. Film ini disutradarai oleh Hamish Grieve dan merupakan adaptasi novel karya Rob Harrell yang kemudian ditulis naskahnya oleh Grieve dan Matt Lieberman. Rumble diisi suara oleh Viswanathan, Terry Crews, Fred Melamed, Becky Lynch, Roman Reigns, Ben Schwartz, Jimmy Tatro, Tony Danza dan masih banyak lainnya.', 
              style: primaryTextStyleButton.copyWith(
              fontSize: 14, fontWeight: FontWeight.w400),),
                      ),
                     
                      
                    ],
                  ),
             
            )
             
          ],
          
        ),
      
      );
      

    }
    

    return Scaffold(
      backgroundColor: bgcolor1,
      appBar: header(),
      body: content(),
    );
  }
}
