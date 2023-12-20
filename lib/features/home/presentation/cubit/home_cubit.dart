import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:giphy_app/core/domain/mixins/disposable.dart';
import 'package:giphy_app/features/giph/domain/models/gif_model.dart';
import 'package:giphy_app/features/giph/domain/repositories/giphy_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with Disposable {
  HomeCubit({
    required GiphyRepository giphyRepository,
  })  : _giphyRepository = giphyRepository,
        super(const HomeState()) {
    _init();
  }

  final GiphyRepository _giphyRepository;

  _init({
    void Function()? onDone,
  }) {
    emit(state.copyWith(isLoading: true));
    _giphyRepository.getGiphs().listen(
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
    ).dispose(this);
  }

  Future<void> onRefresh() async {
    final Completer<void> completer = Completer<void>();
    _init(
      onDone: () {
        completer.complete();
      },
    );
    return completer.future;
  }
}
