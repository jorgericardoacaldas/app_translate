import 'package:app_translate/domain/repositories/translate_text_repository.dart';

class TranslateTextUseCase {
  final TranslateTextRepository repository;

  TranslateTextUseCase(this.repository);

  Future<String> call(TranslateParams params) async {
    return await repository.translateText(params);
  }
}