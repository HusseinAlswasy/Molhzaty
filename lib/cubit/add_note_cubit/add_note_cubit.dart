import 'package:hive_flutter/adapters.dart';
import 'package:molhzaty/add_note_cubit/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:molhzaty/model/note_model.dart';
import 'package:molhzaty/view/constent/cont%20color.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {

    try{
    var noteBox = Hive.box<NoteModel>(kNoteBox); // TO ADD DATA TO MODEL
    List<NoteModel> notes = noteBox.values.toList();
    emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFailure(e.toString()));
    }


  }
}
