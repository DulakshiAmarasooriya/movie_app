import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: Row(
            children: [
              Container(
                height: 150,
                width: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://imageio.forbes.com/blogs-images/scottmendelson/files/2019/04/screencapture-file-C-Users-JckNa-OneDrive-Desktop-b-avengersendgame-horizontal-friday-17793-04d92fbf-webp-2019-04-23-08_14_14.jpg'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Avengers End Game',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      child: const Text(
                          'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
