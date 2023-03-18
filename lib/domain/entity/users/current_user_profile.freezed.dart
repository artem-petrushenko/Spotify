// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUserProfileModel _$CurrentUserProfileModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentUserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentUserProfileModel {
  String? get country => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ExplicitContent? get explicitContent => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Images> get images => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUserProfileModelCopyWith<CurrentUserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserProfileModelCopyWith<$Res> {
  factory $CurrentUserProfileModelCopyWith(CurrentUserProfileModel value,
          $Res Function(CurrentUserProfileModel) then) =
      _$CurrentUserProfileModelCopyWithImpl<$Res, CurrentUserProfileModel>;
  @useResult
  $Res call(
      {String? country,
      String? displayName,
      String? email,
      ExplicitContent? explicitContent,
      ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      List<Images> images,
      String? product,
      String? type,
      String? uri});

  $ExplicitContentCopyWith<$Res>? get explicitContent;
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class _$CurrentUserProfileModelCopyWithImpl<$Res,
        $Val extends CurrentUserProfileModel>
    implements $CurrentUserProfileModelCopyWith<$Res> {
  _$CurrentUserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? explicitContent = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = null,
    Object? product = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      explicitContent: freezed == explicitContent
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as ExplicitContent?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExplicitContentCopyWith<$Res>? get explicitContent {
    if (_value.explicitContent == null) {
      return null;
    }

    return $ExplicitContentCopyWith<$Res>(_value.explicitContent!, (value) {
      return _then(_value.copyWith(explicitContent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowersCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $FollowersCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentUserProfileModelCopyWith<$Res>
    implements $CurrentUserProfileModelCopyWith<$Res> {
  factory _$$_CurrentUserProfileModelCopyWith(_$_CurrentUserProfileModel value,
          $Res Function(_$_CurrentUserProfileModel) then) =
      __$$_CurrentUserProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? displayName,
      String? email,
      ExplicitContent? explicitContent,
      ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      List<Images> images,
      String? product,
      String? type,
      String? uri});

  @override
  $ExplicitContentCopyWith<$Res>? get explicitContent;
  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$_CurrentUserProfileModelCopyWithImpl<$Res>
    extends _$CurrentUserProfileModelCopyWithImpl<$Res,
        _$_CurrentUserProfileModel>
    implements _$$_CurrentUserProfileModelCopyWith<$Res> {
  __$$_CurrentUserProfileModelCopyWithImpl(_$_CurrentUserProfileModel _value,
      $Res Function(_$_CurrentUserProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? explicitContent = freezed,
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = null,
    Object? product = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_CurrentUserProfileModel(
      freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == explicitContent
          ? _value.explicitContent
          : explicitContent // ignore: cast_nullable_to_non_nullable
              as ExplicitContent?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
      freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_CurrentUserProfileModel implements _CurrentUserProfileModel {
  const _$_CurrentUserProfileModel(
      this.country,
      this.displayName,
      this.email,
      this.explicitContent,
      this.externalUrls,
      this.followers,
      this.href,
      this.id,
      final List<Images> images,
      this.product,
      this.type,
      this.uri)
      : _images = images;

  factory _$_CurrentUserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentUserProfileModelFromJson(json);

  @override
  final String? country;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final ExplicitContent? explicitContent;
  @override
  final ExternalUrls? externalUrls;
  @override
  final Followers? followers;
  @override
  final String? href;
  @override
  final String? id;
  final List<Images> _images;
  @override
  List<Images> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? product;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'CurrentUserProfileModel(country: $country, displayName: $displayName, email: $email, explicitContent: $explicitContent, externalUrls: $externalUrls, followers: $followers, href: $href, id: $id, images: $images, product: $product, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserProfileModel &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.explicitContent, explicitContent) ||
                other.explicitContent == explicitContent) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      displayName,
      email,
      explicitContent,
      externalUrls,
      followers,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      product,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentUserProfileModelCopyWith<_$_CurrentUserProfileModel>
      get copyWith =>
          __$$_CurrentUserProfileModelCopyWithImpl<_$_CurrentUserProfileModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentUserProfileModelToJson(
      this,
    );
  }
}

abstract class _CurrentUserProfileModel implements CurrentUserProfileModel {
  const factory _CurrentUserProfileModel(
      final String? country,
      final String? displayName,
      final String? email,
      final ExplicitContent? explicitContent,
      final ExternalUrls? externalUrls,
      final Followers? followers,
      final String? href,
      final String? id,
      final List<Images> images,
      final String? product,
      final String? type,
      final String? uri) = _$_CurrentUserProfileModel;

  factory _CurrentUserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentUserProfileModel.fromJson;

  @override
  String? get country;
  @override
  String? get displayName;
  @override
  String? get email;
  @override
  ExplicitContent? get explicitContent;
  @override
  ExternalUrls? get externalUrls;
  @override
  Followers? get followers;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<Images> get images;
  @override
  String? get product;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentUserProfileModelCopyWith<_$_CurrentUserProfileModel>
      get copyWith => throw _privateConstructorUsedError;
}

ExplicitContent _$ExplicitContentFromJson(Map<String, dynamic> json) {
  return _ExplicitContent.fromJson(json);
}

/// @nodoc
mixin _$ExplicitContent {
  bool? get filterEnabled => throw _privateConstructorUsedError;
  bool? get filterLocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplicitContentCopyWith<ExplicitContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplicitContentCopyWith<$Res> {
  factory $ExplicitContentCopyWith(
          ExplicitContent value, $Res Function(ExplicitContent) then) =
      _$ExplicitContentCopyWithImpl<$Res, ExplicitContent>;
  @useResult
  $Res call({bool? filterEnabled, bool? filterLocked});
}

/// @nodoc
class _$ExplicitContentCopyWithImpl<$Res, $Val extends ExplicitContent>
    implements $ExplicitContentCopyWith<$Res> {
  _$ExplicitContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterEnabled = freezed,
    Object? filterLocked = freezed,
  }) {
    return _then(_value.copyWith(
      filterEnabled: freezed == filterEnabled
          ? _value.filterEnabled
          : filterEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterLocked: freezed == filterLocked
          ? _value.filterLocked
          : filterLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExplicitContentCopyWith<$Res>
    implements $ExplicitContentCopyWith<$Res> {
  factory _$$_ExplicitContentCopyWith(
          _$_ExplicitContent value, $Res Function(_$_ExplicitContent) then) =
      __$$_ExplicitContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? filterEnabled, bool? filterLocked});
}

/// @nodoc
class __$$_ExplicitContentCopyWithImpl<$Res>
    extends _$ExplicitContentCopyWithImpl<$Res, _$_ExplicitContent>
    implements _$$_ExplicitContentCopyWith<$Res> {
  __$$_ExplicitContentCopyWithImpl(
      _$_ExplicitContent _value, $Res Function(_$_ExplicitContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterEnabled = freezed,
    Object? filterLocked = freezed,
  }) {
    return _then(_$_ExplicitContent(
      freezed == filterEnabled
          ? _value.filterEnabled
          : filterEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == filterLocked
          ? _value.filterLocked
          : filterLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExplicitContent implements _ExplicitContent {
  const _$_ExplicitContent(this.filterEnabled, this.filterLocked);

  factory _$_ExplicitContent.fromJson(Map<String, dynamic> json) =>
      _$$_ExplicitContentFromJson(json);

  @override
  final bool? filterEnabled;
  @override
  final bool? filterLocked;

  @override
  String toString() {
    return 'ExplicitContent(filterEnabled: $filterEnabled, filterLocked: $filterLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExplicitContent &&
            (identical(other.filterEnabled, filterEnabled) ||
                other.filterEnabled == filterEnabled) &&
            (identical(other.filterLocked, filterLocked) ||
                other.filterLocked == filterLocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filterEnabled, filterLocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExplicitContentCopyWith<_$_ExplicitContent> get copyWith =>
      __$$_ExplicitContentCopyWithImpl<_$_ExplicitContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExplicitContentToJson(
      this,
    );
  }
}

abstract class _ExplicitContent implements ExplicitContent {
  const factory _ExplicitContent(
      final bool? filterEnabled, final bool? filterLocked) = _$_ExplicitContent;

  factory _ExplicitContent.fromJson(Map<String, dynamic> json) =
      _$_ExplicitContent.fromJson;

  @override
  bool? get filterEnabled;
  @override
  bool? get filterLocked;
  @override
  @JsonKey(ignore: true)
  _$$_ExplicitContentCopyWith<_$_ExplicitContent> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_value.copyWith(
      spotify: freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExternalUrlsCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$_ExternalUrlsCopyWith(
          _$_ExternalUrls value, $Res Function(_$_ExternalUrls) then) =
      __$$_ExternalUrlsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$_ExternalUrlsCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$_ExternalUrls>
    implements _$$_ExternalUrlsCopyWith<$Res> {
  __$$_ExternalUrlsCopyWithImpl(
      _$_ExternalUrls _value, $Res Function(_$_ExternalUrls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$_ExternalUrls(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExternalUrls implements _ExternalUrls {
  const _$_ExternalUrls(this.spotify);

  factory _$_ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalUrlsFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalUrls &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalUrlsCopyWith<_$_ExternalUrls> get copyWith =>
      __$$_ExternalUrlsCopyWithImpl<_$_ExternalUrls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalUrlsToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls(final String? spotify) = _$_ExternalUrls;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$_ExternalUrls.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalUrlsCopyWith<_$_ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return _Followers.fromJson(json);
}

/// @nodoc
mixin _$Followers {
  String? get href => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersCopyWith<Followers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersCopyWith<$Res> {
  factory $FollowersCopyWith(Followers value, $Res Function(Followers) then) =
      _$FollowersCopyWithImpl<$Res, Followers>;
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class _$FollowersCopyWithImpl<$Res, $Val extends Followers>
    implements $FollowersCopyWith<$Res> {
  _$FollowersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FollowersCopyWith<$Res> implements $FollowersCopyWith<$Res> {
  factory _$$_FollowersCopyWith(
          _$_Followers value, $Res Function(_$_Followers) then) =
      __$$_FollowersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class __$$_FollowersCopyWithImpl<$Res>
    extends _$FollowersCopyWithImpl<$Res, _$_Followers>
    implements _$$_FollowersCopyWith<$Res> {
  __$$_FollowersCopyWithImpl(
      _$_Followers _value, $Res Function(_$_Followers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Followers(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Followers implements _Followers {
  const _$_Followers(this.href, this.total);

  factory _$_Followers.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersFromJson(json);

  @override
  final String? href;
  @override
  final int? total;

  @override
  String toString() {
    return 'Followers(href: $href, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Followers &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      __$$_FollowersCopyWithImpl<_$_Followers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersToJson(
      this,
    );
  }
}

abstract class _Followers implements Followers {
  const factory _Followers(final String? href, final int? total) = _$_Followers;

  factory _Followers.fromJson(Map<String, dynamic> json) =
      _$_Followers.fromJson;

  @override
  String? get href;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_FollowersCopyWith<_$_Followers> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  String? get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$_ImagesCopyWith(_$_Images value, $Res Function(_$_Images) then) =
      __$$_ImagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class __$$_ImagesCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$_Images>
    implements _$$_ImagesCopyWith<$Res> {
  __$$_ImagesCopyWithImpl(_$_Images _value, $Res Function(_$_Images) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Images(
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Images implements _Images {
  const _$_Images(this.url, this.height, this.width);

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final String? url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'Images(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Images &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      __$$_ImagesCopyWithImpl<_$_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      final String? url, final int? height, final int? width) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      throw _privateConstructorUsedError;
}
