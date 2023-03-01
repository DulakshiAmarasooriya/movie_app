import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dashboard_screen.dart';

class MovieDetailsScreen extends StatelessWidget {
  static const routeName = '/movie_details_screen';

  get routeName2 => null;

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routArgs['id'];
    final rating = routArgs['rating'];

    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed(DashboardScreen.routeName2);
          },
          // onPressed: () => (context) => DashboardScreen(),
          // backgroundColor: Color(0xfff4f4f4),
          // elevation: 0,
          // iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          // title: Text('Movie Details'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: [
            Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag: 'id',
                  child: Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          routArgs['imageUrl']!,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              routArgs['title']!,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          routArgs['duration']!,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          routArgs['year']!,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '$rating/10',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              routArgs['description']!,
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: TextButton(
              // padding:const EdgeInsets.only(top: 20,
              // bottom: 20
              // ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: Size(10, 20),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                    ),
                    Text('Watch Trailer',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ))
                  ]),
            ),
          ),
          Expanded(
            child: TextButton(
              // padding:const EdgeInsets.only(top: 20,
              // bottom: 20
              // ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.yellowAccent,
                minimumSize: Size(10, 20),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.check_circle_outline,
                  //color: Colors.yellowAccent,
                ),
                Container(
                  height: 5,
                  width: 5,
                ),
                Text('Buy Now',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
