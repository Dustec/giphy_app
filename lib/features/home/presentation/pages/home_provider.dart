import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../giph/data/giphy_data_repository.dart';
import '../../../giph/data/remote/giphy_remote_source.dart';
import '../cubit/home_cubit.dart';
import 'home_page.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(
        giphyRepository: GiphDataRepository(
          remoteSource: GiphyRemoteSource(),
        ),
      ),
      child: const HomePage(),
    );
  }
}
