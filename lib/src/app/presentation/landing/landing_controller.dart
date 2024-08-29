import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'landing_controller.freezed.dart';
part 'landing_controller.g.dart';

@riverpod
class LandingController extends _$LandingController {
  @override
  FutureOr<LandingState> build() async {
    return _fetchData();
  }

  Future<LandingState> _fetchData() async {
    // TODO : GET DATA FROM LOCAL DATASOURCE
    return LandingState();
  }
}

@freezed
sealed class LandingState with _$LandingState {
  factory LandingState({@Default(false) bool hasSeenLoading}) = _LandingState;
}
