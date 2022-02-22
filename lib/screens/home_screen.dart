import 'dart:ffi';

import 'package:app_movies/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppMovies"),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Column(
        children: [
          //TODO: tarjetas grandes :v
          const CardSwiper(),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.red,
          )

          //TODO: tarjetas pequeñas horizontales xd
        ],
      ),
    );
  }
}
