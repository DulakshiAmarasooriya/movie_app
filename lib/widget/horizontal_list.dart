import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/movie.dart';
import '../screens/movie_details_screen.dart';

class HorizontalList extends StatelessWidget {
  final int index;
  HorizontalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 170,
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).popAndPushNamed(
              MovieDetailsScreen.routeName,
              arguments: {
                'id': movieList[index].id,
                'title': movieList[index].title,
                'imageUrl': movieList[index].imageUrl,
                'description': movieList[index].description,
                'rating': movieList[index].rating,
                'year': movieList[index].year,
                'duration': movieList[index].duration,
              },
            );
          },
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Hero(
                  tag: movieList[index].id,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(movieList[index].imageUrl),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                movieList[index].title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
