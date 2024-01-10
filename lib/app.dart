// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personalportfolio/bloc/form/form_bloc.dart';
import 'package:personalportfolio/bloc/theme/theme_bloc.dart';
import 'package:personalportfolio/pages/about.dart';
import 'package:personalportfolio/pages/connect.dart';
import 'package:personalportfolio/pages/education.dart';
import 'package:personalportfolio/pages/experience.dart';
import 'package:personalportfolio/pages/home.dart';
import 'package:personalportfolio/theme/dark_mode.dart';
import 'package:personalportfolio/theme/light_mode.dart';
import 'package:personalportfolio/widgets/buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personalportfolio/widgets/spaces.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FormBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, mode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio',
            theme: ThemeData(
              colorScheme: lightTheme.colorScheme,
              brightness: Brightness.light,
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              colorScheme: darkTheme.colorScheme,
              useMaterial3: true,
            ),
            themeMode: mode,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget page = const Home();

  var pgStr = "Home";
  Color about_color = Colors.white38;
  Color education_color = Colors.white38;
  Color experience_color = Colors.white38;
  Color connect_color = Colors.white38;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 6)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            pgStr == "Home") {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: Lottie.asset(
                  'assets/lotties/developer.json',
                  animate: true,
                ),
              ),
            ),
          );
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 500) {
                // Mobile View
                return Scaffold(
                  drawer: Drawer(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    child: ListView(
                      children: [
                        DrawerHeader(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.background,
                          ),
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(seconds: 2),
                          child: UserAccountsDrawerHeader(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Colors.orange,
                                  Colors.black,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            accountName: Text(
                              "DeependraDDev",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            accountEmail: Text(
                              "deependrabahadurr@gmail.com",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            currentAccountPictureSize:
                                const Size.fromRadius(25),
                            currentAccountPicture: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'data:image/png;base64,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',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.user,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' About ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              about_color = Colors.white;
                              education_color = Colors.white38;
                              experience_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const About();
                              pgStr = "About";
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.graduationCap,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Education ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              education_color = Colors.white;
                              about_color = Colors.white38;
                              experience_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const Education();
                              pgStr = "Education";
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.briefcase,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Experience ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              experience_color = Colors.white;
                              about_color = Colors.white38;
                              education_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const Experience();
                              pgStr = "Experience";
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.addressCard,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Connect ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              connect_color = Colors.white;
                              about_color = Colors.white38;
                              education_color = Colors.white38;
                              experience_color = Colors.white38;
                              page = const Connect();
                              pgStr = "Connect";
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  appBar: PreferredSize(
                    preferredSize: const Size(double.infinity, 65),
                    child: AppBar(
                      elevation: 0,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      leading: Builder(
                        builder: (context) => IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: const Size(double.infinity, 1),
                        child: Container(
                          color: Theme.of(context).colorScheme.primary,
                          height: 0.3,
                        ),
                      ),
                      actions: constraints.maxWidth < 210
                          ? []
                          : [
                              iconButtonWithNav(
                                  "https://github.com/deependraDDev",
                                  FontAwesomeIcons.github,
                                  context),
                              horizontalSpace(10),
                              iconButtonWithNav(
                                  "https://in.linkedin.com/in/deependra-bahadur-r-b69904221",
                                  FontAwesomeIcons.linkedin,
                                  context),
                              horizontalSpace(10),
                              IconButton(
                                icon: const Icon(Icons.brightness_4),
                                onPressed: () {
                                  context
                                      .read<ThemeBloc>()
                                      .add(const ToggleTheme());
                                },
                              ),
                            ],
                    ),
                  ),
                  body: Container(
                    color: Theme.of(context).colorScheme.background,
                    child: page,
                  ),
                );
              } else if (constraints.maxWidth < 1100) {
                // Tablet View
                return Scaffold(
                  drawer: Drawer(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    child: ListView(
                      children: [
                        DrawerHeader(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.black,
                              ],
                            ),
                          ),
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(seconds: 2),
                          child: UserAccountsDrawerHeader(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            accountName: Text(
                              "DeependraDDev",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            accountEmail: Text(
                              "deependrabahadurr@gmail.com",
                              style: GoogleFonts.montserrat(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            currentAccountPictureSize:
                                const Size.fromRadius(25),
                            currentAccountPicture: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'data:image/png;base64,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',
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.user,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' About ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              about_color = Colors.white;
                              education_color = Colors.white38;
                              experience_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const About();
                              pgStr = 'About';
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.graduationCap,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Education ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              education_color = Colors.white;
                              about_color = Colors.white38;
                              experience_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const Education();
                              pgStr = 'Education';
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.briefcase,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Experience ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              experience_color = Colors.white;
                              about_color = Colors.white38;
                              education_color = Colors.white38;
                              connect_color = Colors.white38;
                              page = const Experience();
                              pgStr = 'Experience';
                            });
                          },
                        ),
                        ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.addressCard,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            ' Connect ',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            setState(() {
                              connect_color = Colors.white;
                              about_color = Colors.white38;
                              education_color = Colors.white38;
                              experience_color = Colors.white38;
                              page = const Connect();
                              pgStr = 'Connect';
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  appBar: PreferredSize(
                    preferredSize: const Size(double.infinity, 65),
                    child: AppBar(
                      leading: Builder(
                        builder: (context) => IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                      bottom: PreferredSize(
                        preferredSize: const Size(double.infinity, 1),
                        child: Container(
                          color: Theme.of(context).colorScheme.primary,
                          height: 0.3,
                        ),
                      ),
                      actions: [
                        iconButtonWithNav(
                          "https://github.com/deependraDDev",
                          FontAwesomeIcons.github,
                          context,
                        ),
                        iconButtonWithNav(
                          "https://in.linkedin.com/in/deependra-bahadur-r-b69904221",
                          FontAwesomeIcons.linkedin,
                          context,
                        ),
                        IconButton(
                          icon: const Icon(Icons.brightness_4),
                          onPressed: () {
                            context.read<ThemeBloc>().add(const ToggleTheme());
                          },
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    color: Theme.of(context).colorScheme.background,
                    child: page,
                  ),
                );
              } else {
                // Desktop
                return Scaffold(
                  appBar: PreferredSize(
                    preferredSize: const Size(double.infinity, 65),
                    child: AppBar(
                      // App Bar Bottom Underline
                      bottom: PreferredSize(
                        preferredSize: const Size(double.infinity, .3),
                        child: Container(
                          color: Theme.of(context).colorScheme.primary,
                          height: 0.3,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // App Bar title
                          Text(
                            'DeependraDDev',
                            style: GoogleFonts.montserrat(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Wrap(
                            children: [
                              // About btn
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    about_color = Colors.white;
                                    education_color = Colors.white38;
                                    experience_color = Colors.white38;
                                    connect_color = Colors.white38;
                                    page = const About();
                                    pgStr = 'About';
                                  });
                                },
                                child: Text(
                                  'About',
                                  style: GoogleFonts.montserrat(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Education btn
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    education_color = Colors.white;
                                    about_color = Colors.white38;
                                    experience_color = Colors.white38;
                                    connect_color = Colors.white38;
                                    page = const Education();
                                    pgStr = 'Education';
                                  });
                                },
                                child: Text(
                                  'Education',
                                  style: GoogleFonts.montserrat(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Experience btn
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    experience_color = Colors.white;
                                    about_color = Colors.white38;
                                    education_color = Colors.white38;
                                    connect_color = Colors.white38;
                                    page = const Experience();
                                    pgStr = 'Experience';
                                  });
                                },
                                child: Text(
                                  'Experience',
                                  style: GoogleFonts.montserrat(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              // Connect btn
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    connect_color = Colors.white;
                                    about_color = Colors.white38;
                                    education_color = Colors.white38;
                                    experience_color = Colors.white38;
                                    page = const Connect();
                                    pgStr = 'Connect';
                                  });
                                },
                                child: Text(
                                  'Connect',
                                  style: GoogleFonts.montserrat(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              iconButtonWithNav(
                                "https://github.com/deependraDDev",
                                FontAwesomeIcons.github,
                                context,
                              ),
                              horizontalSpace(10),
                              iconButtonWithNav(
                                "https://in.linkedin.com/in/deependra-bahadur-r-b69904221",
                                FontAwesomeIcons.linkedin,
                                context,
                              ),
                              horizontalSpace(10),
                              IconButton(
                                icon: const Icon(Icons.brightness_4),
                                onPressed: () {
                                  context
                                      .read<ThemeBloc>()
                                      .add(const ToggleTheme());
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: Container(
                    color: Theme.of(context).colorScheme.background,
                    child: page,
                  ),
                );
              }
            },
          );
        }
      },
    );
  }
}
