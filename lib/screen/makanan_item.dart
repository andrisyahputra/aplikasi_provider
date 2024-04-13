import 'package:aplikasi_provider/provider/makanan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MakananItem extends StatelessWidget {
  MakananItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // jika listen false maka tidak bisa render ulang
    final makanan = Provider.of<Makanan>(context, listen: false);
    // jika pakai Consumer tidak bisa kasih listen karena listen defuald true
    // jika pakai Consumer dirender semua tidak hanya icon akan banyak load memory
    // maka yg berubah di bunkus consumer hany yg bisa di render saja
    return ListTile(
        trailing: Consumer<Makanan>(
          builder: (context, makanan, child) =>  IconButton(
            onPressed: () {
              makanan.toggleFavorite();
            },
            icon: makanan.isFavorite
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(Icons.favorite_outline, color: Colors.red)),
        ),
        title: Text(makanan.title),
        subtitle: Text("${makanan.duration} Menit"),
        leading: CircleAvatar(
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(makanan.imageUrl), fit: BoxFit.cover)),
          ),
        ),
      );
  }
}
