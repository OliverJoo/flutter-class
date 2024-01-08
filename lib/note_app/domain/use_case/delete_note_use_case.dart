import 'package:flutter_class/note_app/domain/repository/note_repository.dart';

import '../model/note.dart';

class DeleteNoteUseCase {
  final NoteRepository repository;

  DeleteNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.deleteNote(note);
  }
}
