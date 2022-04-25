import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/model_movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  //영화 데이터 추가
  List<Movie> movies = [
    Movie.fromMap({
    'title' : '사랑의 불시착',
    'keyword' : "사랑/로멘스/판타지",
    'poster':'test_movie_1.png',
    'like' : false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('images/bbongflix_logo.png',
              fit: BoxFit.contain, height: 25),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: const Text(
                ("TV 프로그램"),
                style: TextStyle(fontSize: 14),
              )),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: const Text(
                ("영화"),
                style: TextStyle(fontSize: 14),
              )),
          Container(
              padding: EdgeInsets.only(right: 1),
              child: const Text(
                ("내가 찜한 콘텐츠"),
                style: TextStyle(fontSize: 14),
              )),
        ],
      ),
    );
  }
}
