import 'package:app_translate/domain/helpers/language.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class LanguageMapper {
  static TranslateLanguage mapToMLKit(Language language) {
    switch (language) {
      case Language.english:
        return TranslateLanguage.english;
      case Language.spanish:
        return TranslateLanguage.spanish;
      case Language.french:
        return TranslateLanguage.french;
      case Language.german:
        return TranslateLanguage.german;
      default:
        return TranslateLanguage.english; // Default to English if no match found
    }
  }
}