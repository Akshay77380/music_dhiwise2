// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'artist_item_model.dart';

/// This class defines the variables used in the [artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel extends Equatable {
  ArtistsModel({this.artistItemList = const []}) {}

  List<ArtistItemModel> artistItemList;

  ArtistsModel copyWith({List<ArtistItemModel>? artistItemList}) {
    return ArtistsModel(
      artistItemList: artistItemList ?? this.artistItemList,
    );
  }

  @override
  List<Object?> get props => [artistItemList];
}
