import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/movie.dart';

class TopRatedList extends StatelessWidget {
  final int index;
  TopRatedList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 170,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(topmovieList[index].imageUrl),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              topmovieList[index].title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
