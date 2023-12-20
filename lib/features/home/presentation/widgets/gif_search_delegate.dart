import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/home_cubit.dart';
import 'gif_grid.dart';

class GifSearchDelegate extends SearchDelegate {
  GifSearchDelegate(this.cubit);

  final HomeCubit cubit;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          cubit.handleSubmitSearch('');
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        cubit.handleSubmitSearch('');
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.giphs.isEmpty && state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.giphs.isEmpty) {
          return const Center(
            child: Text('No items found. Try search something else.'),
          );
        }

        return GifGrid(state.giphs);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }

  @override
  void showResults(BuildContext context) {
    super.showResults(context);
    cubit.handleSubmitSearch(query);
  }
}
