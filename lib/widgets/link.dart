import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  final String url;
  final String title;
  final IconData icon;
  const Link({required this.url, required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 48)
      ),
      onPressed: () async {
        final uri = Uri.parse(url);
        if(await canLaunchUrl(uri)){
          launchUrl(uri);
        }
      },
      child: Row(children: [
        Icon(icon,size: 32,),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16
          ),
        )
      ],)
    );
  }
}