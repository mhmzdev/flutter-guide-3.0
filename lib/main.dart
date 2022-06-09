import 'package:flutter/material.dart';
import 'package:flutter_course/app_bar/snippet.dart';
import 'package:flutter_course/state_management/dark_mode_state_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool darkMode = ref.watch(darkModeStateManagerProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Guide',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xff333333),
        backgroundColor: Colors.white,
        shadowColor: const Color(0xff333333),
        cardColor: Colors.white,

        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        primaryColor: Colors.white,
        shadowColor: Colors.white24,
        cardColor: Colors.black45,

        /* dark theme settings */
      ),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: '/main',
      routes: {
        '/main': (context) => const MaterialChild(),
        '/app-bar': (context) => const AppBarTopic(),
      },
    );
  }
}

class MaterialChild extends StatelessWidget {
  const MaterialChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Flutter Guide - 3.0',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomButton(
                child: const Text(
                  'App Bar',
                  style: kBtnText,
                ),
                onPressed: () => Navigator.pushNamed(context, '/app-bar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final void Function() onPressed;
  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 55.0,
    this.width = 250.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.white,
          border: Border.all(
            width: 1.5,
            color: Colors.blue,
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

const kBtnText = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
