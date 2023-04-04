// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'albums.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return _Albums.fromJson(json);
}

/// @nodoc
mixin _$Albums {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsAlbum>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

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
      List<ItemsAlbum>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
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
    Object? items = freezed,
    Object? limit = freezed,
    Object? next = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsAlbum>?,
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
      List<ItemsAlbum>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
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
    Object? items = freezed,
    Object? limit = freezed,
    Object? next = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Albums(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsAlbum>?,
      freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
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
class _$_Albums implements _Albums {
  const _$_Albums(this.href, final List<ItemsAlbum>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$_Albums.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumsFromJson(json);

  @override
  final String? href;
  final List<ItemsAlbum>? _items;
  @override
  List<ItemsAlbum>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  @override
  String toString() {
    return 'Albums(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Albums &&
            (identical(other.href, href) || other.href == href) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      href,
      const DeepCollectionEquality().hash(_items),
      limit,
      next,
      offset,
      previous,
      total);

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
      final String? href,
      final List<ItemsAlbum>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$_Albums;

  factory _Albums.fromJson(Map<String, dynamic> json) = _$_Albums.fromJson;

  @override
  String? get href;
  @override
  List<ItemsAlbum>? get items;
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
  @JsonKey(ignore: true)
  _$$_AlbumsCopyWith<_$_Albums> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsAlbum _$ItemsAlbumFromJson(Map<String, dynamic> json) {
  return _ItemsAlbumAlbums.fromJson(json);
}

/// @nodoc
mixin _$ItemsAlbum {
  String? get albumGroup => throw _privateConstructorUsedError;
  String? get albumType => throw _privateConstructorUsedError;
  List<ArtistsAlbums>? get artists => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  ExternalUrlsAlbums? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesAlbums>? get images => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  int? get totalTracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsAlbumCopyWith<ItemsAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsAlbumCopyWith<$Res> {
  factory $ItemsAlbumCopyWith(
          ItemsAlbum value, $Res Function(ItemsAlbum) then) =
      _$ItemsAlbumCopyWithImpl<$Res, ItemsAlbum>;
  @useResult
  $Res call(
      {String? albumGroup,
      String? albumType,
      List<ArtistsAlbums>? artists,
      List<String>? availableMarkets,
      ExternalUrlsAlbums? externalUrls,
      String? href,
      String? id,
      List<ImagesAlbums>? images,
      bool? isPlayable,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      int? totalTracks,
      String? type,
      String? uri});

  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$ItemsAlbumCopyWithImpl<$Res, $Val extends ItemsAlbum>
    implements $ItemsAlbumCopyWith<$Res> {
  _$ItemsAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumGroup = freezed,
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isPlayable = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? totalTracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      albumGroup: freezed == albumGroup
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistsAlbums>?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsAlbums?,
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
              as List<ImagesAlbums>?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      totalTracks: freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
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
  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsAlbumsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemsAlbumAlbumsCopyWith<$Res>
    implements $ItemsAlbumCopyWith<$Res> {
  factory _$$_ItemsAlbumAlbumsCopyWith(
          _$_ItemsAlbumAlbums value, $Res Function(_$_ItemsAlbumAlbums) then) =
      __$$_ItemsAlbumAlbumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? albumGroup,
      String? albumType,
      List<ArtistsAlbums>? artists,
      List<String>? availableMarkets,
      ExternalUrlsAlbums? externalUrls,
      String? href,
      String? id,
      List<ImagesAlbums>? images,
      bool? isPlayable,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      int? totalTracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$_ItemsAlbumAlbumsCopyWithImpl<$Res>
    extends _$ItemsAlbumCopyWithImpl<$Res, _$_ItemsAlbumAlbums>
    implements _$$_ItemsAlbumAlbumsCopyWith<$Res> {
  __$$_ItemsAlbumAlbumsCopyWithImpl(
      _$_ItemsAlbumAlbums _value, $Res Function(_$_ItemsAlbumAlbums) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumGroup = freezed,
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? availableMarkets = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isPlayable = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? totalTracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_ItemsAlbumAlbums(
      freezed == albumGroup
          ? _value.albumGroup
          : albumGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistsAlbums>?,
      freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsAlbums?,
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
              as List<ImagesAlbums>?,
      freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      freezed == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
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
class _$_ItemsAlbumAlbums implements _ItemsAlbumAlbums {
  const _$_ItemsAlbumAlbums(
      this.albumGroup,
      this.albumType,
      final List<ArtistsAlbums>? artists,
      final List<String>? availableMarkets,
      this.externalUrls,
      this.href,
      this.id,
      final List<ImagesAlbums>? images,
      this.isPlayable,
      this.name,
      this.releaseDate,
      this.releaseDatePrecision,
      this.totalTracks,
      this.type,
      this.uri)
      : _artists = artists,
        _availableMarkets = availableMarkets,
        _images = images;

  factory _$_ItemsAlbumAlbums.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsAlbumAlbumsFromJson(json);

  @override
  final String? albumGroup;
  @override
  final String? albumType;
  final List<ArtistsAlbums>? _artists;
  @override
  List<ArtistsAlbums>? get artists {
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
  final ExternalUrlsAlbums? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  final List<ImagesAlbums>? _images;
  @override
  List<ImagesAlbums>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isPlayable;
  @override
  final String? name;
  @override
  final String? releaseDate;
  @override
  final String? releaseDatePrecision;
  @override
  final int? totalTracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'ItemsAlbum(albumGroup: $albumGroup, albumType: $albumType, artists: $artists, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, isPlayable: $isPlayable, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsAlbumAlbums &&
            (identical(other.albumGroup, albumGroup) ||
                other.albumGroup == albumGroup) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumGroup,
      albumType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      isPlayable,
      name,
      releaseDate,
      releaseDatePrecision,
      totalTracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsAlbumAlbumsCopyWith<_$_ItemsAlbumAlbums> get copyWith =>
      __$$_ItemsAlbumAlbumsCopyWithImpl<_$_ItemsAlbumAlbums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsAlbumAlbumsToJson(
      this,
    );
  }
}

abstract class _ItemsAlbumAlbums implements ItemsAlbum {
  const factory _ItemsAlbumAlbums(
      final String? albumGroup,
      final String? albumType,
      final List<ArtistsAlbums>? artists,
      final List<String>? availableMarkets,
      final ExternalUrlsAlbums? externalUrls,
      final String? href,
      final String? id,
      final List<ImagesAlbums>? images,
      final bool? isPlayable,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final int? totalTracks,
      final String? type,
      final String? uri) = _$_ItemsAlbumAlbums;

  factory _ItemsAlbumAlbums.fromJson(Map<String, dynamic> json) =
      _$_ItemsAlbumAlbums.fromJson;

  @override
  String? get albumGroup;
  @override
  String? get albumType;
  @override
  List<ArtistsAlbums>? get artists;
  @override
  List<String>? get availableMarkets;
  @override
  ExternalUrlsAlbums? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<ImagesAlbums>? get images;
  @override
  bool? get isPlayable;
  @override
  String? get name;
  @override
  String? get releaseDate;
  @override
  String? get releaseDatePrecision;
  @override
  int? get totalTracks;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsAlbumAlbumsCopyWith<_$_ItemsAlbumAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistsAlbums _$ArtistsAlbumsFromJson(Map<String, dynamic> json) {
  return _ArtistsAlbums.fromJson(json);
}

/// @nodoc
mixin _$ArtistsAlbums {
  ExternalUrlsAlbums? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsAlbumsCopyWith<ArtistsAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsAlbumsCopyWith<$Res> {
  factory $ArtistsAlbumsCopyWith(
          ArtistsAlbums value, $Res Function(ArtistsAlbums) then) =
      _$ArtistsAlbumsCopyWithImpl<$Res, ArtistsAlbums>;
  @useResult
  $Res call(
      {ExternalUrlsAlbums? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$ArtistsAlbumsCopyWithImpl<$Res, $Val extends ArtistsAlbums>
    implements $ArtistsAlbumsCopyWith<$Res> {
  _$ArtistsAlbumsCopyWithImpl(this._value, this._then);

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
              as ExternalUrlsAlbums?,
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
  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsAlbumsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArtistsAlbumsCopyWith<$Res>
    implements $ArtistsAlbumsCopyWith<$Res> {
  factory _$$_ArtistsAlbumsCopyWith(
          _$_ArtistsAlbums value, $Res Function(_$_ArtistsAlbums) then) =
      __$$_ArtistsAlbumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrlsAlbums? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  @override
  $ExternalUrlsAlbumsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$_ArtistsAlbumsCopyWithImpl<$Res>
    extends _$ArtistsAlbumsCopyWithImpl<$Res, _$_ArtistsAlbums>
    implements _$$_ArtistsAlbumsCopyWith<$Res> {
  __$$_ArtistsAlbumsCopyWithImpl(
      _$_ArtistsAlbums _value, $Res Function(_$_ArtistsAlbums) _then)
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
    return _then(_$_ArtistsAlbums(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsAlbums?,
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
class _$_ArtistsAlbums implements _ArtistsAlbums {
  const _$_ArtistsAlbums(
      this.externalUrls, this.href, this.id, this.name, this.type, this.uri);

  factory _$_ArtistsAlbums.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistsAlbumsFromJson(json);

  @override
  final ExternalUrlsAlbums? externalUrls;
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
    return 'ArtistsAlbums(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtistsAlbums &&
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
  _$$_ArtistsAlbumsCopyWith<_$_ArtistsAlbums> get copyWith =>
      __$$_ArtistsAlbumsCopyWithImpl<_$_ArtistsAlbums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistsAlbumsToJson(
      this,
    );
  }
}

abstract class _ArtistsAlbums implements ArtistsAlbums {
  const factory _ArtistsAlbums(
      final ExternalUrlsAlbums? externalUrls,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri) = _$_ArtistsAlbums;

  factory _ArtistsAlbums.fromJson(Map<String, dynamic> json) =
      _$_ArtistsAlbums.fromJson;

  @override
  ExternalUrlsAlbums? get externalUrls;
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
  _$$_ArtistsAlbumsCopyWith<_$_ArtistsAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsAlbums _$ExternalUrlsAlbumsFromJson(Map<String, dynamic> json) {
  return _ExternalUrlsAlbums.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsAlbums {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsAlbumsCopyWith<ExternalUrlsAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsAlbumsCopyWith<$Res> {
  factory $ExternalUrlsAlbumsCopyWith(
          ExternalUrlsAlbums value, $Res Function(ExternalUrlsAlbums) then) =
      _$ExternalUrlsAlbumsCopyWithImpl<$Res, ExternalUrlsAlbums>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsAlbumsCopyWithImpl<$Res, $Val extends ExternalUrlsAlbums>
    implements $ExternalUrlsAlbumsCopyWith<$Res> {
  _$ExternalUrlsAlbumsCopyWithImpl(this._value, this._then);

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
abstract class _$$_ExternalUrlsAlbumsCopyWith<$Res>
    implements $ExternalUrlsAlbumsCopyWith<$Res> {
  factory _$$_ExternalUrlsAlbumsCopyWith(_$_ExternalUrlsAlbums value,
          $Res Function(_$_ExternalUrlsAlbums) then) =
      __$$_ExternalUrlsAlbumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$_ExternalUrlsAlbumsCopyWithImpl<$Res>
    extends _$ExternalUrlsAlbumsCopyWithImpl<$Res, _$_ExternalUrlsAlbums>
    implements _$$_ExternalUrlsAlbumsCopyWith<$Res> {
  __$$_ExternalUrlsAlbumsCopyWithImpl(
      _$_ExternalUrlsAlbums _value, $Res Function(_$_ExternalUrlsAlbums) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$_ExternalUrlsAlbums(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExternalUrlsAlbums implements _ExternalUrlsAlbums {
  const _$_ExternalUrlsAlbums(this.spotify);

  factory _$_ExternalUrlsAlbums.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalUrlsAlbumsFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsAlbums(spotify: $spotify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalUrlsAlbums &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalUrlsAlbumsCopyWith<_$_ExternalUrlsAlbums> get copyWith =>
      __$$_ExternalUrlsAlbumsCopyWithImpl<_$_ExternalUrlsAlbums>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalUrlsAlbumsToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsAlbums implements ExternalUrlsAlbums {
  const factory _ExternalUrlsAlbums(final String? spotify) =
      _$_ExternalUrlsAlbums;

  factory _ExternalUrlsAlbums.fromJson(Map<String, dynamic> json) =
      _$_ExternalUrlsAlbums.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalUrlsAlbumsCopyWith<_$_ExternalUrlsAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesAlbums _$ImagesAlbumsFromJson(Map<String, dynamic> json) {
  return _ImagesAlbums.fromJson(json);
}

/// @nodoc
mixin _$ImagesAlbums {
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesAlbumsCopyWith<ImagesAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesAlbumsCopyWith<$Res> {
  factory $ImagesAlbumsCopyWith(
          ImagesAlbums value, $Res Function(ImagesAlbums) then) =
      _$ImagesAlbumsCopyWithImpl<$Res, ImagesAlbums>;
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class _$ImagesAlbumsCopyWithImpl<$Res, $Val extends ImagesAlbums>
    implements $ImagesAlbumsCopyWith<$Res> {
  _$ImagesAlbumsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImagesAlbumsCopyWith<$Res>
    implements $ImagesAlbumsCopyWith<$Res> {
  factory _$$_ImagesAlbumsCopyWith(
          _$_ImagesAlbums value, $Res Function(_$_ImagesAlbums) then) =
      __$$_ImagesAlbumsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$_ImagesAlbumsCopyWithImpl<$Res>
    extends _$ImagesAlbumsCopyWithImpl<$Res, _$_ImagesAlbums>
    implements _$$_ImagesAlbumsCopyWith<$Res> {
  __$$_ImagesAlbumsCopyWithImpl(
      _$_ImagesAlbums _value, $Res Function(_$_ImagesAlbums) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ImagesAlbums(
      freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ImagesAlbums implements _ImagesAlbums {
  const _$_ImagesAlbums(this.height, this.url, this.width);

  factory _$_ImagesAlbums.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesAlbumsFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesAlbums(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesAlbums &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImagesAlbumsCopyWith<_$_ImagesAlbums> get copyWith =>
      __$$_ImagesAlbumsCopyWithImpl<_$_ImagesAlbums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesAlbumsToJson(
      this,
    );
  }
}

abstract class _ImagesAlbums implements ImagesAlbums {
  const factory _ImagesAlbums(
      final int? height, final String? url, final int? width) = _$_ImagesAlbums;

  factory _ImagesAlbums.fromJson(Map<String, dynamic> json) =
      _$_ImagesAlbums.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesAlbumsCopyWith<_$_ImagesAlbums> get copyWith =>
      throw _privateConstructorUsedError;
}
