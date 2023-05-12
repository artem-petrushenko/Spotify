// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_releases_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewReleasesEntity _$NewReleasesEntityFromJson(Map<String, dynamic> json) {
  return _NewReleasesEntity.fromJson(json);
}

/// @nodoc
mixin _$NewReleasesEntity {
  Albums? get albums => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewReleasesEntityCopyWith<NewReleasesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewReleasesEntityCopyWith<$Res> {
  factory $NewReleasesEntityCopyWith(
          NewReleasesEntity value, $Res Function(NewReleasesEntity) then) =
      _$NewReleasesEntityCopyWithImpl<$Res, NewReleasesEntity>;
  @useResult
  $Res call({Albums? albums});

  $AlbumsCopyWith<$Res>? get albums;
}

/// @nodoc
class _$NewReleasesEntityCopyWithImpl<$Res, $Val extends NewReleasesEntity>
    implements $NewReleasesEntityCopyWith<$Res> {
  _$NewReleasesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_value.copyWith(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumsCopyWith<$Res>? get albums {
    if (_value.albums == null) {
      return null;
    }

    return $AlbumsCopyWith<$Res>(_value.albums!, (value) {
      return _then(_value.copyWith(albums: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewReleasesEntityCopyWith<$Res>
    implements $NewReleasesEntityCopyWith<$Res> {
  factory _$$_NewReleasesEntityCopyWith(_$_NewReleasesEntity value,
          $Res Function(_$_NewReleasesEntity) then) =
      __$$_NewReleasesEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Albums? albums});

  @override
  $AlbumsCopyWith<$Res>? get albums;
}

/// @nodoc
class __$$_NewReleasesEntityCopyWithImpl<$Res>
    extends _$NewReleasesEntityCopyWithImpl<$Res, _$_NewReleasesEntity>
    implements _$$_NewReleasesEntityCopyWith<$Res> {
  __$$_NewReleasesEntityCopyWithImpl(
      _$_NewReleasesEntity _value, $Res Function(_$_NewReleasesEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
  }) {
    return _then(_$_NewReleasesEntity(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_NewReleasesEntity implements _NewReleasesEntity {
  const _$_NewReleasesEntity({this.albums});

  factory _$_NewReleasesEntity.fromJson(Map<String, dynamic> json) =>
      _$$_NewReleasesEntityFromJson(json);

  @override
  final Albums? albums;

  @override
  String toString() {
    return 'NewReleasesEntity(albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewReleasesEntity &&
            (identical(other.albums, albums) || other.albums == albums));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, albums);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewReleasesEntityCopyWith<_$_NewReleasesEntity> get copyWith =>
      __$$_NewReleasesEntityCopyWithImpl<_$_NewReleasesEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewReleasesEntityToJson(
      this,
    );
  }
}

abstract class _NewReleasesEntity implements NewReleasesEntity {
  const factory _NewReleasesEntity({final Albums? albums}) =
      _$_NewReleasesEntity;

  factory _NewReleasesEntity.fromJson(Map<String, dynamic> json) =
      _$_NewReleasesEntity.fromJson;

  @override
  Albums? get albums;
  @override
  @JsonKey(ignore: true)
  _$$_NewReleasesEntityCopyWith<_$_NewReleasesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return _Albums.fromJson(json);
}

/// @nodoc
mixin _$Albums {
  String? get href => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  List<ItemNewRelease>? get itemNewReleases =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumsCopyWith<Albums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsCopyWith<$Res> {
  factory $AlbumsCopyWith(Albums value, $Res Function(Albums) then) =
      _$AlbumsCopyWithImpl<$Res, Albums>;
  @useResult
  $Res call(
      {String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total,
      List<ItemNewRelease>? itemNewReleases});
}

/// @nodoc
class _$AlbumsCopyWithImpl<$Res, $Val extends Albums>
    implements $AlbumsCopyWith<$Res> {
  _$AlbumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? limit = freezed,
    Object? next = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? itemNewReleases = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      itemNewReleases: freezed == itemNewReleases
          ? _value.itemNewReleases
          : itemNewReleases // ignore: cast_nullable_to_non_nullable
              as List<ItemNewRelease>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumsCopyWith<$Res> implements $AlbumsCopyWith<$Res> {
  factory _$$_AlbumsCopyWith(_$_Albums value, $Res Function(_$_Albums) then) =
      __$$_AlbumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total,
      List<ItemNewRelease>? itemNewReleases});
}

/// @nodoc
class __$$_AlbumsCopyWithImpl<$Res>
    extends _$AlbumsCopyWithImpl<$Res, _$_Albums>
    implements _$$_AlbumsCopyWith<$Res> {
  __$$_AlbumsCopyWithImpl(_$_Albums _value, $Res Function(_$_Albums) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? limit = freezed,
    Object? next = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
    Object? itemNewReleases = freezed,
  }) {
    return _then(_$_Albums(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      itemNewReleases: freezed == itemNewReleases
          ? _value._itemNewReleases
          : itemNewReleases // ignore: cast_nullable_to_non_nullable
              as List<ItemNewRelease>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Albums implements _Albums {
  const _$_Albums(
      {this.href,
      this.limit,
      this.next,
      this.offset,
      this.previous,
      this.total,
      final List<ItemNewRelease>? itemNewReleases})
      : _itemNewReleases = itemNewReleases;

  factory _$_Albums.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumsFromJson(json);

  @override
  final String? href;
  @override
  final int? limit;
  @override
  final String? next;
  @override
  final int? offset;
  @override
  final String? previous;
  @override
  final int? total;
  final List<ItemNewRelease>? _itemNewReleases;
  @override
  List<ItemNewRelease>? get itemNewReleases {
    final value = _itemNewReleases;
    if (value == null) return null;
    if (_itemNewReleases is EqualUnmodifiableListView) return _itemNewReleases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Albums(href: $href, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total, itemNewReleases: $itemNewReleases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Albums &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._itemNewReleases, _itemNewReleases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, limit, next, offset,
      previous, total, const DeepCollectionEquality().hash(_itemNewReleases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumsCopyWith<_$_Albums> get copyWith =>
      __$$_AlbumsCopyWithImpl<_$_Albums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumsToJson(
      this,
    );
  }
}

abstract class _Albums implements Albums {
  const factory _Albums(
      {final String? href,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total,
      final List<ItemNewRelease>? itemNewReleases}) = _$_Albums;

  factory _Albums.fromJson(Map<String, dynamic> json) = _$_Albums.fromJson;

  @override
  String? get href;
  @override
  int? get limit;
  @override
  String? get next;
  @override
  int? get offset;
  @override
  String? get previous;
  @override
  int? get total;
  @override
  List<ItemNewRelease>? get itemNewReleases;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumsCopyWith<_$_Albums> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemNewRelease _$ItemNewReleaseFromJson(Map<String, dynamic> json) {
  return _ItemNewRelease.fromJson(json);
}

/// @nodoc
mixin _$ItemNewRelease {
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
  List<Artist>? get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemNewReleaseCopyWith<ItemNewRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemNewReleaseCopyWith<$Res> {
  factory $ItemNewReleaseCopyWith(
          ItemNewRelease value, $Res Function(ItemNewRelease) then) =
      _$ItemNewReleaseCopyWithImpl<$Res, ItemNewRelease>;
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
      List<Artist>? artists});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $RestrictionsCopyWith<$Res>? get restrictions;
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class _$ItemNewReleaseCopyWithImpl<$Res, $Val extends ItemNewRelease>
    implements $ItemNewReleaseCopyWith<$Res> {
  _$ItemNewReleaseCopyWithImpl(this._value, this._then);

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
              as List<Artist>?,
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
abstract class _$$_ItemNewReleaseCopyWith<$Res>
    implements $ItemNewReleaseCopyWith<$Res> {
  factory _$$_ItemNewReleaseCopyWith(
          _$_ItemNewRelease value, $Res Function(_$_ItemNewRelease) then) =
      __$$_ItemNewReleaseCopyWithImpl<$Res>;
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
      List<Artist>? artists});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $RestrictionsCopyWith<$Res>? get restrictions;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
}

/// @nodoc
class __$$_ItemNewReleaseCopyWithImpl<$Res>
    extends _$ItemNewReleaseCopyWithImpl<$Res, _$_ItemNewRelease>
    implements _$$_ItemNewReleaseCopyWith<$Res> {
  __$$_ItemNewReleaseCopyWithImpl(
      _$_ItemNewRelease _value, $Res Function(_$_ItemNewRelease) _then)
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
    return _then(_$_ItemNewRelease(
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
              as List<Artist>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ItemNewRelease implements _ItemNewRelease {
  const _$_ItemNewRelease(
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
      final List<Artist>? artists})
      : _availableMarkets = availableMarkets,
        _images = images,
        _copyrights = copyrights,
        _genres = genres,
        _artists = artists;

  factory _$_ItemNewRelease.fromJson(Map<String, dynamic> json) =>
      _$$_ItemNewReleaseFromJson(json);

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
  final List<Artist>? _artists;
  @override
  List<Artist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemNewRelease(albumType: $albumType, totalTracks: $totalTracks, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, restrictions: $restrictions, type: $type, uri: $uri, copyrights: $copyrights, externalIds: $externalIds, genres: $genres, label: $label, popularity: $popularity, albumGroup: $albumGroup, artists: $artists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemNewRelease &&
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
  _$$_ItemNewReleaseCopyWith<_$_ItemNewRelease> get copyWith =>
      __$$_ItemNewReleaseCopyWithImpl<_$_ItemNewRelease>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemNewReleaseToJson(
      this,
    );
  }
}

abstract class _ItemNewRelease implements ItemNewRelease {
  const factory _ItemNewRelease(
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
      final List<Artist>? artists}) = _$_ItemNewRelease;

  factory _ItemNewRelease.fromJson(Map<String, dynamic> json) =
      _$_ItemNewRelease.fromJson;

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
  List<Artist>? get artists;
  @override
  @JsonKey(ignore: true)
  _$$_ItemNewReleaseCopyWith<_$_ItemNewRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
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
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$_ArtistCopyWith(_$_Artist value, $Res Function(_$_Artist) then) =
      __$$_ArtistCopyWithImpl<$Res>;
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
class __$$_ArtistCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$_Artist>
    implements _$$_ArtistCopyWith<$Res> {
  __$$_ArtistCopyWithImpl(_$_Artist _value, $Res Function(_$_Artist) _then)
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
    return _then(_$_Artist(
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
class _$_Artist implements _Artist {
  const _$_Artist(
      {this.externalUrls, this.href, this.id, this.name, this.type, this.uri});

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

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
    return 'Artist(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artist &&
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
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      __$$_ArtistCopyWithImpl<_$_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

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
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
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
