import 'package:cafe_flutter/models/coffe_shop.dart';
import 'package:cafe_flutter/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "Qual café vem a sua mente hoje?",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.coffeShop.length,
              itemBuilder: (context, index) {
                Coffe eachCoffe = value.coffeShop[index];
                return ListTile(
                  title: Text(eachCoffe.name),
                );
              },
            ))
          ],
        ),
      )),
    );
  }
}
