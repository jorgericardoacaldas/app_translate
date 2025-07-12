import 'package:app_translate/domain/helpers/language.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

abstract class TranslateTextRepository {
  Future<String> translateText(TranslateParams params);
}

class TranslateParams {
  final String text;
  final TranslateLanguage sourceLanguage;
  final TranslateLanguage targetLanguage;

  TranslateParams({
    required this.text,
    required this.sourceLanguage,
    required this.targetLanguage,
  });

  @override
  String toString() {
    return 'TranslateParams(text: $text, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage)';
  }
}