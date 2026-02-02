import 'package:flutter_bloc/flutter_bloc.dart';
import '../Api/Azkar_API.dart';
import '../models/azkar_model.dart';

class AzkarCubit extends Cubit<List<ZekrItem>> {
  final AzkarApi api;
  AzkarCubit(this.api) : super([]);

  bool isLoading = false;
  String? error;

  Future<void> loadAzkar(String category) async {
    try {
      isLoading = true;
      emit([]);
      final azkar = await api.fetchAzkar(category);
      isLoading = false;
      error = null;
      emit(azkar);
    } catch (e) {
      isLoading = false;
      error = 'فشل تحميل الأذكار';
      emit([]);
    }
  }

  void decrease(int index) {
    final updated = List<ZekrItem>.from(state);
    if (updated[index].currentCount > 0) {
      updated[index].currentCount--;
    }
    emit(updated);
  }
}
