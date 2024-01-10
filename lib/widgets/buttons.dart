import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget iconButtonWithNav(String url, icon , BuildContext context) => IconButton(
      onPressed: () async {
        final uri = url;
        if (await launchUrl(Uri.tryParse(uri)!)) {
          await launchUrl(Uri.tryParse(uri)!);
        } else {
          throw 'Could not launch $uri';
        }
      },
      icon: FaIcon(
        icon,
        size: 24,
        color: Theme.of(context).colorScheme.primary,
      ),
      hoverColor: Colors.grey,
    );
