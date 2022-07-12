import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';

import '../../../models/movie.dart';
import 'categories.dart';
import 'genre.dart';
import 'movie_card.dart';
import 'dart:math' as math;

import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CategoryList(), Genres(), MovieCarousel()],
    );
  }
}




