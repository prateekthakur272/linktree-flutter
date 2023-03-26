import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'link.dart';

class LinkCard extends StatelessWidget {
  const LinkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 500
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.black54,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Text(
                    'Prateek Thakur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Android | Flutter | IOS | Developer',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.grey,),
            const Link(url: 'https://github.com/prateekthakur272', title: 'Github', icon: FontAwesomeIcons.github),
            const Link(url: 'https://www.linkedin.com/in/prateek-thakur-452127216/', title: 'LinkedIn', icon: FontAwesomeIcons.linkedin),
            const Link(url: 'https://www.instagram.com/prateek_._thakur', title: 'Instagram', icon: FontAwesomeIcons.instagram),
            const Link(url: 'mailto:prateekthakur272@gmail.com', title: 'Mail', icon: Icons.mail),
          ],
        ),
      ),
    );
  }
}
