import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/entity/users/current_user_profile.dart';
import 'package:spotify_client/domain/services/users/abstract_users_service.dart';

import 'package:spotify_client/config/router/router.dart';

enum Status { loading, completed, error }

class UserProfileData {
  final String? displayName;
  final String? email;
  final String? totalFollowers;
  final String? imageUrl;

  const UserProfileData({
    this.displayName,
    this.email,
    this.totalFollowers,
    this.imageUrl,
  });

  UserProfileData copyWith({
    String? displayName,
    String? email,
    String? totalFollowers,
    String? imageUrl,
  }) {
    return UserProfileData(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      totalFollowers: totalFollowers ?? this.totalFollowers,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}

class UserProfileRenderedData {
  Status status = Status.loading;
  UserProfileData userProfileData = const UserProfileData(
      displayName: '', email: '', totalFollowers: '', imageUrl: '');
}

class UserProfileViewModel extends ChangeNotifier {
  final data = UserProfileRenderedData();

  UserProfileViewModel() {
    _loadDetails();
  }

  void openSettings(BuildContext context) =>
      context.push(GoRouterNames.settingScreen);

  Future<void> _loadDetails() async {
    await GetIt.instance<AbstractUsersService>()
        .getCurrentUserProfile()
        .then((value) => _addUserData(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addUserData(CurrentUserProfileModel? currentUserProfile) {
    if (currentUserProfile == null) {
      return;
    }
    data.userProfileData = UserProfileData(
      displayName: currentUserProfile.displayName,
      email: currentUserProfile.email,
      totalFollowers: currentUserProfile.followers?.total.toString(),
      imageUrl: currentUserProfile.images.isEmpty
          ? null
          : currentUserProfile.images.first.url,
    );
  }
}
