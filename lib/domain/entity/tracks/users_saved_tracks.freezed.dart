// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_saved_tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersSavedTracksModel _$UsersSavedTracksModelFromJson(
    Map<String, dynamic> json) {
  return _UsersSavedTracksModel.fromJson(json);
}

/// @nodoc
mixin _$UsersSavedTracksModel {
  String get href => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<Items> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersSavedTracksModelCopyWith<UsersSavedTracksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSavedTracksModelCopyWith<$Res> {
  factory $UsersSavedTracksModelCopyWith(UsersSavedTracksModel value,
          $Res Function(UsersSavedTracksModel) then) =
      _$UsersSavedTracksModelCopyWithImpl<$Res, UsersSavedTracksModel>;
  @useResult
  $Res call(
      {String href,
      int limit,
      String? next,
      int offset,
      String? previous,
      int total,
      List<Items> items});
}

/// @nodoc
class _$UsersSavedTracksModelCopyWithImpl<$Res,
        $Val extends UsersSavedTracksModel>
    implements $UsersSavedTracksModelCopyWith<$Res> {
  _$UsersSavedTracksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? limit = null,
    Object? next = freezed,
    Object? offset = null,
    Object? previous = freezed,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersSavedTracksModelImplCopyWith<$Res>
    implements $UsersSavedTracksModelCopyWith<$Res> {
  factory _$$UsersSavedTracksModelImplCopyWith(
          _$UsersSavedTracksModelImpl value,
          $Res Function(_$UsersSavedTracksModelImpl) then) =
      __$$UsersSavedTracksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      int limit,
      String? next,
      int offset,
      String? previous,
      int total,
      List<Items> items});
}

/// @nodoc
class __$$UsersSavedTracksModelImplCopyWithImpl<$Res>
    extends _$UsersSavedTracksModelCopyWithImpl<$Res,
        _$UsersSavedTracksModelImpl>
    implements _$$UsersSavedTracksModelImplCopyWith<$Res> {
  __$$UsersSavedTracksModelImplCopyWithImpl(_$UsersSavedTracksModelImpl _value,
      $Res Function(_$UsersSavedTracksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? limit = null,
    Object? next = freezed,
    Object? offset = null,
    Object? previous = freezed,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$UsersSavedTracksModelImpl(
      null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UsersSavedTracksModelImpl implements _UsersSavedTracksModel {
  const _$UsersSavedTracksModelImpl(this.href, this.limit, this.next,
      this.offset, this.previous, this.total, final List<Items> items)
      : _items = items;

  factory _$UsersSavedTracksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersSavedTracksModelImplFromJson(json);

  @override
  final String href;
  @override
  final int limit;
  @override
  final String? next;
  @override
  final int offset;
  @override
  final String? previous;
  @override
  final int total;
  final List<Items> _items;
  @override
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'UsersSavedTracksModel(href: $href, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersSavedTracksModelImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, limit, next, offset,
      previous, total, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersSavedTracksModelImplCopyWith<_$UsersSavedTracksModelImpl>
      get copyWith => __$$UsersSavedTracksModelImplCopyWithImpl<
          _$UsersSavedTracksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersSavedTracksModelImplToJson(
      this,
    );
  }
}

abstract class _UsersSavedTracksModel implements UsersSavedTracksModel {
  const factory _UsersSavedTracksModel(
      final String href,
      final int limit,
      final String? next,
      final int offset,
      final String? previous,
      final int total,
      final List<Items> items) = _$UsersSavedTracksModelImpl;

  factory _UsersSavedTracksModel.fromJson(Map<String, dynamic> json) =
      _$UsersSavedTracksModelImpl.fromJson;

  @override
  String get href;
  @override
  int get limit;
  @override
  String? get next;
  @override
  int get offset;
  @override
  String? get previous;
  @override
  int get total;
  @override
  List<Items> get items;
  @override
  @JsonKey(ignore: true)
  _$$UsersSavedTracksModelImplCopyWith<_$UsersSavedTracksModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String? get addedAt => throw _privateConstructorUsedError;
  Track? get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call({String? addedAt, Track? track});

  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

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
abstract class _$$ItemsImplCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$ItemsImplCopyWith(
          _$ItemsImpl value, $Res Function(_$ItemsImpl) then) =
      __$$ItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? addedAt, Track? track});

  @override
  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$$ItemsImplCopyWithImpl<$Res>
    extends _$ItemsCopyWithImpl<$Res, _$ItemsImpl>
    implements _$$ItemsImplCopyWith<$Res> {
  __$$ItemsImplCopyWithImpl(
      _$ItemsImpl _value, $Res Function(_$ItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedAt = freezed,
    Object? track = freezed,
  }) {
    return _then(_$ItemsImpl(
      freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ItemsImpl implements _Items {
  const _$ItemsImpl(this.addedAt, this.track);

  factory _$ItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsImplFromJson(json);

  @override
  final String? addedAt;
  @override
  final Track? track;

  @override
  String toString() {
    return 'Items(addedAt: $addedAt, track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsImpl &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.track, track) || other.track == track));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addedAt, track);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      __$$ItemsImplCopyWithImpl<_$ItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsImplToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(final String? addedAt, final Track? track) = _$ItemsImpl;

  factory _Items.fromJson(Map<String, dynamic> json) = _$ItemsImpl.fromJson;

  @override
  String? get addedAt;
  @override
  Track? get track;
  @override
  @JsonKey(ignore: true)
  _$$ItemsImplCopyWith<_$ItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  Album? get album => throw _privateConstructorUsedError;
  List<Artists>? get artists => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  int? get discNumber => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
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
      List<Artists>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
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
              as List<Artists>?,
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
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album? album,
      List<Artists>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      bool? isPlayable,
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
  $RestrictionsCopyWith<$Res>? get restrictions;
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
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
    Object? restrictions = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? isLocal = freezed,
  }) {
    return _then(_$TrackImpl(
      freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artists>?,
      freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$TrackImpl implements _Track {
  const _$TrackImpl(
      this.album,
      final List<Artists>? artists,
      final List<String>? availableMarkets,
      this.discNumber,
      this.durationMs,
      this.explicit,
      this.externalIds,
      this.externalUrls,
      this.href,
      this.id,
      this.isPlayable,
      this.restrictions,
      this.name,
      this.popularity,
      this.previewUrl,
      this.trackNumber,
      this.type,
      this.uri,
      this.isLocal)
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$TrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackImplFromJson(json);

  @override
  final Album? album;
  final List<Artists>? _artists;
  @override
  List<Artists>? get artists {
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
    return 'Track(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isPlayable: $isPlayable, restrictions: $restrictions, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri, isLocal: $isLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
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
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackImplToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      final Album? album,
      final List<Artists>? artists,
      final List<String>? availableMarkets,
      final int? discNumber,
      final int? durationMs,
      final bool? explicit,
      final ExternalIds? externalIds,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final bool? isPlayable,
      final Restrictions? restrictions,
      final String? name,
      final int? popularity,
      final String? previewUrl,
      final int? trackNumber,
      final String? type,
      final String? uri,
      final bool? isLocal) = _$TrackImpl;

  factory _Track.fromJson(Map<String, dynamic> json) = _$TrackImpl.fromJson;

  @override
  Album? get album;
  @override
  List<Artists>? get artists;
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
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
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
  List<Images>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  Restrictions? get restrictions => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  List<Copyrights>? get copyrights => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get albumGroup => throw _privateConstructorUsedError;
  List<Artists>? get artists => throw _privateConstructorUsedError;

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
      List<Images>? images,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String? uri,
      List<Copyrights>? copyrights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity,
      String? albumGroup,
      List<Artists>? artists});

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
              as List<Images>?,
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
              as List<Copyrights>?,
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
              as List<Artists>?,
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
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? albumType,
      int? totalTracks,
      List<String>? availableMarkets,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      List<Images>? images,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      Restrictions? restrictions,
      String? type,
      String? uri,
      List<Copyrights>? copyrights,
      ExternalIds? externalIds,
      List<String>? genres,
      String? label,
      int? popularity,
      String? albumGroup,
      List<Artists>? artists});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
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
    return _then(_$AlbumImpl(
      freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == restrictions
          ? _value.restrictions
          : restrictions // ignore: cast_nullable_to_non_nullable
              as Restrictions?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == copyrights
          ? _value._copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<Copyrights>?,
      freezed == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds?,
      freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == albumGroup
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artists>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      this.albumType,
      this.totalTracks,
      final List<String>? availableMarkets,
      this.externalUrls,
      this.href,
      this.id,
      final List<Images>? images,
      this.name,
      this.releaseDate,
      this.releaseDatePrecision,
      this.restrictions,
      this.type,
      this.uri,
      final List<Copyrights>? copyrights,
      this.externalIds,
      final List<String>? genres,
      this.label,
      this.popularity,
      this.albumGroup,
      final List<Artists>? artists)
      : _availableMarkets = availableMarkets,
        _images = images,
        _copyrights = copyrights,
        _genres = genres,
        _artists = artists;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

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
  final List<Images>? _images;
  @override
  List<Images>? get images {
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
  final List<Copyrights>? _copyrights;
  @override
  List<Copyrights>? get copyrights {
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
  final List<Artists>? _artists;
  @override
  List<Artists>? get artists {
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
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
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      final String? albumType,
      final int? totalTracks,
      final List<String>? availableMarkets,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final List<Images>? images,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final Restrictions? restrictions,
      final String? type,
      final String? uri,
      final List<Copyrights>? copyrights,
      final ExternalIds? externalIds,
      final List<String>? genres,
      final String? label,
      final int? popularity,
      final String? albumGroup,
      final List<Artists>? artists) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

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
  List<Images>? get images;
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
  List<Copyrights>? get copyrights;
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
  List<Artists>? get artists;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
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
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesImpl(
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
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(this.url, this.height, this.width);

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
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
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      final String? url, final int? height, final int? width) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
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
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl(this.spotify);

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls(final String? spotify) = _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
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
abstract class _$$RestrictionsImplCopyWith<$Res>
    implements $RestrictionsCopyWith<$Res> {
  factory _$$RestrictionsImplCopyWith(
          _$RestrictionsImpl value, $Res Function(_$RestrictionsImpl) then) =
      __$$RestrictionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$RestrictionsImplCopyWithImpl<$Res>
    extends _$RestrictionsCopyWithImpl<$Res, _$RestrictionsImpl>
    implements _$$RestrictionsImplCopyWith<$Res> {
  __$$RestrictionsImplCopyWithImpl(
      _$RestrictionsImpl _value, $Res Function(_$RestrictionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$RestrictionsImpl(
      freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$RestrictionsImpl implements _Restrictions {
  const _$RestrictionsImpl(this.reason);

  factory _$RestrictionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictionsImplFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'Restrictions(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictionsImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictionsImplCopyWith<_$RestrictionsImpl> get copyWith =>
      __$$RestrictionsImplCopyWithImpl<_$RestrictionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictionsImplToJson(
      this,
    );
  }
}

abstract class _Restrictions implements Restrictions {
  const factory _Restrictions(final String? reason) = _$RestrictionsImpl;

  factory _Restrictions.fromJson(Map<String, dynamic> json) =
      _$RestrictionsImpl.fromJson;

  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$RestrictionsImplCopyWith<_$RestrictionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Copyrights _$CopyrightsFromJson(Map<String, dynamic> json) {
  return _Copyrights.fromJson(json);
}

/// @nodoc
mixin _$Copyrights {
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopyrightsCopyWith<Copyrights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyrightsCopyWith<$Res> {
  factory $CopyrightsCopyWith(
          Copyrights value, $Res Function(Copyrights) then) =
      _$CopyrightsCopyWithImpl<$Res, Copyrights>;
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class _$CopyrightsCopyWithImpl<$Res, $Val extends Copyrights>
    implements $CopyrightsCopyWith<$Res> {
  _$CopyrightsCopyWithImpl(this._value, this._then);

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
abstract class _$$CopyrightsImplCopyWith<$Res>
    implements $CopyrightsCopyWith<$Res> {
  factory _$$CopyrightsImplCopyWith(
          _$CopyrightsImpl value, $Res Function(_$CopyrightsImpl) then) =
      __$$CopyrightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class __$$CopyrightsImplCopyWithImpl<$Res>
    extends _$CopyrightsCopyWithImpl<$Res, _$CopyrightsImpl>
    implements _$$CopyrightsImplCopyWith<$Res> {
  __$$CopyrightsImplCopyWithImpl(
      _$CopyrightsImpl _value, $Res Function(_$CopyrightsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CopyrightsImpl(
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CopyrightsImpl implements _Copyrights {
  const _$CopyrightsImpl(this.text, this.type);

  factory _$CopyrightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyrightsImplFromJson(json);

  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'Copyrights(text: $text, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyrightsImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyrightsImplCopyWith<_$CopyrightsImpl> get copyWith =>
      __$$CopyrightsImplCopyWithImpl<_$CopyrightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyrightsImplToJson(
      this,
    );
  }
}

abstract class _Copyrights implements Copyrights {
  const factory _Copyrights(final String? text, final String? type) =
      _$CopyrightsImpl;

  factory _Copyrights.fromJson(Map<String, dynamic> json) =
      _$CopyrightsImpl.fromJson;

  @override
  String? get text;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$CopyrightsImplCopyWith<_$CopyrightsImpl> get copyWith =>
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
abstract class _$$ExternalIdsImplCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$ExternalIdsImplCopyWith(
          _$ExternalIdsImpl value, $Res Function(_$ExternalIdsImpl) then) =
      __$$ExternalIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? isrc, String? ean, String? upc});
}

/// @nodoc
class __$$ExternalIdsImplCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$ExternalIdsImpl>
    implements _$$ExternalIdsImplCopyWith<$Res> {
  __$$ExternalIdsImplCopyWithImpl(
      _$ExternalIdsImpl _value, $Res Function(_$ExternalIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
    Object? ean = freezed,
    Object? upc = freezed,
  }) {
    return _then(_$ExternalIdsImpl(
      freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == ean
          ? _value.ean
          : ean // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl(this.isrc, this.ean, this.upc);

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
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
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      __$$ExternalIdsImplCopyWithImpl<_$ExternalIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdsImplToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds(
          final String? isrc, final String? ean, final String? upc) =
      _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  String? get isrc;
  @override
  String? get ean;
  @override
  String? get upc;
  @override
  @JsonKey(ignore: true)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return _Artists.fromJson(json);
}

/// @nodoc
mixin _$Artists {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsCopyWith<Artists> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsCopyWith<$Res> {
  factory $ArtistsCopyWith(Artists value, $Res Function(Artists) then) =
      _$ArtistsCopyWithImpl<$Res, Artists>;
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
class _$ArtistsCopyWithImpl<$Res, $Val extends Artists>
    implements $ArtistsCopyWith<$Res> {
  _$ArtistsCopyWithImpl(this._value, this._then);

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
abstract class _$$ArtistsImplCopyWith<$Res> implements $ArtistsCopyWith<$Res> {
  factory _$$ArtistsImplCopyWith(
          _$ArtistsImpl value, $Res Function(_$ArtistsImpl) then) =
      __$$ArtistsImplCopyWithImpl<$Res>;
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
class __$$ArtistsImplCopyWithImpl<$Res>
    extends _$ArtistsCopyWithImpl<$Res, _$ArtistsImpl>
    implements _$$ArtistsImplCopyWith<$Res> {
  __$$ArtistsImplCopyWithImpl(
      _$ArtistsImpl _value, $Res Function(_$ArtistsImpl) _then)
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
    return _then(_$ArtistsImpl(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$ArtistsImpl implements _Artists {
  const _$ArtistsImpl(
      this.externalUrls, this.href, this.id, this.name, this.type, this.uri);

  factory _$ArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsImplFromJson(json);

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
    return 'Artists(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsImpl &&
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
  _$$ArtistsImplCopyWith<_$ArtistsImpl> get copyWith =>
      __$$ArtistsImplCopyWithImpl<_$ArtistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistsImplToJson(
      this,
    );
  }
}

abstract class _Artists implements Artists {
  const factory _Artists(
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri) = _$ArtistsImpl;

  factory _Artists.fromJson(Map<String, dynamic> json) = _$ArtistsImpl.fromJson;

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
  _$$ArtistsImplCopyWith<_$ArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistsExtended _$ArtistsExtendedFromJson(Map<String, dynamic> json) {
  return _ArtistsExtended.fromJson(json);
}

/// @nodoc
mixin _$ArtistsExtended {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Images>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsExtendedCopyWith<ArtistsExtended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsExtendedCopyWith<$Res> {
  factory $ArtistsExtendedCopyWith(
          ArtistsExtended value, $Res Function(ArtistsExtended) then) =
      _$ArtistsExtendedCopyWithImpl<$Res, ArtistsExtended>;
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Images>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class _$ArtistsExtendedCopyWithImpl<$Res, $Val extends ArtistsExtended>
    implements $ArtistsExtendedCopyWith<$Res> {
  _$ArtistsExtendedCopyWithImpl(this._value, this._then);

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
              as List<Images>?,
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
abstract class _$$ArtistsExtendedImplCopyWith<$Res>
    implements $ArtistsExtendedCopyWith<$Res> {
  factory _$$ArtistsExtendedImplCopyWith(_$ArtistsExtendedImpl value,
          $Res Function(_$ArtistsExtendedImpl) then) =
      __$$ArtistsExtendedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Images>? images,
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
class __$$ArtistsExtendedImplCopyWithImpl<$Res>
    extends _$ArtistsExtendedCopyWithImpl<$Res, _$ArtistsExtendedImpl>
    implements _$$ArtistsExtendedImplCopyWith<$Res> {
  __$$ArtistsExtendedImplCopyWithImpl(
      _$ArtistsExtendedImpl _value, $Res Function(_$ArtistsExtendedImpl) _then)
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
    return _then(_$ArtistsExtendedImpl(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ArtistsExtendedImpl implements _ArtistsExtended {
  const _$ArtistsExtendedImpl(
      this.externalUrls,
      this.followers,
      final List<String>? genres,
      this.href,
      this.id,
      final List<Images>? images,
      this.name,
      this.popularity,
      this.type,
      this.uri)
      : _genres = genres,
        _images = images;

  factory _$ArtistsExtendedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsExtendedImplFromJson(json);

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
  final List<Images>? _images;
  @override
  List<Images>? get images {
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
    return 'ArtistsExtended(externalUrls: $externalUrls, followers: $followers, genres: $genres, href: $href, id: $id, images: $images, name: $name, popularity: $popularity, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsExtendedImpl &&
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
  _$$ArtistsExtendedImplCopyWith<_$ArtistsExtendedImpl> get copyWith =>
      __$$ArtistsExtendedImplCopyWithImpl<_$ArtistsExtendedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistsExtendedImplToJson(
      this,
    );
  }
}

abstract class _ArtistsExtended implements ArtistsExtended {
  const factory _ArtistsExtended(
      final ExternalUrls? externalUrls,
      final Followers? followers,
      final List<String>? genres,
      final String? href,
      final String? id,
      final List<Images>? images,
      final String? name,
      final int? popularity,
      final String? type,
      final String? uri) = _$ArtistsExtendedImpl;

  factory _ArtistsExtended.fromJson(Map<String, dynamic> json) =
      _$ArtistsExtendedImpl.fromJson;

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
  List<Images>? get images;
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
  _$$ArtistsExtendedImplCopyWith<_$ArtistsExtendedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return _Followers.fromJson(json);
}

/// @nodoc
mixin _$Followers {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Images>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

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
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Images>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
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
              as List<Images>?,
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
abstract class _$$FollowersImplCopyWith<$Res>
    implements $FollowersCopyWith<$Res> {
  factory _$$FollowersImplCopyWith(
          _$FollowersImpl value, $Res Function(_$FollowersImpl) then) =
      __$$FollowersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<Images>? images,
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
class __$$FollowersImplCopyWithImpl<$Res>
    extends _$FollowersCopyWithImpl<$Res, _$FollowersImpl>
    implements _$$FollowersImplCopyWith<$Res> {
  __$$FollowersImplCopyWithImpl(
      _$FollowersImpl _value, $Res Function(_$FollowersImpl) _then)
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
    return _then(_$FollowersImpl(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
      freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers?,
      freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$FollowersImpl implements _Followers {
  const _$FollowersImpl(
      this.externalUrls,
      this.followers,
      final List<String>? genres,
      this.href,
      this.id,
      final List<Images>? images,
      this.name,
      this.popularity,
      this.type,
      this.uri)
      : _genres = genres,
        _images = images;

  factory _$FollowersImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowersImplFromJson(json);

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
  final List<Images>? _images;
  @override
  List<Images>? get images {
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
    return 'Followers(externalUrls: $externalUrls, followers: $followers, genres: $genres, href: $href, id: $id, images: $images, name: $name, popularity: $popularity, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowersImpl &&
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
  _$$FollowersImplCopyWith<_$FollowersImpl> get copyWith =>
      __$$FollowersImplCopyWithImpl<_$FollowersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowersImplToJson(
      this,
    );
  }
}

abstract class _Followers implements Followers {
  const factory _Followers(
      final ExternalUrls? externalUrls,
      final Followers? followers,
      final List<String>? genres,
      final String? href,
      final String? id,
      final List<Images>? images,
      final String? name,
      final int? popularity,
      final String? type,
      final String? uri) = _$FollowersImpl;

  factory _Followers.fromJson(Map<String, dynamic> json) =
      _$FollowersImpl.fromJson;

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
  List<Images>? get images;
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
  _$$FollowersImplCopyWith<_$FollowersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
