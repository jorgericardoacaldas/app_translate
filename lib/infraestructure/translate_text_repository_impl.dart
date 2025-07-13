import 'package:app_translate/domain/repositories/translate_text_repository.dart';
import 'package:app_translate/infraestructure/mappers/language_mapper.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class TranslateTextRepositoryImpl extends TranslateTextRepository{
  @override
  Future<String> translateText(TranslateParams params) async {
    final translator = OnDeviceTranslator(
      sourceLanguage: LanguageMapper.mapToMLKit(params.sourceLanguage),
      targetLanguage:  LanguageMapper.mapToMLKit(params.targetLanguage),
    );
    // You may want to use translator.translateText(params.text) here
    return 'Translated text from ${params.sourceLanguage} to ${params.targetLanguage}: ${params.text}';
  }
}