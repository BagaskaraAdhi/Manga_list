import 'dart:ui';

import 'package:flutter/material.dart';

main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Color Pallete
  static const bgColor = Color(0xff222831);
  static const grayColor = Color(0xff393E46);
  static const yellowColor = Color(0xffFFD369);
  static const whiteColor = Color(0xffEEEEEE);
  static const blueColor = Color(0xFF064EC2);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: blueColor,
          onPressed: () {},
          child: const Icon(
            Icons.search_rounded,
            color: grayColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text(
            "Action Genres Manga",
            style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
          ),
          leading: Icon(
            Icons.menu,
            color: grayColor,
          ),
          backgroundColor: blueColor,
          foregroundColor: whiteColor,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        padding: const EdgeInsets.all(10.0),
                        width: double.maxFinite,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: grayColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  "https://img.statically.io/img/kcast/komikcast.com/wp-content/uploads/2019/07/ashgoasgnaamf-e1563779637642.jpg",
                                ),
                              ),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              width: 240,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 4.0),
                                    child: Text(
                                      "One Piece",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 4.0),
                                    child: Expanded(
                                      child: Text(
                                        'Bercerita tentang seorang laki-laki bernama Monkey D. Luffy, yang menentang arti dari gelar bajak laut. Daripada kesannama besar, kejahatan, kekerasan, dia lebih terlihat seperti bajak laut rendahan yang suka bersenang-senang, alasanLuffy menjadi bajak laut adalah tekadnya untuk berpetualang di lautan yang menyenangkan dan bertemu orang-orangbaru dan menarik, sertabersama-sama mencari One Piece.',
                                        maxLines: 3,
                                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Color.fromARGB(255, 211, 211, 211), overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: TextButton(
                          style: TextButton.styleFrom(minimumSize: Size(10, 10), primary: whiteColor),
                          onPressed: () => {},
                          child: Icon(Icons.bookmark_add_outlined, color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        padding: const EdgeInsets.all(10.0),
                        width: double.maxFinite,
                        height: 133,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: grayColor,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 12.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  "data:image/jpeg;base64,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",
                                ),
                              ),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              width: 240,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 4.0),
                                    child: Text(
                                      "Jimina Ken Sei Wa Sore Demo Saikyoudesu Bahasa Indonesia",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 4.0),
                                    child: Expanded(
                                      child: Text(
                                        'Sansui telah mati dan dibawa ke hadapan Tuhan, dimana Dia menjelaskan bahwa karena keselahanNya Sansui terbunuh, dan sebagai permintaan maaf Tuhan memberinya kesempatan untuk reinkarnasi dengan kekuatan yang dia inginkan. Sansui ingin menjadi yang terkuat di dunia itu, tapi dia segera menyadari bahwa keinginannya itu mungkin akan menjadi ujian terberat dalam hidupnya.',
                                        maxLines: 3,
                                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Color.fromARGB(255, 211, 211, 211), overflow: TextOverflow.ellipsis),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: TextButton(
                          style: TextButton.styleFrom(minimumSize: Size(10, 10), primary: whiteColor),
                          onPressed: () => {},
                          child: Icon(Icons.bookmark_add_outlined, color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
