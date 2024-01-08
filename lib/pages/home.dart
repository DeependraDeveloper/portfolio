import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/pages/footer.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:url_launcher/url_launcher.dart';

//! SORTED
class Home extends StatelessWidget {
  const Home({super.key});

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
                    // IMAGE
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.2,
                      backgroundImage:
                          const AssetImage('assets/images/profile.jpeg'),
                    ),

                    verticalSpace(15),

                    // GREETING TEXT
                    FittedBox(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Hi, everyone! I'm",
                            textStyle: GoogleFonts.montserrat(
                              color: Colors.white38,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(15),

                    // NAME TEXT
                    FittedBox(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          WavyAnimatedText(
                            'Deependra Bahadur',
                            textStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        repeatForever: false,
                      ),
                    ),

                    verticalSpace(25),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            '🧠 Computer Science Learner',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        verticalSpace(10),
                        FittedBox(
                          child: Text(
                            '🚀 Aspiring Software Developer',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        verticalSpace(10),
                        FittedBox(
                          child: Text(
                            '🌐 Tech Enthusiast',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        verticalSpace(10),
                        FittedBox(
                          child: Text(
                            '🌏 Community Volunteer',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(25),

                    FittedBox(
                      child: Text(
                        'Looking to contact? Send me an email ✨',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    verticalSpace(15),

                    // EMAIL
                    GestureDetector(
                      onTap: () async {
                        const url = 'mailto:deependrabahadurr@gmail.com';
                        if (await launchUrl(Uri.tryParse(url)!)) {
                          await launchUrl(Uri.tryParse(url)!);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: FittedBox(
                        child: Text(
                          'deependrabahadurr@gmail.com',
                          style: GoogleFonts.montserrat(
                            color: Colors.white38,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    verticalSpace(15),

                    const Footer()
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1100) {
              // Tablet View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // IMAGE
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.2 - 20,
                      backgroundImage:
                          const AssetImage('assets/images/profile.jpeg'),
                    ),

                    verticalSpace(15),
                    // GREETING TEXT

                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Hi, everyone! I'm",
                          textStyle: GoogleFonts.montserrat(
                            color: Colors.white38,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    // NAME TEXT
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        WavyAnimatedText(
                          'Deependra Bahadur',
                          textStyle: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      repeatForever: false,
                    ),

                    verticalSpace(35),

                    // ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  '🧠 Computer Science Learner',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              verticalSpace(10),
                              FittedBox(
                                child: Text(
                                  '🚀 Aspiring Software Developer',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  '🌐 Tech Enthusiast',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              verticalSpace(10),
                              FittedBox(
                                child: Text(
                                  '🌏 Community Volunteer',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(30),

                    Text(
                      'Looking to contact? Send me an email ✨',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),

                    verticalSpace(10),
                    // EMAIL
                    GestureDetector(
                      onTap: () async {
                        const url = 'mailto:deependrabahadurr@gmail.com';
                        if (await launchUrl(Uri.tryParse(url)!)) {
                          await launchUrl(Uri.tryParse(url)!);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'deependrabahadurr@gmail.com',
                        style: GoogleFonts.montserrat(
                          color: Colors.white38,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    verticalSpace(10),
                    const Footer()
                  ],
                ),
              );
            } else {
              // Desktop View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            // GREETING TEXT
                            AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TyperAnimatedText(
                                  "Hi, everyone! I'm.",
                                  textStyle: GoogleFonts.montserrat(
                                    color: Colors.white38,
                                    fontSize: 38,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                            verticalSpace(15),
                            // NAME TEXT
                            AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                WavyAnimatedText(
                                  'Deependra Bahadur',
                                  textStyle: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 44,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              repeatForever: false,
                            ),

                            verticalSpace(30),

                            // ROW
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '🧠 Computer Science Learner',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 21,
                                      ),
                                    ),
                                    verticalSpace(15),
                                    Text(
                                      '🚀 Aspiring Software Developer',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ],
                                ),

                                horizontalSpace(20),
                                // 2nd ROW
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '🌐 Tech Enthusiast',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 21,
                                      ),
                                    ),
                                    verticalSpace(15),
                                    Text(
                                      '🌏 Community Volunteer',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 21,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            verticalSpace(30),

                            Text(
                              'Looking to contact? Send me an email ✨',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            verticalSpace(15),
                            GestureDetector(
                              onTap: () async {
                                const url =
                                    'mailto:deependrabahadurr@gmail.com';
                                if (await launchUrl(Uri.tryParse(url)!)) {
                                  await launchUrl(Uri.tryParse(url)!);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text(
                                'deependrabahadurr@gmail.com',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white38,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 200,
                          backgroundImage: AssetImage('assets/images/profile.jpeg'),
                        )
                      ],
                    ),
                    verticalSpace(30),
                    const Footer()
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
