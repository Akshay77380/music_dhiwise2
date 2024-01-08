import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/list_item_model.dart';
import 'package:music_with_dhiwise/presentation/list_screen/models/list_model.dart';
part 'list_event.dart';
part 'list_state.dart';

/// A bloc that manages the state of a List according to the event that is dispatched to it.
class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc(ListState initialState) : super(initialState) {
    on<ListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListInitialEvent event,
    Emitter<ListState> emit,
  ) async {
    emit(state.copyWith(
        listModelObj:
            state.listModelObj?.copyWith(listItemList: fillListItemList())));
  }

  List<ListItemModel> fillListItemList() {
    return [
      ListItemModel(
          songNumber: "1",
          burning: "Burning",
          podvalCaplella: "Podval Caplella"),
      ListItemModel(
          songNumber: "2", burning: "Flashbacks", podvalCaplella: "Emika"),
      ListItemModel(
          songNumber: "3",
          burning: "Renaissance",
          podvalCaplella: "Podval Caplella")
    ];
  }
}
