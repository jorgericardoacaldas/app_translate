import 'package:app_translate/domain/repositories/translate_text_repository.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class TranslateTextRepositoryImpl extends TranslateTextRepository{
  @override
  Future<String> translateText(TranslateParams params) async {
    final translator = OnDeviceTranslator(
      sourceLanguage: params.sourceLanguage,
      targetLanguage: params.targetLanguage,
    );
    // You may want to use translator.translateText(params.text) here
    return 'Translated text from ${params.sourceLanguage} to ${params.targetLanguage}: ${params.text}';
  }
}