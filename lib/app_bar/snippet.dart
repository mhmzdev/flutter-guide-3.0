import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Guide',
      home: AppBarTopic(),
    );
  }
}

class AppBarTopic extends StatelessWidget {
  const AppBarTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          top: BorderSide(
            color: Colors.green,
            width: 3,
          ),
        ),
        backgroundColor: Theme.of(context).cardColor,
        centerTitle: false,
        titleSpacing: 0,
        shadowColor: Theme.of(context).shadowColor,
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.black
              : Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.network(
                        'https://dartpad.dev/workshops.html?webserver=https://raw.githubusercontent.com/mhmzdev/flutter-guide-3.0/main/lib/images/logo.png',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    "Accelerated Learning",
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PopupMenuButton<String>(
                      child: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).primaryColor,
                      ),
                      onSelected: (String value) {},
                      itemBuilder: (BuildContext context) {
                        return {
                          Theme.of(context).brightness == Brightness.light
                              ? 'Dark mode'
                              : 'Light mode',
                          'Impressum'
                        }.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text('App Bar'),
      ),
    );
  }
}
