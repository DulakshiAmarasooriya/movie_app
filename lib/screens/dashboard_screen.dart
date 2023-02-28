import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../widget/horizontal_list.dart';
import '../widget/vertical_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: const Text('View All'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (BuildContext context, i) => HorizontalList(i),
                // ignore: prefer_const_literals_to_create_immutables
                // children: [
                //   const HorizontalList(),
                //   const HorizontalList(),
                //   const HorizontalList(),
                //   const HorizontalList(),
                // ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best of 2019',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: const Text('View All'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 840,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  VerticalListItem(),
                  VerticalListItem(),
                  VerticalListItem(),
                  VerticalListItem(),
                  VerticalListItem(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Rated Movies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    child: const Text('View All'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (BuildContext context, i) => HorizontalList(i),
                // ignore: prefer_const_literals_to_create_immutables
                // children: [
                //   const HorizontalList(),
                //   const HorizontalList(),
                //   const HorizontalList(),
                //   const HorizontalList(),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
