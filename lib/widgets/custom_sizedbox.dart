import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSizedBox extends StatefulWidget {
  const CustomSizedBox({Key? key}) : super(key: key);

  @override
  State<CustomSizedBox> createState() => _CustomSizedBoxState();
}

class _CustomSizedBoxState extends State<CustomSizedBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                )
              ]),
          margin: const EdgeInsets.all(15),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    "https://img.freepik.com/fotos-gratis/coxinha-de-frango-tradicional-petisco-brasileiro-em-fundo-branco_519721-483.jpg?w=2000",
                  ),
                ),
              ),
              margin: const EdgeInsets.only(bottom: 5),
            ),
            Text(
              "A melhor coxinha do IF",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
