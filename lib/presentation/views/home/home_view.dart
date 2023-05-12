import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/presentation/bloc/home_cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Success'),
              ),
            );
          }
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case HomeLoading:
                return const Center(child: CircularProgressIndicator());
              case HomeSuccess:
                return const Center(child: Text('Success'));
              case HomeError:
                return const Center(child: Text('Error'));
              default:
                return const SizedBox();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          BlocProvider.of<HomeCubit>(context).helloWorld();
        },
      ),
    );
  }
}
