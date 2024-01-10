// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/pages/footer.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:personalportfolio/widgets/styles.dart';

class About extends StatelessWidget {
  const About({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // About heading Animated Text
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "About",
                          textStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // About Sub heading
                    Text(
                      'Get to know my background, goals, and interests.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),

                    verticalSpace(30),

                    // Introduction
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 340,
                      decoration: gradientDecoration(
                        Color(0xFF1E90FF),
                        Color(0xFF6A5ACD),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Introduction heading
                          Text(
                            'Introduction',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(15),
                          // Introduction sub heading
                          Flexible(
                            child: Text(
                              "Hey there! 👋 I'm a BSc Computer Science graduate with a passion for crafting tech solutions that bridge the gap between imagination and reality. With over 1.5 years of hands-on experience, I've delved into a diverse tech landscape, wielding skills in JavaScript, Node.js, MongoDB, and Postman to sculpt robust backend architectures.My journey isn't confined to backend realms alone—I groove in HTML, CSS, and Flutter, waltzing effortlessly between frontend finesse and mobile magic. Whether it's breathing life into sleek interfaces or sculpting backend fortresses, I've reveled in collaborating with both frontend maestros and backend wizards, concocting seamless software symphonies.AWS S3 and Git are my trusty sidekicks, empowering me to sculpt and deploy solutions that dance harmoniously in the cloud. Eager to explore, innovate, and continuously evolve, I thrive on pushing boundaries, coding the future, and painting pixels with purpose.Let's build, innovate, and code the world into a brighter tomorrow! ✨🚀",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Background
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 340,
                      decoration: gradientDecoration(
                        Color(0xFF008000),
                        Color(0xFF7FFF00),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Background heading
                          Text(
                            'Background',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(15),
                          // Background sub heading
                          Text(
                            'These are some intriguing facts about my personal details.',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    '👨‍💼 Name is Deependra Bahadur R',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🎊 Born on December 20, 1999',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🌍 Lives in India(Bangalore)(GMT+5:30)',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '👨 Gender is Male (He/Him/His)',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '👨‍💻 Works in TingTing',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Goals
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 340,
                      decoration: gradientDecoration(
                        Color(0xFFFFA500),
                        Color(0xFFFFD700),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Goals',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(15),
                          Text(
                            "It's been a few years since I stepped into the tech space. Having achieved significant milestones, I`m now dedicated to following these targets.",
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    '💻 Follow the Software Developer Path',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🤖 Follow the AI Engineer Path',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '📱  Build a Tech Community',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🎓 Pursue a Master`s Degree',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Interests
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 340,
                      decoration: gradientDecoration(
                        Color(0xFF9400D3),
                        Color(0xFF8A2BE2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Interests heading
                          Text(
                            'Interests',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(15),
                          // Interests sub heading
                          Text(
                            'Let me tell you about the passions that define me.',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    '🏏 Playing Video Games and Sports',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🎶 Listening to Music and Podcasts',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '🛵 Love to Travel and Explore New Places',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '📚 Studying New Things and Meeting New People',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                                verticalSpace(10),
                                FittedBox(
                                  child: Text(
                                    '💽 Loves to code and build new things',
                                    style: mediumTextStyle(context),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    // Footer
                    const Footer(),
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
                    // About heading Animated Text
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "About",
                          textStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // About Sub heading
                    Text(
                      'Get to know my background, goals, and interests.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),

                    verticalSpace(30),

                    // Introduction
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 330,
                      decoration: gradientDecoration(
                        Color(0xFF1E90FF),
                        Color(0xFF6A5ACD),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Introduction heading
                          Text(
                            'Introduction',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(20),
                          // Introduction sub heading
                          Flexible(
                            child: Text(
                              "Hey there! 👋 I'm a BSc Computer Science graduate with a passion for crafting tech solutions that bridge the gap between imagination and reality. With over 1.5 years of hands-on experience, I've delved into a diverse tech landscape, wielding skills in JavaScript, Node.js, MongoDB, and Postman to sculpt robust backend architectures.My journey isn't confined to backend realms alone—I groove in HTML, CSS, and Flutter, waltzing effortlessly between frontend finesse and mobile magic. Whether it's breathing life into sleek interfaces or sculpting backend fortresses, I've reveled in collaborating with both frontend maestros and backend wizards, concocting seamless software symphonies.AWS S3 and Git are my trusty sidekicks, empowering me to sculpt and deploy solutions that dance harmoniously in the cloud. Eager to explore, innovate, and continuously evolve, I thrive on pushing boundaries, coding the future, and painting pixels with purpose.Let's build, innovate, and code the world into a brighter tomorrow! ✨🚀",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Background
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 330,
                      decoration: gradientDecoration(
                        Color(0xFF008000),
                        Color(0xFF7FFF00),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Background heading
                          Text(
                            'Background',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(20),
                          // Background sub heading
                          Text(
                            'These are some intriguing facts about my personal details.',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '👨‍💼 Name is Deependra Bahadur R',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🎊 Born on December 20, 1999',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🌍 Lives in India(Bangalore)(GMT+5:30)',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '👨 Gender is Male (He/Him/His)',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '👨‍💻 Works in TingTing',
                                style: mediumTextStyle(context),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Goals
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 330,
                      decoration: gradientDecoration(
                        Color(0xFFFFA500),
                        Color(0xFFFFD700),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Goals',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "It's been a few years since I stepped into the tech space. Having achieved significant milestones, I`m now dedicated to following these targets.",
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(20),
                          Text(
                            '💻 Follow the Software Developer Path',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '🤖 Follow the AI Engineer Path',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '📱  Build a Tech Community',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '🎓 Pursue a Master`s Degree',
                            style: mediumTextStyle(context),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Interests
                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 330,
                      decoration: gradientDecoration(
                        Color(0xFF9400D3),
                        Color(0xFF8A2BE2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Interests heading
                          Text(
                            'Interests',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(20),
                          // Interests sub heading
                          Text(
                            'Let me tell you about the passions that define me.',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(20),
                          Text(
                            '🏏 Playing Video Games and Sports',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '🎶 Listening to Music and Podcasts',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '🛵 Love to Travel and Explore New Places',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '📚 Studying New Things and Meeting New People',
                            style: mediumTextStyle(context),
                          ),
                          verticalSpace(10),
                          Text(
                            '💽 Loves to code and build new things',
                            style: mediumTextStyle(context),
                          )
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    // Footer
                    const Footer(),
                  ],
                ),
              );
            } else {
              // Desktop View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // About Heading
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "About",
                          textStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),
                    // About Sub Heading
                    Text(
                      'Get to know my background, goals, and interests.',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    verticalSpace(30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: 500,
                          height: 320,
                          decoration: gradientDecoration(
                            Color(0xFF1E90FF),
                            Color(0xFF6A5ACD),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Introduction',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              verticalSpace(20),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Hey there! 👋 I'm a BSc Computer Science graduate with a passion for crafting tech solutions that bridge the gap between imagination and reality. With over 1.5 years of hands-on experience, I've delved into a diverse tech landscape, wielding skills in JavaScript, Node.js, MongoDB, and Postman to sculpt robust backend architectures.My journey isn't confined to backend realms alone—I groove in HTML, CSS, and Flutter, waltzing effortlessly between frontend finesse and mobile magic. Whether it's breathing life into sleek interfaces or sculpting backend fortresses, I've reveled in collaborating with both frontend maestros and backend wizards, concocting seamless software symphonies.AWS S3 and Git are my trusty sidekicks, empowering me to sculpt and deploy solutions that dance harmoniously in the cloud. Eager to explore, innovate, and continuously evolve, I thrive on pushing boundaries, coding the future, and painting pixels with purpose.Let's build, innovate, and code the world into a brighter tomorrow! ✨🚀",
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: 500,
                          height: 320,
                          decoration: gradientDecoration(
                            Color(0xFF008000),
                            Color(0xFF7FFF00),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Background',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              verticalSpace(20),
                              Text(
                                'These are some intriguing facts about my personal details.',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(20),
                              Text(
                                '👨‍💼 Name is Deependra Bahadur R',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '📆 Born on December 20, 1999',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🌏 Lives in India(Bangalore)(GMT+5:30)',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '👦🏽 Gender is Male (He/Him/His)',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '💼 Works in TingTing',
                                style: mediumTextStyle(context),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: 500,
                          height: 320,
                          decoration: gradientDecoration(
                            Color(0xFFFFA500),
                            Color(0xFFFFD700),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Goals',
                                style: largeTextStyle(context),
                              ),
                              verticalSpace(20),
                              Text(
                                'It`s been a few years since I stepped into the tech space. Having achieved significant milestones, I`m now dedicated to following these targets.',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(20),
                              Text(
                                '🤖 Follow the AI Engineer Path',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '💻 Follow the Software Developer Path',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🚩 Build a Tech Community',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🎓 Pursue a Master`s Degree',
                                style: mediumTextStyle(context),
                              )
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: 500,
                          height: 320,
                          decoration: gradientDecoration(
                            Color(0xFF9400D3),
                            Color(0xFF8A2BE2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Interests',
                                style: largeTextStyle(context),
                              ),
                              verticalSpace(20),
                              Text(
                                  'Let me tell you about the passions that define me.',
                                  style: mediumTextStyle(context)),
                              verticalSpace(20),
                              Text(
                                '🎬 Playing Video Games and Sports',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🎧 Listening to Music and Podcasts',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🛵 Love to Travel and Explore New Places',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '📚 Studying New Things and Meeting New People',
                                style: mediumTextStyle(context),
                              ),
                              verticalSpace(10),
                              Text(
                                '🎤 Loves to code and build new things',
                                style: mediumTextStyle(context),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(20),
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
