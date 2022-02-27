import 'package:app_movies/providers/movies_provider.dart';
import 'package:app_movies/screens/screens.dart';
import 'package:app_movies/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  //Providers
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MoviesProvider(),lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: '/home',
      routes: {
        "/home": (_) => const HomeScreen(),
        "/details": (_) => const DetailsScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
