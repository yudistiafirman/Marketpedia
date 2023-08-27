import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/floating_action_button/floating_action_button.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/features/cart/presentation/widgets/billing_information/billing_information.dart';
import 'package:marketpedia/features/cart/presentation/widgets/cart_list/cart_list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          CartList(),
          SizedBox(height: 12),
          BillingInformation(),
          SizedBox(height: 12),
          CommonFloatingActionButton()
        ]),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Shopping Cart',
        style: headline_1,
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.chevron_left_outlined,
          size: appbarIconSize,
        ),
      ),
    );
  }
}
