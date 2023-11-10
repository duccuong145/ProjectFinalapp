import 'package:flutter/material.dart';
import 'package:project_final/config/widget/size_config.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return const ListTile(
              leading: Image(
                image: NetworkImage(
                    'https://tse3.mm.bing.net/th?id=OIP.TUsA1SAY9tmi-zkFAt4JVAHaE6&pid=Api&P=0&h=220'),
                fit: BoxFit.contain,
              ),
              title: Text('Fresh Tomatoes'),
              subtitle: Text('\$5'),
              trailing: Icon(Icons.shopping_cart_checkout_outlined),
            );
          }),
          separatorBuilder: ((context, index) {
            return Divider(
              height: getHeight(context, height: 0.05),
            );
          }),
          itemCount: 10),
    );
  }
}
