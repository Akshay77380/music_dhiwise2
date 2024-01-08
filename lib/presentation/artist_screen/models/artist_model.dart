// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'renaissance_item_model.dart';

/// This class defines the variables used in the [artist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistModel extends Equatable {
  ArtistModel({this.renaissanceItemList = const []}) {}

  List<RenaissanceItemModel> renaissanceItemList;

  ArtistModel copyWith({List<RenaissanceItemModel>? renaissanceItemList}) {
    return ArtistModel(
      renaissanceItemList: renaissanceItemList ?? this.renaissanceItemList,
    );
  }

  @override
  List<Object?> get props => [renaissanceItemList];
}
