import 'package:aplikasi_provider/screen/makanan_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_provider/provider/all_makanan.dart';

class MakananScreen extends StatelessWidget {
  const MakananScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataMakanans = Provider.of<Makanans>(context).allMakanas;

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: ListView.builder(
        itemCount: dataMakanans.length,
        itemBuilder: (context, index) {
          final makanan = dataMakanans[index];
          return ChangeNotifierProvider.value(
            value: makanan,
            child: MakananItem());
        },
      ),
    );
  }
}
