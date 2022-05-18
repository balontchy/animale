import 'package:flutter/material.dart';
import 'package:souq_animale/static_variable.dart';
import 'package:souq_animale/ui/product/product_data.dart';

import '../store/Store.dart';


class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Store(),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ProductData(),
        )
      ],
    );
  }
}
