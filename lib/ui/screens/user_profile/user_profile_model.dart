import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/current_user_profile.dart';

import 'package:spotify_client/domain/services/user_service.dart';

class UserProfileData {
  final String? displayName;
  final String? email;
  final String? totalFollowers;

  const UserProfileData({
    this.displayName,
    this.email,
    this.totalFollowers,
  });

  UserProfileData copyWith({
    String? displayName,
    String? email,
    String? totalFollowers,
  }) {
    return UserProfileData(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      totalFollowers: totalFollowers ?? this.totalFollowers,
    );
  }
}

class UserProfileRenderedData {
  bool isLoading = true;
  UserProfileData userProfileData = UserProfileData(
    displayName: '',
    email: '',
    totalFollowers: '',
  );
}

class UserProfileViewModel extends ChangeNotifier {
  final _userService = UserService();

  final data = UserProfileRenderedData();

  Future<void> _loadDetails() async {
    final currentUserProfile = await _userService.getCurrentUserProfileData();
    _updateData(currentUserProfile);
  }

  void _updateData(CurrentUserProfile? currentUserProfile) {
    data.isLoading = currentUserProfile == null;
    if (currentUserProfile == null) {
      notifyListeners();
      return;
    }
    data.userProfileData = UserProfileData(
      displayName: currentUserProfile.displayName,
      email: currentUserProfile.email,
      totalFollowers: currentUserProfile.followers?.total.toString()
    );
    notifyListeners();
  }

  UserProfileViewModel() {
    _loadDetails();
  }
}
