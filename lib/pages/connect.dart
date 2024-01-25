import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/bloc/form/form_bloc.dart';

import 'package:personalportfolio/pages/footer.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:personalportfolio/widgets/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Connect extends StatefulWidget {
  const Connect({super.key});

  @override
  State<Connect> createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  bool _validate = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              // Mobile View
              return BlocListener<FormBloc, MessageFormState>(
                listener: (context, state) {
                  if (state.isLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.limeAccent,
                          ),
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: Text(
                            'Thank You! ❤️',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                    Future.delayed(
                      const Duration(seconds: 2),
                      () {
                        Navigator.of(context).pop();
                      },
                    );
                  }
                },
                child: Padding(
                  padding: paddingSymmetricSpace(20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Connect heading
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Connect",
                            textStyle: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .5,
                            ),
                          ),
                        ],
                      ),

                      verticalSpace(20),

                      // Connect description
                      Text(
                        'Connect with me through social media and other communication channels.',
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      verticalSpace(30),

                      // Form heading
                      Text(
                        'Feel free to contact me for any queries.',
                        style: GoogleFonts.montserrat(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18),
                      ),

                      verticalSpace(20),

                      // Name field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText: _validate ? "Name Can't Be Empty" : null,
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Email field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: emailController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText: _validate ? "Email Can't Be Empty" : null,
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Subject field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: subjectController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText:
                              _validate ? "Subject Can't Be Empty" : null,
                          hintText: 'Subject',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Message field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: messageController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText:
                              _validate ? "Message Can't Be Empty" : null,
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Send message button
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            _validate = nameController.text.isEmpty;
                            _validate = emailController.text.isEmpty;
                            _validate = subjectController.text.isEmpty;
                            _validate = messageController.text.isEmpty;
                          });

                          context.read<FormBloc>().add(
                                FormSubmit(
                                  name: nameController.text,
                                  email: emailController.text,
                                  subject: subjectController.text,
                                  message: messageController.text,
                                ),
                              );

                          nameController.clear();
                          emailController.clear();
                          subjectController.clear();
                          messageController.clear();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 45,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Send Message',
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(20),

                      // Email and Facebook
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                const url =
                                    'mailto:deependrabahadurr@gmail.com';
                                if (await launchUrl(Uri.tryParse(url)!)) {
                                  await launchUrl(Uri.tryParse(url)!);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                padding: paddingSymmetricSpace(5, 5),
                                width: 220,
                                height: 110,
                                decoration: gradientDecoration(
                                  const Color(0xFF00ACC1),
                                  const Color(0xFF00ACC1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      size: 30,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    verticalSpace(10),
                                    Text(
                                      'Email',
                                      style: GoogleFonts.montserrat(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'deependrabahadurr@gmail.com',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          horizontalSpace(5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                const url =
                                    'https://www.facebook.com/deependra.deepi.1';
                                if (await launchUrl(Uri.tryParse(url)!)) {
                                  await launchUrl(Uri.tryParse(url)!);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                padding: paddingSymmetricSpace(5, 5),
                                width: 220,
                                height: 110,
                                decoration: gradientDecoration(
                                  const Color(0xFF00ACC1),
                                  const Color(0xFF00ACC1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 24,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'Facebook',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'Deependra Thapa',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      verticalSpace(20),

                      // LinkedIn and Github
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                const url =
                                    'https://in.linkedin.com/in/deependra-bahadur-r-b69904221';
                                if (await launchUrl(Uri.tryParse(url)!)) {
                                  await launchUrl(Uri.tryParse(url)!);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                width: 220,
                                height: 110,
                                padding: paddingSymmetricSpace(5, 5),
                                decoration: gradientDecoration(
                                  const Color(0xFF00ACC1),
                                  const Color(0xFF00ACC1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      size: 24,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'LinkedIn',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'Deependra Thapa',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          horizontalSpace(5),
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                const url = 'https://github.com/deependraDDev';
                                if (await launchUrl(Uri.tryParse(url)!)) {
                                  await launchUrl(Uri.tryParse(url)!);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                width: 220,
                                height: 110,
                                padding: paddingSymmetricSpace(5, 5),
                                decoration: gradientDecoration(
                                  const Color(0xFF00ACC1),
                                  const Color(0xFF00ACC1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.github,
                                      size: 24,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'Github',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    verticalSpace(10),
                                    FittedBox(
                                      child: Text(
                                        'Deependra Thapa',
                                        style: GoogleFonts.montserrat(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      verticalSpace(10),
                      const Footer(),
                    ],
                  ),
                ),
              );
            } else if (constraints.maxWidth < 1100) {
              // Tablet View
              return BlocListener<FormBloc, MessageFormState>(
                listener: (context, state) {
                  if (state.isLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.limeAccent,
                          ),
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: Text(
                            'Thank You! ❤️',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                    Future.delayed(
                      const Duration(seconds: 2),
                      () {
                        Navigator.of(context).pop();
                      },
                    );
                  }
                },
                child: Padding(
                  padding: paddingSymmetricSpace(20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Connect heading
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Connect",
                            textStyle: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      verticalSpace(20),

                      // Connect description
                      Text(
                        'Connect with me through social media and other communication channels.',
                        style: GoogleFonts.montserrat(
                           color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      verticalSpace(30),

                      // Form heading
                      Text(
                        'Feel free to contact me for any queries.',
                        style: GoogleFonts.montserrat(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18),
                      ),

                      verticalSpace(20),

                      // Name field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText: _validate ? "Name Can't Be Empty" : null,
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(10),

                      // Email field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: emailController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText: _validate ? "Email Can't Be Empty" : null,
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(10),

                      // Subject field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: subjectController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText:
                              _validate ? "Subject Can't Be Empty" : null,
                          hintText: 'Subject',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Message field
                      TextField(
                        keyboardType: TextInputType.name,
                        controller: messageController,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        decoration: InputDecoration(
                          errorText:
                              _validate ? "Message Can't Be Empty" : null,
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(10),

                      // Send message button
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            _validate = nameController.text.isEmpty;
                            _validate = emailController.text.isEmpty;
                            _validate = subjectController.text.isEmpty;
                            _validate = messageController.text.isEmpty;
                          });

                          context.read<FormBloc>().add(
                                FormSubmit(
                                  name: nameController.text,
                                  email: emailController.text,
                                  subject: subjectController.text,
                                  message: messageController.text,
                                ),
                              );

                          nameController.clear();
                          emailController.clear();
                          subjectController.clear();
                          messageController.clear();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Send Message',
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),

                      verticalSpace(20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              const url = 'mailto:deependrabahadurr@gmail.com';
                              if (await launchUrl(Uri.tryParse(url)!)) {
                                await launchUrl(Uri.tryParse(url)!);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 110,
                              padding: paddingSymmetricSpace(5, 5),
                              decoration: gradientDecoration(
                                  const Color(0xFF304FFE), // Dark Blue
                                  const Color(0xFF00BCD4) // Cyan-Blue
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mail,
                                    size: 30,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Email',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'deependrabahadurr@gmail.com',
                                    maxLines: 1,
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          horizontalSpace(20),
                          GestureDetector(
                            onTap: () async {
                              const url =
                                  'https://www.facebook.com/deependra.deepi.1';
                              if (await launchUrl(Uri.tryParse(url)!)) {
                                await launchUrl(Uri.tryParse(url)!);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 110,
                              padding: paddingSymmetricSpace(5, 5),
                              decoration: gradientDecoration(
                                  const Color(0xFF304FFE), // Dark Blue
                                  const Color(0xFF00BCD4) // Cyan-Blue
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Facebook',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Deependra Thapa',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              const url =
                                  'https://in.linkedin.com/in/deependra-bahadur-r-b69904221';
                              if (await launchUrl(Uri.tryParse(url)!)) {
                                await launchUrl(Uri.tryParse(url)!);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 110,
                              padding: paddingSymmetricSpace(5, 5),
                              decoration: gradientDecoration(
                                  const Color(0xFF304FFE), // Dark Blue
                                  const Color(0xFF00BCD4) // Cyan-Blue
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    size: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'LinkedIn',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Deependra Thapa',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          horizontalSpace(20),
                          GestureDetector(
                            onTap: () async {
                              const url = 'https://github.com/deependraDDev';
                              if (await launchUrl(Uri.tryParse(url)!)) {
                                await launchUrl(Uri.tryParse(url)!);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              height: 110,
                              padding: paddingSymmetricSpace(5, 5),
                              decoration: gradientDecoration(
                                  const Color(0xFF304FFE), // Dark Blue
                                  const Color(0xFF00BCD4) // Cyan-Blue
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.github,
                                    size: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Github',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  verticalSpace(10),
                                  Text(
                                    'Deependra Thapa',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      verticalSpace(15),
                      const Footer(),
                    ],
                  ),
                ),
              );
            } else {
              // Desktop View
              return BlocListener<FormBloc, MessageFormState>(
                listener: (context, state) {
                  if (state.isLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.limeAccent,
                          ),
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: Text(
                            'Thank You! ❤️',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                    Future.delayed(
                      const Duration(seconds: 2),
                      () {
                        Navigator.of(context).pop();
                      },
                    );
                  }
                },
                child: Padding(
                  padding: paddingSymmetricSpace(20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Connect heading
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Connect",
                            textStyle: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      verticalSpace(20),

                      // Connect description
                      Text(
                        'Connect with me through social media and other communication channels.',
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      verticalSpace(30),

                      // ROW
                      Row(
                        children: [
                          // Form
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Form heading
                                Text(
                                  'Feel free to contact me for any queries.',
                                  style: GoogleFonts.montserrat(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),

                                verticalSpace(10),

                                // Name field
                                TextField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  decoration: InputDecoration(
                                    errorText: _validate
                                        ? "Name Can't Be Empty"
                                        : null,
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: 'Enter Your Name',
                                    hintStyle: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                verticalSpace(10),

                                // Email field
                                TextField(
                                  keyboardType: TextInputType.name,
                                  controller: emailController,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  decoration: InputDecoration(
                                    errorText: _validate
                                        ? "Email Can't Be Empty"
                                        : null,
                                    hintText: 'Enter Your Email',
                                    hintStyle: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                verticalSpace(10),
// Subject field
                                TextField(
                                  keyboardType: TextInputType.name,
                                  controller: subjectController,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  decoration: InputDecoration(
                                    errorText: _validate
                                        ? "Subject Can't Be Empty"
                                        : null,
                                    hintText: 'Subject',
                                    hintStyle: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                verticalSpace(10),
// Message field
                                TextField(
                                  keyboardType: TextInputType.name,
                                  controller: messageController,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  decoration: InputDecoration(
                                    errorText: _validate
                                        ? "Message Can't Be Empty"
                                        : null,
                                    hintText: 'Say Hi!',
                                    hintStyle: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                verticalSpace(10),
// Send message button
                                TextButton(
                                  onPressed: () async {
                                    setState(() {
                                      _validate = nameController.text.isEmpty;
                                      _validate = emailController.text.isEmpty;
                                      _validate =
                                          subjectController.text.isEmpty;
                                      _validate =
                                          messageController.text.isEmpty;
                                    });

                                    context.read<FormBloc>().add(
                                          FormSubmit(
                                            name: nameController.text,
                                            email: emailController.text,
                                            subject: subjectController.text,
                                            message: messageController.text,
                                          ),
                                        );

                                    nameController.clear();
                                    emailController.clear();
                                    subjectController.clear();
                                    messageController.clear();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.orange),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                    ),
                                  ),
                                  child: Text(
                                    'Send Message',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          horizontalSpace(20),
                          Column(
                            children: [
                              Row(
                                children: [
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
                                    child: Container(
                                      width: 250,
                                      height: 140,
                                      padding: paddingSymmetricSpace(5, 5),
                                      decoration: gradientDecoration(
                                          const Color(
                                              0xFFFFD600), // Dark Yellow
                                          const Color(0xFFFFEA00) // Yellow
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.mail,
                                            size: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          verticalSpace(10),
                                          Text(
                                            'Email',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          verticalSpace(10),
                                          FittedBox(
                                            child: Text(
                                              'deependrabahadurr@gmail.com',
                                              style: GoogleFonts.montserrat(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(20),
                                  GestureDetector(
                                    onTap: () async {
                                      const url =
                                          'https://www.facebook.com/deependra.deepi.1';
                                      if (await launchUrl(Uri.tryParse(url)!)) {
                                        await launchUrl(Uri.tryParse(url)!);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 140,
                                      padding: paddingSymmetricSpace(5, 5),
                                      decoration: gradientDecoration(
                                          const Color(
                                              0xFFFFD600), // Dark Yellow
                                          const Color(0xFFFFEA00) // Yellow
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.facebook,
                                            size: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          verticalSpace(10),
                                          Text(
                                            'Facebook',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          verticalSpace(10),
                                          Text(
                                            'Deependra Thapa',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              verticalSpace(20),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      const url =
                                          'https://in.linkedin.com/in/deependra-bahadur-r-b69904221';
                                      if (await launchUrl(Uri.tryParse(url)!)) {
                                        await launchUrl(Uri.tryParse(url)!);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 140,
                                      padding: paddingSymmetricSpace(5, 5),
                                      decoration: gradientDecoration(
                                          const Color(
                                              0xFFFFD600), // Dark Yellow
                                          const Color(0xFFFFEA00) // Yellow
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.linkedin,
                                            size: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          verticalSpace(10),
                                          Text(
                                            'LinkedIn',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          verticalSpace(10),
                                          Text(
                                            'Deependra Thapa',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(20),
                                  GestureDetector(
                                    onTap: () async {
                                      const url =
                                          'https://github.com/deependraDDev';
                                      if (await launchUrl(Uri.tryParse(url)!)) {
                                        await launchUrl(Uri.tryParse(url)!);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Container(
                                      width: 250,
                                      height: 140,
                                      padding: paddingSymmetricSpace(5, 5),
                                      decoration: gradientDecoration(
                                          const Color(
                                              0xFFFFD600), // Dark Yellow
                                          const Color(0xFFFFEA00) // Yellow
                                          ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.github,
                                            size: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                          verticalSpace(20),
                                          Text(
                                            'Github',
                                            style: GoogleFonts.montserrat(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          verticalSpace(20),
                                          Text(
                                            'Deependra Thapa',
                                            style: GoogleFonts.montserrat(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      verticalSpace(15),
                      const Footer(),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
