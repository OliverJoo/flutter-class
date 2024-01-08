import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'add_edit_note_event.freezed.dart';

@freezed
sealed class AddEditNoteEvent<T> with _$AddEditNoteEvent<T> {
  const factory AddEditNoteEvent.changeColor(int color) = ChangeColor;
  const factory AddEditNoteEvent.saveNote(int? id, String title, String content) = SaveNote;
}