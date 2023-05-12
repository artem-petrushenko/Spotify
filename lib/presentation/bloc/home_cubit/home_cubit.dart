import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/domain/entity/albums/new_releases_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeLoading());

  void helloWorld(){
    print('object');
  }
}
