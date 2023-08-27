import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          Expanded(flex: 2, child: CartList()),
          SizedBox(height: 12),
          BillingInformation(),
          SizedBox(height: 12),
          CommonFloatingActionButton(),
          SizedBox(height: 24),
        ]),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text(
        'Shopping Cart',
        style: commonHeadline,
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => GoRouter.of(context).go('/'),
        child: const Icon(
          Icons.chevron_left_outlined,
          size: appbarIconSize,
        ),
      ),
    );
  }
}
