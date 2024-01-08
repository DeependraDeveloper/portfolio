import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/pages/footer.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:personalportfolio/widgets/styles.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              // Mobile View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Experience Title
                    FittedBox(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Experience",
                            textStyle: GoogleFonts.montserrat(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Experience Description
                    FittedBox(
                      child: Text(
                        'Explore my professional work and volunteer experience.',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    verticalSpace(50),

                    // Work Experience
                    FittedBox(
                      child: Text(
                        '💼  Work Experience',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    verticalSpace(30),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: 500,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://media.licdn.com/dms/image/D560BAQEHqxLLwMK4UA/company-logo_200_200/0/1687166241962/tingtingnow_logo?e=1711584000&v=beta&t=wTR6AD5660nJL_rC4PFxfkH4AuwLfF23LdhW0hzLx60',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'TING TING',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'SR BACKEND DEVELOPER',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2022 - PRESSENT',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Building a scalable backend for the Ting Ting app\n using NodeJS, ExpressJS, MongoDB, and Firebase.',
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: 500,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'ROYAL MART',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Flutter Developer Intern',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2022-2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Working on the Royal Mart app using Flutter and Firebase.\n Learning about the basics of Flutter and Firebase.',
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(35),
                    FittedBox(
                      child: Text(
                        '🌏 Volunteer Experience',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    verticalSpace(35),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: 500,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/png;base64,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',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'NCC',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'National Cadet Corps',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '20016-2017',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Contributed to the society by participating \n in various social activities and camps.',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: 500,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Keral Flood Relief',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Volunteer',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2020-2020',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Helped people in Kerala by providing \n food and other essential items.',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(10),
                    const Footer(),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1100) {
              // Tablet View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // EXPERIENCE HEADING
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Experience",
                          textStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // EXPERIENCE DESCRIPTION
                    Text(
                      'Explore my professional work and volunteer experience.',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    verticalSpace(50),

                    // WORK EXPERIENCE
                    Text(
                      '💼  Work Experience',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    verticalSpace(30),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://media.licdn.com/dms/image/D560BAQEHqxLLwMK4UA/company-logo_200_200/0/1687166241962/tingtingnow_logo?e=1711584000&v=beta&t=wTR6AD5660nJL_rC4PFxfkH4AuwLfF23LdhW0hzLx60',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TING TING',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'SR BACKEND DEVELOPER',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '2022 - PRESSENT',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Building a scalable backend for the Ting Ting app\n using NodeJS, ExpressJS, MongoDB, and Firebase.',
                                  maxLines: 2,
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ROYAL MART',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Flutter Developer Intern',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '2022-2023',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Working on the Royal Mart app using Flutter and Firebase.\n Learning about the basics of Flutter and Firebase.',
                                  maxLines: 2,
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(35),
                    const Text(
                      '🌏 Volunteer Experience',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(35),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/png;base64,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',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NCC',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'National Cadet Corps',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '20016-2017',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Helped to the society by participating \nin various  social activities and camps.',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Keral Flood Relief',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Volunteer',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '2020-2020',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Helped people in Kerala by providing \n food and other essential items.',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Footer(),
                  ],
                ),
              );
            } else {
              // Desktop View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // EXPERIENCE HEADING
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Experience",
                          textStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // EXPERIENCE DESCRIPTION
                    Text(
                      'Explore my professional work and volunteer experience.',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    verticalSpace(50),

                    // WORK EXPERIENCE
                    Text(
                      '💼  Work Experience',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    verticalSpace(30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://media.licdn.com/dms/image/D560BAQEHqxLLwMK4UA/company-logo_200_200/0/1687166241962/tingtingnow_logo?e=1711584000&v=beta&t=wTR6AD5660nJL_rC4PFxfkH4AuwLfF23LdhW0hzLx60',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'TING TING',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'SR BACKEND DEVELOPER',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '2022 - PRESSENT',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Building a scalable backend for the Ting Ting \napp using NodeJS, ExpressJS, MongoDB,\n and Firebase.',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ROYAL MART',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Flutter Developer Intern',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '2022-2023',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Working on the Royal Mart app using Flutter \n and Firebase.Learning about \nthe basics of Flutter and Firebase.',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(35),

                    // VOLUNTEER EXPERIENCE
                    Text(
                      '🌏 Volunteer Experience',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    verticalSpace(35),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'data:image/png;base64,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',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NCC',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'National Cadet Corps',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '20016-2017',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Contributed to the society by participating \n in various social activities and camps.',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Keral Flood Relief',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Volunteer',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '2020-2020',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Helped people in Kerala by providing \n food and other essential items.',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const Footer(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
