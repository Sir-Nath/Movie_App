import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class TitleDuration extends StatelessWidget {
  const TitleDuration({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: kDefaultPadding/2,),
                Row(
                  children: [
                    Text('${movie.year}',
                      style: TextStyle(
                          color: kTextLightColor
                      ),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      'PG-13',
                      style: TextStyle(
                          color: kTextLightColor
                      ),
                    ),
                    SizedBox(width: kDefaultPadding,),
                    Text(
                      '2h 32min',
                      style: TextStyle(
                          color: kTextLightColor
                      ),
                    ),
                  ],
                ),

              ],
            ),),
          SizedBox(
            height: 64,
            width: 64,
            child: Container(
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(
                onPressed: (){},
                color: kSecondaryColor,
                icon: Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}