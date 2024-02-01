// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// Header kısmının iconları mevcuttur.
  Widget HeaderIcons() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.black87,
            size: 22,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 20, bottom: 8, top: 8),
          child: Icon(
            Icons.send,
            color: Colors.black87,
            size: 20,
          ),
        ),
      ],
    );
  }

// Uygulamanın altındaki iconlar için kodlar burada mevcut.
  Widget BottomNavigationBar() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.home_outlined,
              size: 28,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              size: 28,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.add_circle_outline,
              size: 28,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.smart_display_outlined,
              size: 28,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.person_outline,
              size: 28,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget PostItem(String avatar, String photo, String name, String location) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentsBox(),
            CommentBox("Eda Aydın", "Harika Görsel :)"),
          ],
        ),
      );

// Yorumların iconları burada mevcuttur.
  Widget LikeCommentsBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
              ),
              SizedBox(width: 7),
              Icon(
                Icons.mode_comment_outlined,
                color: Colors.black87,
                size: 22,
              ),
              SizedBox(width: 7),
              Icon(
                size: 22,
                Icons.send,
                color: Colors.black87,
              ),
            ],
          ),
          Icon(
            Icons.bookmark_outline,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }

// Yorum kısmının kodları burada mevcuttur.
  Widget CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, bottom: 2),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 5),
          Text(
            comment,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

// Story kısmının kodları burada mevcuttur.
  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2.7),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(214, 71, 103, 1),
                  Color.fromRGBO(241, 166, 117, 1),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            // Header kısmında bulunan logo burada mevcuttur.
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  HeaderIcons(),
                ],
              ),
            ),
            // Buranın kodları storyWidgetlar içinde mevcuttur.
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget("assets/images/p13.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p21.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p27.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p26.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p18.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p15.jpg", "Eda_Aydın"),
                            StoryWidget("assets/images/p23.jpg", "Eda_Aydın"),
                          ],
                        ),
                      ),
                      // PostItem kısmında buranın kodları mevcuttur.
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p13.jpg", "assets/images/p3.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p21.jpg", "assets/images/p4.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p27.jpg", "assets/images/p27.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p26.jpg", "assets/images/p22.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p18.jpg", "assets/images/p16.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p15.jpg", "assets/images/p24.jpg",
                          "Eda_Aydın", "İstanbul"),
                      Divider(color: Colors.black12),
                      PostItem("assets/images/p23.jpg", "assets/images/p17.jpg",
                          "Eda_Aydın", "İstanbul"),
                    ],
                  ),
                ),
              ),
            ),

            BottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
