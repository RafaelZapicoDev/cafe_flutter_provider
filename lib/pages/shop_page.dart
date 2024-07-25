import 'package:cafe_flutter/models/coffe_shop.dart';
import 'package:cafe_flutter/models/coffee.dart';
import 'package:cafe_flutter/widgets/coffe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  ///
  void addToCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffe);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Item adicionado ao carrinho !'),
            ));
  }

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
                return CoffeTile(
                  icon: const Icon(Icons.add),
                  coffe: eachCoffe,
                  onPressed: () => addToCart(eachCoffe),
                );
              },
            ))
          ],
        ),
      )),
    );
  }
}
