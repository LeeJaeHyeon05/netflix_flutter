import 'package:flutter/material.dart';

import '../model/model_movie.dart';

class CarouselImage extends StatefulWidget {

  final List<Movie> movies;
  const CarouselImage({required this.movies});
  @override
  _CarouselImageState createState() => _CarouselImageState();

}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/' + m.poster)).cast<Widget>().toList();
    keywords = movies.map((e) => e.keyword).toList();
    likes = movies.map((e) => e.like).cast<bool>().toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
        ),
        Carousel
      ],

      ),
    );
  }

}