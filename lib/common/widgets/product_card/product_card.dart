import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/image_container/image_container.dart';
import 'package:marketpedia/common/widgets/operation_button/operation_button.dart';
import 'package:marketpedia/common/widgets/rating_button/rating_button.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class ProductCard extends StatelessWidget {
  final bool isCart;
  final Function()? onAddToCart;
  final Function()? onAddQuantity;
  final Function()? onRemoveQuantity;

  const ProductCard(
      {super.key,
      required this.isCart,
      this.onAddToCart,
      this.onAddQuantity,
      this.onRemoveQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: grey200,
      child: SizedBox(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(borderRadius)),
                child: const ImageContainer(
                    imageUrl:
                        'https://images.unsplash.com/photo-1546502208-81d149d52bd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2946&q=80'),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cooper Mount Bike',
                        style: bodyText_1,
                      ),
                      isCart
                          ? OperationButton(
                              icons: Icons.add,
                              onPressOperationButton: onAddQuantity ?? () {},
                              bgColor: darkBg,
                              iconColor: white,
                            )
                          : GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.favorite,
                                color: darkBg,
                              ))
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('234', style: boldBodyText),
                      isCart
                          ? const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '1',
                                style: boldBodyText,
                              ),
                            )
                          : Container()
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: isCart
                        ? _buildWithSizeAndColorFooter()
                        : _buildWithRatingFooter(),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  _buildWithRatingFooter() {
    return <Widget>[
      const RatingButton(),
      OperationButton(
          icons: Icons.add, onPressOperationButton: onAddToCart ?? () {})
    ];
  }

  _buildWithSizeAndColorFooter() {
    return <Widget>[
      const Text(
        'Size : L',
        style: boldBodyText_2,
      ),
      Row(
        children: [
          const Text('Color : '),
          Container(
            width: 20,
            height: 20,
            color: Colors.lightBlue,
          ),
          const SizedBox(width: 36),
          OperationButton(
            icons: Icons.remove,
            onPressOperationButton: onRemoveQuantity ?? () {},
          )
        ],
      )
    ];
  }
}
