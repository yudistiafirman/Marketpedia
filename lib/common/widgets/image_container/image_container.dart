import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketpedia/config/theme/app_theme_constant.dart';

class ImageContainer extends StatelessWidget {
  final String? imageUrl;
  const ImageContainer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imageUrl!,
        imageBuilder: (context, imageProvider) => ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.08),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover)),
              ),
            ),
        progressIndicatorBuilder: (context, url, downloadProgress) => ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.08),
                ),
                child: const CupertinoActivityIndicator(),
              ),
            ),
        errorWidget: (context, url, error) => ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.08),
                ),
                child: const Icon(Icons.error),
              ),
            ));
  }
}
