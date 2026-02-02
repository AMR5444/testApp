import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/models/azkar_model.dart';

class AzkarCubit extends Cubit<List<Zekaritem>> {
  AzkarCubit(super.initialState);

  void decrease(int index) {
    final updated = List<Zekaritem>.from(state);
    updated[index].decrease();
    emit(updated);
  }
}
