import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class InstaPost extends StatelessWidget {
  const InstaPost({Key? key}) : super(key: key);
  final image =
      "https://cdn.pixabay.com/photo/2022/07/24/05/43/lilies-7341051_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          /// username and profile picture

          Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.network(
                            image,
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(width: 15),
                      Text("IAmBijay"),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
          ),

          /// actual post image
          ///
          Image.network(image),
          // Image.asset(
          //   'resources/images/car.jpg',
          //   height: 200,
          //   width: 200,
          //   fit: BoxFit.cover,
          // )

          //// like comment share buttons
          Row(
            children: [
              Icon(
                Fontisto.heart_alt,
                color: Colors.red,
              ),
              Icon(EvilIcons.comment),
              Icon(Feather.send)
            ],
          ),
          FadeInImage(
            placeholder: AssetImage('resources/images/placeholder.jpg'),
            image: NetworkImage(image)
            // NetworkImage(image),
          ),

          /// caption
        ],
      ),
    );
  }
}


/// Icon= Widget 
/// IconData : Name of the icon. Example: Icons.home, Icons.search
/// 
/// Align

/// To make things circular
/// ClipRRect
/// 
/// FadeInImage: 