import 'dart:math';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CircleAvatar(
        backgroundImage: const AssetImage('assets/img_picture_2.JPG'),
        backgroundColor: Colors.black,
        radius: min(MediaQuery.of(context).size.width/6,200),
      ),
    );
  }
}
