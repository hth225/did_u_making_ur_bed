import 'package:did_u_make_ur_bed/src/app/presentation/home/home_controller.dart';
import 'package:did_u_make_ur_bed/src/app/presentation/widgets/buttons/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<HomeState> state = ref.watch(homeControllerProvider);
    return Scaffold(
        body: switch (state) {
      AsyncData(:final value) => _Body(state: value),
      AsyncError() => _ErrorPage(),
      _ => _Loading(),
    }
        //     body: state.when(
        //   loading: () => CircularProgressIndicator(),
        //   error: (error, stack) => Text('Oops, something unexpected happened'),
        //   data: (user) => Text('Hello ${user.name}'),
        // )
        );
  }
}

class _Body extends StatelessWidget {
  final HomeState state;
  const _Body({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 42,
            ),
            Expanded(
                flex: 1,
                child: Text(
                  DateFormat(DateFormat.ABBR_MONTH_DAY).format(DateTime.now()),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
            Expanded(
              flex: 2,
              child: state.isBedAlreadyMade
                  ? Text('Cleaned bed')
                  : Text('Messy bed'),
            ),
            RoundedButton(text: 'Record'),
          ],
        ),
      ),
    );
  }
}

class _ErrorPage extends StatelessWidget {
  const _ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Error'),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
