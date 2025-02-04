import 'package:my_game/features/home/cubits/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_game/features/number_game/screens/number_game.dart';
import 'package:my_game/features/thumb_game/screens/thumb_page.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    loadingGames();
  }
  List<String> allGames = [
    'Number Game',
    'Thumb Game',
    'Game 3',
    'Game 4',
  ];

  loadingGames() async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 0));
    emit(HomeShowGamesState());
  }

  selectGame({required int gameIndex, required BuildContext context}) {
    switch (gameIndex) {
      case 0:
        Navigator.pushNamed(context, NumberGameScreen.numberGameScreen);
      case 1:
        Navigator.pushNamed(context, ThumbGameScreen.thumbGameScreen);
        break;
      default:
        Navigator.pushNamed(context, NumberGameScreen.numberGameScreen);
    }
  }
}
