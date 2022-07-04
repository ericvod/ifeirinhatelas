import 'package:flutter/material.dart';

class CustomListViewFavorite extends StatefulWidget {
  const CustomListViewFavorite({Key? key}) : super(key: key);

  @override
  State<CustomListViewFavorite> createState() => _CustomListViewFavoriteState();
}

class _CustomListViewFavoriteState extends State<CustomListViewFavorite> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemExtent: 100.0,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) => ListTile(
            title: Text("List $index"),
            subtitle: const Text("Comida de qualidade excepcional"),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 28,
              child: Text("$index"),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  );
                });
              },
            ),
          )),
    );
  }
}
