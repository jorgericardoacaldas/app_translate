class TranslateTextEntity {
  final String text;
  final String sourceLanguage;
  final String targetLanguage;

  TranslateTextEntity({
    required this.text,
    required this.sourceLanguage,
    required this.targetLanguage,
  });

  @override
  String toString() {
    return 'TranslateTextEntity(text: $text, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage)';
  }
}