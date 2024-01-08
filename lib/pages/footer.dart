import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:url_launcher/url_launcher.dart';

//! SORTED
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text(
            "© 2023 Deependra Bahadur. All rights reserved",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        verticalSpace(5),
        FittedBox(
          child: Text(
            "Version 1.0.0 | Built with Flutter 3.16",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        verticalSpace(10),
        ElevatedButton(
          onPressed: () async {
            const uri = 'https://github.com/DeependraDeveloper/portfolio/tree/master/lib';
            if (await launchUrl(Uri.tryParse(uri)!)) {
              await launchUrl(Uri.tryParse(uri)!);
            } else {
              throw 'Could not launch $uri';
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: FittedBox(
            child: Text(
              'View Source Code',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),
        )
      ],
    );
  }
}
