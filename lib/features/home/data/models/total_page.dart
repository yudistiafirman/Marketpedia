import 'package:marketpedia/features/home/domain/entities/total_page.dart';

class TotalPageModel extends TotalPageEntity {
  const TotalPageModel({int? totalPage}) : super(totalPage);
  factory TotalPageModel.fromJson(Map<String, dynamic> json) {
    return TotalPageModel(
      totalPage: json['totalPage'] ?? '',
    );
  }
}
