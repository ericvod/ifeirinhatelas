import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ifeirinha_telas/widgets/custom_drawer.dart';
import 'package:ifeirinha_telas/widgets/custom_listviewfavorite.dart';
import 'package:ifeirinha_telas/widgets/custom_sizedBox.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Incial"),
        backgroundColor: const Color(0xFFFFB20F),
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  "Meus Favoritos",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: CustomSizedBox(),
              ),
              const Divider(
                color: Colors.black,
                height: 5,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 5, bottom: 15),
                child: Text(
                  "Anúncios",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ),
              const Flexible(
                child: CustomListViewFavorite(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
