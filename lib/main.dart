import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_flutter/src/container/all_video.dart';
import 'package:my_flutter/src/container/my_favorite.dart';
import 'package:my_flutter/src/container/recent_play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {  },
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const MyHomePage(),
      ),
    );
    // return MaterialApp(
    //   title: 'Named Routes Demo',
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => AllVideo(),
    //     '/my_favorite': (context) => MyFavorite(),
    //     '/recent_play': (context) => RecentPlay(),
    //   },
    // );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const AllVideo();
        break;
      case 1:
        page = const MyFavorite();
        break;
      case 2:
        page = const RecentPlay();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  backgroundColor: Colors.green[300],
                  extended: constraints.maxWidth >= 600,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('AllVideo'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('MyFavorite'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.looks),
                      label: Text('MyFavorite'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

