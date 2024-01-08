import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'add_edit_note_ui_event.freezed.dart';

@freezed
sealed class AddEditNoteUiEvent<T> with _$AddEditNoteUiEvent<T> {
  const factory AddEditNoteUiEvent.saveNote() = SaveNote;
  const factory AddEditNoteUiEvent.showSnackBar(String message) = ShowSnackBar;
}
