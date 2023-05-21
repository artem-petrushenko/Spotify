import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/presentation/bloc/home_cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            );
          }
        },
        builder: (context, state) {
          return switch (state) {
            HomeLoadingState() => const Align(
                alignment: Alignment.topCenter,
                child: LinearProgressIndicator()),
            HomeSuccessState() => ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final item = state.newReleasesModel.albums?.items?[index];
                  return Image.network(
                    item?.images?.first.url ?? '',
                    width: double.infinity,
                    height: 128.0,
                    fit: BoxFit.cover,
                  );
                },
                itemCount: state.newReleasesModel.albums?.items?.length ?? 0,
              ),
            HomeFailureState() =>
              const Align(alignment: Alignment.center, child: Text('Error')),
          };
        },
      ),
    );
  }
}
