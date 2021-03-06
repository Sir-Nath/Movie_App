import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/screen/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: OpenContainer(
          closedBuilder: (context, VoidCallback){
            return builldMovieCard(context);
          },
          openBuilder: (context, VoidCallback) {
            return DetailsScreen(movie: movie);
          },
        )
      // InkWell(
      //   onTap: () => Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => DetailsScreen(movie: movie))),
      //   borderRadius: BorderRadius.circular(50),
      //   child: builldMovieCard(context),
      // ),

    );
  }

  Column builldMovieCard(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [kDefaultShadow],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(movie.poster))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/star_fill.svg',
                height: 20,
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              Text(
                '${movie.rating}',
                style: Theme.of(context).textTheme.bodyText2,
              )
            ],
          )
        ],
      );
  }
}
