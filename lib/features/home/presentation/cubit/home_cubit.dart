import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/repositories/giphy_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required GiphyRepository giphyRepository,
  })  : _giphyRepository = giphyRepository,
        super(const HomeState()) {
    getGifs();
  }

  final GiphyRepository _giphyRepository;

  StreamSubscription? _gifsSubscription;

  @override
  Future<void> close() {
    _gifsSubscription = null;
    return super.close();
  }

  getGifs({
    String? searchText,
    void Function()? onDone,
  }) {
    emit(state.copyWith(isLoading: true));
    _gifsSubscription?.cancel();
    _gifsSubscription = _giphyRepository
        .getGiphs(
      searchText: searchText,
    )
        .listen(
      (giphs) {
        emit(state.copyWith(giphs: giphs));
      },
      onError: (error) {
        debugPrint(error.toString());
      },
      onDone: () {
        emit(state.copyWith(isLoading: false));
        onDone?.call();
      },
    );
  }

  Future<void> onRefresh() async {
    final Completer<void> completer = Completer<void>();
    getGifs(
      onDone: () {
        completer.complete();
      },
    );
    return completer.future;
  }

  void handleSubmitSearch(String searchText) {
    emit(state.copyWith(giphs: []));
    getGifs(searchText: searchText);
  }
}
