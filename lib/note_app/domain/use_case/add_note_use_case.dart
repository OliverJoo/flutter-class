import 'package:flutter_class/note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class AddNoteUseCase{
  final NoteRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(Note note) async{
    await repository.insertNote(note);
  }
}