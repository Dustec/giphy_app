part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(<GifModel>[]) List<GifModel> giphs,
  }) = _HomeState;
}
