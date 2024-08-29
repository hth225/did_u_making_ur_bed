import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller.freezed.dart';
part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeState> build() async {
    return _fetchData();
  }

  Future<HomeState> _fetchData() async {
    // TODO : GET DATA FROM LOCAL DATASOURCE
    return HomeState();
  }
}

@freezed
sealed class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool isBedAlreadyMade,
  }) = _HomeState;
}
