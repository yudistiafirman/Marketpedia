import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/colors.dart';

class CommonFloatingActionButton extends StatelessWidget {
  const CommonFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Set border radius
          ),
          backgroundColor: lightRed),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(
              Icons.shopping_cart_checkout_outlined,
              color: success,
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Checkout',
                      style: successLightText,
                    )))
          ],
        ),
      ),
    );
  }
}
