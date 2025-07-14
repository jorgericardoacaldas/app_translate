import 'package:app_translate/domain/entities/translate_text_entity.dart';
import 'package:app_translate/domain/repositories/translate_text_repository.dart';
import 'package:app_translate/domain/usecases/translate_text_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TranslateTextState {
  TranslateTextEntity? translatedText;
  bool? isDownloading;

  TranslateTextState({
    this.translatedText,
    this.isDownloading,
  });

  TranslateTextState copyWith({
    TranslateTextEntity? translatedText,
    bool? isDownloading,
  }) {
    return TranslateTextState(
      translatedText: translatedText ?? this.translatedText,
      isDownloading: isDownloading ?? this.isDownloading,
    );
  }
}



class TranslateTextNotifier extends StateNotifier<AsyncValue<TranslateTextState>> {
  final TranslateTextUseCase translateTextUseCase;
  
  TranslateTextNotifier(this.translateTextUseCase) : 
  
  super(
    AsyncValue.data(
      TranslateTextState(translatedText: null, isDownloading: false),
    ),
  );

  Future <void> translate(TranslateParams params) async {
    state = AsyncData(state.value!.copyWith(
      isDownloading: true,
    ));

    final translatedText = await translateTextUseCase.call(params).catchError((onError,
    ){
      return "Algo deu errado";
    });

    state = AsyncData(state.value!.copyWith(
      translatedText: TranslateTextEntity(text: translatedText),
      isDownloading: false,
    ));
  }
}