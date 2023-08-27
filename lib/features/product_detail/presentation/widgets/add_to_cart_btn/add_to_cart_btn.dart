import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/floating_action_button/floating_action_button.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class AddToCartBtn extends StatefulWidget {
  const AddToCartBtn({super.key});

  @override
  State<AddToCartBtn> createState() => _AddToCartBtnState();
}

class _AddToCartBtnState extends State<AddToCartBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 48,
          decoration: BoxDecoration(
              color: grey400,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: const Center(
            child: Icon(
              Icons.shopping_bag_outlined,
              color: darkBg,
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(child: CommonFloatingActionButton())
      ],
    );
  }
}
