import 'package:equatable/equatable.dart';

class TotalPageEntity extends Equatable {
  final int totalPage;
  const TotalPageEntity(this.totalPage);
  @override
  List<Object?> get props {
    return [totalPage];
  }
}
