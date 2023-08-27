import 'package:flutter/material.dart';
import 'package:marketpedia/common/widgets/dash_painter/dash_painter.dart';
import 'package:marketpedia/config/theme/app_text.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';
import 'package:marketpedia/config/theme/colors.dart';

class BillingInformation extends StatelessWidget {
  const BillingInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: grey200, borderRadius: BorderRadius.circular(borderRadius)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Billing Information',
              style: boldBodyText,
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Total',
                  style: boldBodyText,
                ),
                Text(
                  'Rp.248',
                  style: boldBodyText,
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: boldBodyText,
                ),
                Text(
                  'Rp.248',
                  style: boldBodyText,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 80,
                child: CustomPaint(
                  painter: DashedLinePainter(
                      color: darkBg,
                      strokeWidth: 2,
                      dashLength: 6,
                      dashSpace: 6),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: boldBodyText,
                ),
                Text(
                  'Rp.248',
                  style: boldBodyText,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
