import 'package:flutter/material.dart';
import 'package:ifeirinha_telas/widgets/custom_listviewfavorite.dart';

class TelaMeusFavoritos extends StatefulWidget {
  TelaMeusFavoritos({Key? key}) : super(key: key);

  @override
  State<TelaMeusFavoritos> createState() => _TelaMeusFavoritosState();
}

class _TelaMeusFavoritosState extends State<TelaMeusFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Favoritos"),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [CustomListViewFavorite()],
          ),
        ),
      ),
    );
  }
}
