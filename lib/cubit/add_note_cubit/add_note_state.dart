
import 'package:flutter/material.dart';
import 'package:molhzaty/model/note_model.dart';

@immutable
abstract class AddNoteState{}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
