import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 160,
      child: Column(
        children: [
          Card(
            elevation:10,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      NetworkImage('https://images.app.goo.gl/o4GXV5rkX6HFviVs9'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Star Wars',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
