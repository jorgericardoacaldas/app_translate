class TranslateTextEntity {
   String? text;
   String? sourceLanguage;
   String? targetLanguage;

  TranslateTextEntity({
     this.text,
     this.sourceLanguage,
     this.targetLanguage,
  });

  @override
  String toString() {
    return 'TranslateTextEntity(text: $text, sourceLanguage: $sourceLanguage, targetLanguage: $targetLanguage)';
  }
}