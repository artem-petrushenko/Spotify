// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_saved_tracks_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersSavedTracksItemEntity _$UsersSavedTracksItemEntityFromJson(
    Map<String, dynamic> json) {
  return _UsersSavedTracksItemEntity.fromJson(json);
}

/// @nodoc
mixin _$UsersSavedTracksItemEntity {
  String? get addedAt => throw _privateConstructorUsedError;
  Track? get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersSavedTracksItemEntityCopyWith<UsersSavedTracksItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSavedTracksItemEntityCopyWith<$Res> {
  factory $UsersSavedTracksItemEntityCopyWith(UsersSavedTracksItemEntity value,
          $Res Function(UsersSavedTracksItemEntity) then) =
      _$UsersSavedTracksItemEntityCopyWithImpl<$Res,
          UsersSavedTracksItemEntity>;
  @useResult
  $Res call({String? addedAt, Track? track});

  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$UsersSavedTracksItemEntityCopyWithImpl<$Res,
        $Val extends UsersSavedTracksItemEntity>
    implements $UsersSavedTracksItemEntityCopyWith<$Res> {
  _$UsersSavedTracksItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedAt = freezed,
    Object? track = freezed,
  }) {
    return _then(_value.copyWith(
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UsersSavedTracksItemEntityCopyWith<$Res>
    implements $UsersSavedTracksItemEntityCopyWith<$Res> {
  factory _$$_UsersSavedTracksItemEntityCopyWith(
          _$_UsersSavedTracksItemEntity value,
          $Res Function(_$_UsersSavedTracksItemEntity) then) =
      __$$_UsersSavedTracksItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? addedAt, Track? track});

  @override
  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$$_UsersSavedTracksItemEntityCopyWithImpl<$Res>
    extends _$UsersSavedTracksItemEntityCopyWithImpl<$Res,
        _$_UsersSavedTracksItemEntity>
    implements _$$_UsersSavedTracksItemEntityCopyWith<$Res> {
  __$$_UsersSavedTracksItemEntityCopyWithImpl(
      _$_UsersSavedTracksItemEntity _value,
      $Res Function(_$_UsersSavedTracksItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedAt = freezed,
    Object? track = freezed,
  }) {
    return _then(_$_UsersSavedTracksItemEntity(
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_UsersSavedTracksItemEntity implements _UsersSavedTracksItemEntity {
  const _$_UsersSavedTracksItemEntity({this.addedAt, this.track});

  factory _$_UsersSavedTracksItemEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UsersSavedTracksItemEntityFromJson(json);

  @override
  final String? addedAt;
  @override
  final Track? track;

  @override
  String toString() {
    return 'UsersSavedTracksItemEntity(addedAt: $addedAt, track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersSavedTracksItemEntity &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.track, track) || other.track == track));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addedAt, track);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersSavedTracksItemEntityCopyWith<_$_UsersSavedTracksItemEntity>
      get copyWith => __$$_UsersSavedTracksItemEntityCopyWithImpl<
          _$_UsersSavedTracksItemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersSavedTracksItemEntityToJson(
      this,
    );
  }
}

abstract class _UsersSavedTracksItemEntity
    implements UsersSavedTracksItemEntity {
  const factory _UsersSavedTracksItemEntity(
      {final String? addedAt,
      final Track? track}) = _$_UsersSavedTracksItemEntity;

  factory _UsersSavedTracksItemEntity.fromJson(Map<String, dynamic> json) =
      _$_UsersSavedTracksItemEntity.fromJson;

  @override
  String? get addedAt;
  @override
  Track? get track;
  @override
  @JsonKey(ignore: true)
  _$$_UsersSavedTracksItemEntityCopyWith<_$_UsersSavedTracksItemEntity>
      get copyWith => throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  Album? get album => throw _privateConstructorUsedError;
  List<TrackArtist>? get artists => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  int? get discNumber => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
  LinkedFrom? get linkedFrom => throw _privateConstructorUsedError;
  Restrictions? get restrictions => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;
  int? get trackNumber => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  bool? get isLocal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {Album? album,
      List<TrackArtist>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
      LinkedFrom? linkedFrom,
      Restrictions? restrictions,
      String? name,
      int? popularity,
      String? previewUrl,
      int? trackNumber,
      String? type,
      String? uri,
      bool? isLocal});

  $AlbumCopyWith<$Res>? get album;
  $ExternalIdsCopyWith<$Res>? get externalIds;
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $LinkedFromCopyWith<$Res>? get linkedFrom;
  $RestrictionsCopyWith<$Res>? get restrictions;
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? discNumber = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalIds = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? isPlayable = freezed,
    Object? linkedFrom = freezed,
    Object? restrictions = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_value.copyWith(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrackArtist>?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as LinkedFrom?,
      restrictions: freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $AlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res>? get externalIds {
    if (_value.externalIds == null) {
      return null;
    }

    return $ExternalIdsCopyWith<$Res>(_value.externalIds!, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
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
  $LinkedFromCopyWith<$Res>? get linkedFrom {
    if (_value.linkedFrom == null) {
      return null;
    }

    return $LinkedFromCopyWith<$Res>(_value.linkedFrom!, (value) {
      return _then(_value.copyWith(linkedFrom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RestrictionsCopyWith<$Res>? get restrictions {
    if (_value.restrictions == null) {
      return null;
    }

    return $RestrictionsCopyWith<$Res>(_value.restrictions!, (value) {
      return _then(_value.copyWith(restrictions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$_TrackCopyWith(_$_Track value, $Res Function(_$_Track) then) =
      __$$_TrackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album? album,
      List<TrackArtist>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
      LinkedFrom? linkedFrom,
      Restrictions? restrictions,
      String? name,
      int? popularity,
      String? previewUrl,
      int? trackNumber,
      String? type,
      String? uri,
      bool? isLocal});

  @override
  $AlbumCopyWith<$Res>? get album;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $LinkedFromCopyWith<$Res>? get linkedFrom;
  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
}

/// @nodoc
class __$$_TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res, _$_Track>
    implements _$$_TrackCopyWith<$Res> {
  __$$_TrackCopyWithImpl(_$_Track _value, $Res Function(_$_Track) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? discNumber = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalIds = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? isPlayable = freezed,
    Object? linkedFrom = freezed,
    Object? restrictions = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_$_Track(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<TrackArtist>?,
      availableMarkets: freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      discNumber: freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as LinkedFrom?,
      restrictions: freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackNumber: freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Track implements _Track {
  const _$_Track(
      {this.album,
      final List<TrackArtist>? artists,
      final List<String>? availableMarkets,
      this.discNumber,
      this.durationMs,
      this.explicit,
      this.externalIds,
      this.externalUrls,
      this.href,
      this.id,
      this.isPlayable,
      this.linkedFrom,
      this.restrictions,
      this.name,
      this.popularity,
      this.previewUrl,
      this.trackNumber,
      this.type,
      this.uri,
      this.isLocal})
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  final Album? album;
  final List<TrackArtist>? _artists;
  @override
  List<TrackArtist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _availableMarkets;
  @override
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? discNumber;
  @override
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final ExternalIds? externalIds;
  @override
  final ExternalUrls? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final bool? isPlayable;
  @override
  final LinkedFrom? linkedFrom;
  @override
  final Restrictions? restrictions;
  @override
  final String? name;
  @override
  final int? popularity;
  @override
  final String? previewUrl;
  @override
  final int? trackNumber;
  @override
  final String? type;
  @override
  final String? uri;
  @override
  final bool? isLocal;

  @override
  String toString() {
    return 'Track(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isPlayable: $isPlayable, linkedFrom: $linkedFrom, restrictions: $restrictions, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri, isLocal: $isLocal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Track &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.linkedFrom, linkedFrom) ||
                other.linkedFrom == linkedFrom) &&
            (identical(other.restrictions, restrictions) ||
                other.restrictions == restrictions) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        album,
        const DeepCollectionEquality().hash(_artists),
        const DeepCollectionEquality().hash(_availableMarkets),
        discNumber,
        durationMs,
        explicit,
        externalIds,
        externalUrls,
        href,
        id,
        isPlayable,
        linkedFrom,
        restrictions,
        name,
        popularity,
        previewUrl,
        trackNumber,
        type,
        uri,
        isLocal
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      __$$_TrackCopyWithImpl<_$_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {final Album? album,
      final List<TrackArtist>? artists,
      final List<String>? availableMarkets,
      final int? discNumber,
      final int? durationMs,
      final bool? explicit,
      final ExternalIds? externalIds,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final bool? isPlayable,
      final LinkedFrom? linkedFrom,
      final Restrictions? restrictions,
      final String? name,
      final int? popularity,
      final String? previewUrl,
      final int? trackNumber,
      final String? type,
      final String? uri,
      final bool? isLocal}) = _$_Track;

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  Album? get album;
  @override
  List<TrackArtist>? get artists;
  @override
  List<String>? get availableMarkets;
  @override
  int? get discNumber;
  @override
  int? get durationMs;
  @override
  bool? get explicit;
  @override
  ExternalIds? get externalIds;
  @override
  ExternalUrls? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  bool? get isPlayable;
  @override
  LinkedFrom? get linkedFrom;
  @override
  Restrictions? get restrictions;
  @override
  String? get name;
  @override
  int? get popularity;
  @override
  String? get previewUrl;
  @override
  int? get trackNumber;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  bool? get isLocal;
  @override
  @JsonKey(ignore: true)
  _$$_TrackCopyWith<_$_Track> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  String? get albumType => throw _privateConstructorUsedError;
  int? get totalTracks => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  Restrictions? get restrictions => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  List<Copyright>? get copyrights => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get albumGroup => throw _privateConstructorUsedError;
  List<AlbumArtist>? get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {String? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String? uri,
      List<Copyright>? copyrights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity,
      String? albumGroup,
      List<AlbumArtist>? artists});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $RestrictionsCopyWith<$Res>? get restrictions;
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restrictions = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? copyrights = freezed,
    Object? externalIds = freezed,
    Object? genres = freezed,
    Object? label = freezed,
    Object? popularity = freezed,
    Object? albumGroup = freezed,
    Object? artists = freezed,
  }) {
    return _then(_value.copyWith(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictions: freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<Copyright>?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      albumGroup: freezed == albumGroup
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<AlbumArtist>?,
    ) as $Val);
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
  $RestrictionsCopyWith<$Res>? get restrictions {
    if (_value.restrictions == null) {
      return null;
    }

    return $RestrictionsCopyWith<$Res>(_value.restrictions!, (value) {
      return _then(_value.copyWith(restrictions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res>? get externalIds {
    if (_value.externalIds == null) {
      return null;
    }

    return $ExternalIdsCopyWith<$Res>(_value.externalIds!, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$_AlbumCopyWith(_$_Album value, $Res Function(_$_Album) then) =
      __$$_AlbumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String? uri,
      List<Copyright>? copyrights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity,
      String? albumGroup,
      List<AlbumArtist>? artists});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class __$$_AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res, _$_Album>
    implements _$$_AlbumCopyWith<$Res> {
  __$$_AlbumCopyWithImpl(_$_Album _value, $Res Function(_$_Album) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = freezed,
    Object? totalTracks = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? restrictions = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? copyrights = freezed,
    Object? externalIds = freezed,
    Object? genres = freezed,
    Object? label = freezed,
    Object? popularity = freezed,
    Object? albumGroup = freezed,
    Object? artists = freezed,
  }) {
    return _then(_$_Album(
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      availableMarkets: freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDatePrecision: freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictions: freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      copyrights: freezed == copyrights
          ? _value._copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<Copyright>?,
      externalIds: freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      albumGroup: freezed == albumGroup
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<AlbumArtist>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Album implements _Album {
  const _$_Album(
      {this.albumType,
      this.totalTracks,
      final List<String>? availableMarkets,
      this.externalUrls,
      this.href,
      this.id,
      final List<Image>? images,
      this.name,
      this.releaseDate,
      this.releaseDatePrecision,
      this.restrictions,
      this.type,
      this.uri,
      final List<Copyright>? copyrights,
      this.externalIds,
      final List<String>? genres,
      this.label,
      this.popularity,
      this.albumGroup,
      final List<AlbumArtist>? artists})
      : _availableMarkets = availableMarkets,
        _images = images,
        _copyrights = copyrights,
        _genres = genres,
        _artists = artists;

  factory _$_Album.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumFromJson(json);

  @override
  final String? albumType;
  @override
  final int? totalTracks;
  final List<String>? _availableMarkets;
  @override
  List<String>? get availableMarkets {
    final value = _availableMarkets;
    if (value == null) return null;
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ExternalUrls? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final String? releaseDate;
  @override
  final String? releaseDatePrecision;
  @override
  final Restrictions? restrictions;
  @override
  final String? type;
  @override
  final String? uri;
  final List<Copyright>? _copyrights;
  @override
  List<Copyright>? get copyrights {
    final value = _copyrights;
    if (value == null) return null;
    if (_copyrights is EqualUnmodifiableListView) return _copyrights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ExternalIds? externalIds;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? label;
  @override
  final int? popularity;
  @override
  final String? albumGroup;
  final List<AlbumArtist>? _artists;
  @override
  List<AlbumArtist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Album(albumType: $albumType, totalTracks: $totalTracks, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, restrictions: $restrictions, type: $type, uri: $uri, copyrights: $copyrights, externalIds: $externalIds, genres: $genres, label: $label, popularity: $popularity, albumGroup: $albumGroup, artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Album &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.restrictions, restrictions) ||
                other.restrictions == restrictions) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            const DeepCollectionEquality()
                .equals(other._copyrights, _copyrights) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.albumGroup, albumGroup) ||
                other.albumGroup == albumGroup) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        albumType,
        totalTracks,
        const DeepCollectionEquality().hash(_availableMarkets),
        externalUrls,
        href,
        id,
        const DeepCollectionEquality().hash(_images),
        name,
        releaseDate,
        releaseDatePrecision,
        restrictions,
        type,
        uri,
        const DeepCollectionEquality().hash(_copyrights),
        externalIds,
        const DeepCollectionEquality().hash(_genres),
        label,
        popularity,
        albumGroup,
        const DeepCollectionEquality().hash(_artists)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      __$$_AlbumCopyWithImpl<_$_Album>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {final String? albumType,
      final int? totalTracks,
      final List<String>? availableMarkets,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final List<Image>? images,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final Restrictions? restrictions,
      final String? type,
      final String? uri,
      final List<Copyright>? copyrights,
      final ExternalIds? externalIds,
      final List<String>? genres,
      final String? label,
      final int? popularity,
      final String? albumGroup,
      final List<AlbumArtist>? artists}) = _$_Album;

  factory _Album.fromJson(Map<String, dynamic> json) = _$_Album.fromJson;

  @override
  String? get albumType;
  @override
  int? get totalTracks;
  @override
  List<String>? get availableMarkets;
  @override
  ExternalUrls? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<Image>? get images;
  @override
  String? get name;
  @override
  String? get releaseDate;
  @override
  String? get releaseDatePrecision;
  @override
  Restrictions? get restrictions;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  List<Copyright>? get copyrights;
  @override
  ExternalIds? get externalIds;
  @override
  List<String>? get genres;
  @override
  String? get label;
  @override
  int? get popularity;
  @override
  String? get albumGroup;
  @override
  List<AlbumArtist>? get artists;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      throw _privateConstructorUsedError;
}

AlbumArtist _$AlbumArtistFromJson(Map<String, dynamic> json) {
  return _AlbumArtist.fromJson(json);
}

/// @nodoc
mixin _$AlbumArtist {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumArtistCopyWith<AlbumArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumArtistCopyWith<$Res> {
  factory $AlbumArtistCopyWith(
          AlbumArtist value, $Res Function(AlbumArtist) then) =
      _$AlbumArtistCopyWithImpl<$Res, AlbumArtist>;
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$AlbumArtistCopyWithImpl<$Res, $Val extends AlbumArtist>
    implements $AlbumArtistCopyWith<$Res> {
  _$AlbumArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  $ExternalUrlsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlbumArtistCopyWith<$Res>
    implements $AlbumArtistCopyWith<$Res> {
  factory _$$_AlbumArtistCopyWith(
          _$_AlbumArtist value, $Res Function(_$_AlbumArtist) then) =
      __$$_AlbumArtistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$_AlbumArtistCopyWithImpl<$Res>
    extends _$AlbumArtistCopyWithImpl<$Res, _$_AlbumArtist>
    implements _$$_AlbumArtistCopyWith<$Res> {
  __$$_AlbumArtistCopyWithImpl(
      _$_AlbumArtist _value, $Res Function(_$_AlbumArtist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_AlbumArtist(
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AlbumArtist implements _AlbumArtist {
  const _$_AlbumArtist(
      {this.externalUrls, this.href, this.id, this.name, this.type, this.uri});

  factory _$_AlbumArtist.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumArtistFromJson(json);

  @override
  final ExternalUrls? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'AlbumArtist(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumArtist &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, externalUrls, href, id, name, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumArtistCopyWith<_$_AlbumArtist> get copyWith =>
      __$$_AlbumArtistCopyWithImpl<_$_AlbumArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumArtistToJson(
      this,
    );
  }
}

abstract class _AlbumArtist implements AlbumArtist {
  const factory _AlbumArtist(
      {final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri}) = _$_AlbumArtist;

  factory _AlbumArtist.fromJson(Map<String, dynamic> json) =
      _$_AlbumArtist.fromJson;

  @override
  ExternalUrls? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumArtistCopyWith<_$_AlbumArtist> get copyWith =>
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
      spotify: freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExternalUrls implements _ExternalUrls {
  const _$_ExternalUrls({this.spotify});

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
  const factory _ExternalUrls({final String? spotify}) = _$_ExternalUrls;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$_ExternalUrls.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalUrlsCopyWith<_$_ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

Copyright _$CopyrightFromJson(Map<String, dynamic> json) {
  return _Copyright.fromJson(json);
}

/// @nodoc
mixin _$Copyright {
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopyrightCopyWith<Copyright> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyrightCopyWith<$Res> {
  factory $CopyrightCopyWith(Copyright value, $Res Function(Copyright) then) =
      _$CopyrightCopyWithImpl<$Res, Copyright>;
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class _$CopyrightCopyWithImpl<$Res, $Val extends Copyright>
    implements $CopyrightCopyWith<$Res> {
  _$CopyrightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CopyrightCopyWith<$Res> implements $CopyrightCopyWith<$Res> {
  factory _$$_CopyrightCopyWith(
          _$_Copyright value, $Res Function(_$_Copyright) then) =
      __$$_CopyrightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class __$$_CopyrightCopyWithImpl<$Res>
    extends _$CopyrightCopyWithImpl<$Res, _$_Copyright>
    implements _$$_CopyrightCopyWith<$Res> {
  __$$_CopyrightCopyWithImpl(
      _$_Copyright _value, $Res Function(_$_Copyright) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Copyright(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Copyright implements _Copyright {
  const _$_Copyright({this.text, this.type});

  factory _$_Copyright.fromJson(Map<String, dynamic> json) =>
      _$$_CopyrightFromJson(json);

  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'Copyright(text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Copyright &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CopyrightCopyWith<_$_Copyright> get copyWith =>
      __$$_CopyrightCopyWithImpl<_$_Copyright>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CopyrightToJson(
      this,
    );
  }
}

abstract class _Copyright implements Copyright {
  const factory _Copyright({final String? text, final String? type}) =
      _$_Copyright;

  factory _Copyright.fromJson(Map<String, dynamic> json) =
      _$_Copyright.fromJson;

  @override
  String? get text;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CopyrightCopyWith<_$_Copyright> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  String? get isrc => throw _privateConstructorUsedError;
  String? get ean => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res, ExternalIds>;
  @useResult
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res, $Val extends ExternalIds>
    implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_value.copyWith(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExternalIdsCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$_ExternalIdsCopyWith(
          _$_ExternalIds value, $Res Function(_$_ExternalIds) then) =
      __$$_ExternalIdsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class __$$_ExternalIdsCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$_ExternalIds>
    implements _$$_ExternalIdsCopyWith<$Res> {
  __$$_ExternalIdsCopyWithImpl(
      _$_ExternalIds _value, $Res Function(_$_ExternalIds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_$_ExternalIds(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      ean: freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      upc: freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExternalIds implements _ExternalIds {
  const _$_ExternalIds({this.isrc, this.ean, this.upc});

  factory _$_ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalIdsFromJson(json);

  @override
  final String? isrc;
  @override
  final String? ean;
  @override
  final String? upc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc, ean: $ean, upc: $upc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalIds &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.ean, ean) || other.ean == ean) &&
            (identical(other.upc, upc) || other.upc == upc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isrc, ean, upc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalIdsCopyWith<_$_ExternalIds> get copyWith =>
      __$$_ExternalIdsCopyWithImpl<_$_ExternalIds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalIdsToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds(
      {final String? isrc,
      final String? ean,
      final String? upc}) = _$_ExternalIds;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$_ExternalIds.fromJson;

  @override
  String? get isrc;
  @override
  String? get ean;
  @override
  String? get upc;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalIdsCopyWith<_$_ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String? get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Image(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Image implements _Image {
  const _$_Image({this.url, this.height, this.width});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final String? url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'Image(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
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
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {final String? url, final int? height, final int? width}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Restrictions _$RestrictionsFromJson(Map<String, dynamic> json) {
  return _Restrictions.fromJson(json);
}

/// @nodoc
mixin _$Restrictions {
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestrictionsCopyWith<Restrictions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictionsCopyWith<$Res> {
  factory $RestrictionsCopyWith(
          Restrictions value, $Res Function(Restrictions) then) =
      _$RestrictionsCopyWithImpl<$Res, Restrictions>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$RestrictionsCopyWithImpl<$Res, $Val extends Restrictions>
    implements $RestrictionsCopyWith<$Res> {
  _$RestrictionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestrictionsCopyWith<$Res>
    implements $RestrictionsCopyWith<$Res> {
  factory _$$_RestrictionsCopyWith(
          _$_Restrictions value, $Res Function(_$_Restrictions) then) =
      __$$_RestrictionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$_RestrictionsCopyWithImpl<$Res>
    extends _$RestrictionsCopyWithImpl<$Res, _$_Restrictions>
    implements _$$_RestrictionsCopyWith<$Res> {
  __$$_RestrictionsCopyWithImpl(
      _$_Restrictions _value, $Res Function(_$_Restrictions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$_Restrictions(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Restrictions implements _Restrictions {
  const _$_Restrictions({this.reason});

  factory _$_Restrictions.fromJson(Map<String, dynamic> json) =>
      _$$_RestrictionsFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'Restrictions(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Restrictions &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestrictionsCopyWith<_$_Restrictions> get copyWith =>
      __$$_RestrictionsCopyWithImpl<_$_Restrictions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestrictionsToJson(
      this,
    );
  }
}

abstract class _Restrictions implements Restrictions {
  const factory _Restrictions({final String? reason}) = _$_Restrictions;

  factory _Restrictions.fromJson(Map<String, dynamic> json) =
      _$_Restrictions.fromJson;

  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_RestrictionsCopyWith<_$_Restrictions> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackArtist _$TrackArtistFromJson(Map<String, dynamic> json) {
  return _TrackArtist.fromJson(json);
}

/// @nodoc
mixin _$TrackArtist {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackArtistCopyWith<TrackArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackArtistCopyWith<$Res> {
  factory $TrackArtistCopyWith(
          TrackArtist value, $Res Function(TrackArtist) then) =
      _$TrackArtistCopyWithImpl<$Res, TrackArtist>;
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class _$TrackArtistCopyWithImpl<$Res, $Val extends TrackArtist>
    implements $TrackArtistCopyWith<$Res> {
  _$TrackArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? genres = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_TrackArtistCopyWith<$Res>
    implements $TrackArtistCopyWith<$Res> {
  factory _$$_TrackArtistCopyWith(
          _$_TrackArtist value, $Res Function(_$_TrackArtist) then) =
      __$$_TrackArtistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Image>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$_TrackArtistCopyWithImpl<$Res>
    extends _$TrackArtistCopyWithImpl<$Res, _$_TrackArtist>
    implements _$$_TrackArtistCopyWith<$Res> {
  __$$_TrackArtistCopyWithImpl(
      _$_TrackArtist _value, $Res Function(_$_TrackArtist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? genres = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_TrackArtist(
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_TrackArtist implements _TrackArtist {
  const _$_TrackArtist(
      {this.externalUrls,
      this.followers,
      final List<String>? genres,
      this.href,
      this.id,
      final List<Image>? images,
      this.name,
      this.popularity,
      this.type,
      this.uri})
      : _genres = genres,
        _images = images;

  factory _$_TrackArtist.fromJson(Map<String, dynamic> json) =>
      _$$_TrackArtistFromJson(json);

  @override
  final ExternalUrls? externalUrls;
  @override
  final Followers? followers;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? href;
  @override
  final String? id;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final int? popularity;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'TrackArtist(externalUrls: $externalUrls, followers: $followers, genres: $genres, href: $href, id: $id, images: $images, name: $name, popularity: $popularity, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackArtist &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      externalUrls,
      followers,
      const DeepCollectionEquality().hash(_genres),
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      popularity,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackArtistCopyWith<_$_TrackArtist> get copyWith =>
      __$$_TrackArtistCopyWithImpl<_$_TrackArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackArtistToJson(
      this,
    );
  }
}

abstract class _TrackArtist implements TrackArtist {
  const factory _TrackArtist(
      {final ExternalUrls? externalUrls,
      final Followers? followers,
      final List<String>? genres,
      final String? href,
      final String? id,
      final List<Image>? images,
      final String? name,
      final int? popularity,
      final String? type,
      final String? uri}) = _$_TrackArtist;

  factory _TrackArtist.fromJson(Map<String, dynamic> json) =
      _$_TrackArtist.fromJson;

  @override
  ExternalUrls? get externalUrls;
  @override
  Followers? get followers;
  @override
  List<String>? get genres;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<Image>? get images;
  @override
  String? get name;
  @override
  int? get popularity;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_TrackArtistCopyWith<_$_TrackArtist> get copyWith =>
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
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Followers implements _Followers {
  const _$_Followers({this.href, this.total});

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
  const factory _Followers({final String? href, final int? total}) =
      _$_Followers;

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

LinkedFrom _$LinkedFromFromJson(Map<String, dynamic> json) {
  return _LinkedFrom.fromJson(json);
}

/// @nodoc
mixin _$LinkedFrom {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedFromCopyWith<$Res> {
  factory $LinkedFromCopyWith(
          LinkedFrom value, $Res Function(LinkedFrom) then) =
      _$LinkedFromCopyWithImpl<$Res, LinkedFrom>;
}

/// @nodoc
class _$LinkedFromCopyWithImpl<$Res, $Val extends LinkedFrom>
    implements $LinkedFromCopyWith<$Res> {
  _$LinkedFromCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LinkedFromCopyWith<$Res> {
  factory _$$_LinkedFromCopyWith(
          _$_LinkedFrom value, $Res Function(_$_LinkedFrom) then) =
      __$$_LinkedFromCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LinkedFromCopyWithImpl<$Res>
    extends _$LinkedFromCopyWithImpl<$Res, _$_LinkedFrom>
    implements _$$_LinkedFromCopyWith<$Res> {
  __$$_LinkedFromCopyWithImpl(
      _$_LinkedFrom _value, $Res Function(_$_LinkedFrom) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_LinkedFrom implements _LinkedFrom {
  const _$_LinkedFrom();

  factory _$_LinkedFrom.fromJson(Map<String, dynamic> json) =>
      _$$_LinkedFromFromJson(json);

  @override
  String toString() {
    return 'LinkedFrom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LinkedFrom);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkedFromToJson(
      this,
    );
  }
}

abstract class _LinkedFrom implements LinkedFrom {
  const factory _LinkedFrom() = _$_LinkedFrom;

  factory _LinkedFrom.fromJson(Map<String, dynamic> json) =
      _$_LinkedFrom.fromJson;
}
