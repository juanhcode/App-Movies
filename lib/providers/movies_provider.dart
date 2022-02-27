import 'package:flutter/material.dart';
class MoviesProvider extends ChangeNotifier{
  MoviesProvider() {
    print('MoviesProvider Inicializado');
    getOnDisplayingMovies();
  }

  getOnDisplayingMovies() {
    print('Get on display movies');
  }
}
