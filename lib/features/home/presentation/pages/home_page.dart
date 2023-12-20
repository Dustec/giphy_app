import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/gif_grid.dart';
import '../widgets/gif_search_delegate.dart';

import '../cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giphy App'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.giphs.isEmpty && state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.giphs.isEmpty) {
            return const Center(
              child: Text('No items found'),
            );
          }

          return RefreshIndicator.adaptive(
            onRefresh: cubit.onRefresh,
            child: GifGrid(state.giphs),
          );
        },
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          child: const Icon(Icons.search),
          onPressed: () async {
            await showSearch(
              context: context,
              delegate: GifSearchDelegate(cubit),
            );
          },
        ),
      ),
    );
  }
}
