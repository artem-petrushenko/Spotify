// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return _Tracks.fromJson(json);
}

/// @nodoc
mixin _$Tracks {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsTracks>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksCopyWith<Tracks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksCopyWith<$Res> {
  factory $TracksCopyWith(Tracks value, $Res Function(Tracks) then) =
      _$TracksCopyWithImpl<$Res, Tracks>;
  @useResult
  $Res call(
      {String? href,
      List<ItemsTracks>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class _$TracksCopyWithImpl<$Res, $Val extends Tracks>
    implements $TracksCopyWith<$Res> {
  _$TracksCopyWithImpl(this._value, this._then);

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
              as List<ItemsTracks>?,
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
abstract class _$$TracksImplCopyWith<$Res> implements $TracksCopyWith<$Res> {
  factory _$$TracksImplCopyWith(
          _$TracksImpl value, $Res Function(_$TracksImpl) then) =
      __$$TracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsTracks>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$TracksImplCopyWithImpl<$Res>
    extends _$TracksCopyWithImpl<$Res, _$TracksImpl>
    implements _$$TracksImplCopyWith<$Res> {
  __$$TracksImplCopyWithImpl(
      _$TracksImpl _value, $Res Function(_$TracksImpl) _then)
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
    return _then(_$TracksImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsTracks>?,
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
class _$TracksImpl implements _Tracks {
  const _$TracksImpl(this.href, final List<ItemsTracks>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$TracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksImplFromJson(json);

  @override
  final String? href;
  final List<ItemsTracks>? _items;
  @override
  List<ItemsTracks>? get items {
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
    return 'Tracks(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksImpl &&
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
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      __$$TracksImplCopyWithImpl<_$TracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracksImplToJson(
      this,
    );
  }
}

abstract class _Tracks implements Tracks {
  const factory _Tracks(
      final String? href,
      final List<ItemsTracks>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$TracksImpl;

  factory _Tracks.fromJson(Map<String, dynamic> json) = _$TracksImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsTracks>? get items;
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
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsTracks _$ItemsTracksFromJson(Map<String, dynamic> json) {
  return _ItemsTracks.fromJson(json);
}

/// @nodoc
mixin _$ItemsTracks {
  Album? get album => throw _privateConstructorUsedError;
  List<ArtistsTracks>? get artists => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  int? get discNumber => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalIds? get externalIds => throw _privateConstructorUsedError;
  ExternalUrlsTracks? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isLocal => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;
  int? get trackNumber => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsTracksCopyWith<ItemsTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsTracksCopyWith<$Res> {
  factory $ItemsTracksCopyWith(
          ItemsTracks value, $Res Function(ItemsTracks) then) =
      _$ItemsTracksCopyWithImpl<$Res, ItemsTracks>;
  @useResult
  $Res call(
      {Album? album,
      List<ArtistsTracks>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      bool? isLocal,
      String? name,
      int? popularity,
      String? previewUrl,
      int? trackNumber,
      String? type,
      String? uri});

  $AlbumCopyWith<$Res>? get album;
  $ExternalIdsCopyWith<$Res>? get externalIds;
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$ItemsTracksCopyWithImpl<$Res, $Val extends ItemsTracks>
    implements $ItemsTracksCopyWith<$Res> {
  _$ItemsTracksCopyWithImpl(this._value, this._then);

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
    Object? isLocal = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistsTracks>?,
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
              as ExternalUrlsTracks?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsTracksCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsTracksImplCopyWith<$Res>
    implements $ItemsTracksCopyWith<$Res> {
  factory _$$ItemsTracksImplCopyWith(
          _$ItemsTracksImpl value, $Res Function(_$ItemsTracksImpl) then) =
      __$$ItemsTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Album? album,
      List<ArtistsTracks>? artists,
      List<String>? availableMarkets,
      int? discNumber,
      int? durationMs,
      bool? explicit,
      ExternalIds? externalIds,
      ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      bool? isLocal,
      String? name,
      int? popularity,
      String? previewUrl,
      int? trackNumber,
      String? type,
      String? uri});

  @override
  $AlbumCopyWith<$Res>? get album;
  @override
  $ExternalIdsCopyWith<$Res>? get externalIds;
  @override
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$ItemsTracksImplCopyWithImpl<$Res>
    extends _$ItemsTracksCopyWithImpl<$Res, _$ItemsTracksImpl>
    implements _$$ItemsTracksImplCopyWith<$Res> {
  __$$ItemsTracksImplCopyWithImpl(
      _$ItemsTracksImpl _value, $Res Function(_$ItemsTracksImpl) _then)
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
    Object? isLocal = freezed,
    Object? name = freezed,
    Object? popularity = freezed,
    Object? previewUrl = freezed,
    Object? trackNumber = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$ItemsTracksImpl(
      freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album?,
      freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistsTracks>?,
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
              as ExternalUrlsTracks?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ItemsTracksImpl implements _ItemsTracks {
  const _$ItemsTracksImpl(
      this.album,
      final List<ArtistsTracks>? artists,
      final List<String>? availableMarkets,
      this.discNumber,
      this.durationMs,
      this.explicit,
      this.externalIds,
      this.externalUrls,
      this.href,
      this.id,
      this.isLocal,
      this.name,
      this.popularity,
      this.previewUrl,
      this.trackNumber,
      this.type,
      this.uri)
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$ItemsTracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsTracksImplFromJson(json);

  @override
  final Album? album;
  final List<ArtistsTracks>? _artists;
  @override
  List<ArtistsTracks>? get artists {
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
  final ExternalUrlsTracks? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final bool? isLocal;
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
  String toString() {
    return 'ItemsTracks(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isLocal: $isLocal, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsTracksImpl &&
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
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
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
      isLocal,
      name,
      popularity,
      previewUrl,
      trackNumber,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsTracksImplCopyWith<_$ItemsTracksImpl> get copyWith =>
      __$$ItemsTracksImplCopyWithImpl<_$ItemsTracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsTracksImplToJson(
      this,
    );
  }
}

abstract class _ItemsTracks implements ItemsTracks {
  const factory _ItemsTracks(
      final Album? album,
      final List<ArtistsTracks>? artists,
      final List<String>? availableMarkets,
      final int? discNumber,
      final int? durationMs,
      final bool? explicit,
      final ExternalIds? externalIds,
      final ExternalUrlsTracks? externalUrls,
      final String? href,
      final String? id,
      final bool? isLocal,
      final String? name,
      final int? popularity,
      final String? previewUrl,
      final int? trackNumber,
      final String? type,
      final String? uri) = _$ItemsTracksImpl;

  factory _ItemsTracks.fromJson(Map<String, dynamic> json) =
      _$ItemsTracksImpl.fromJson;

  @override
  Album? get album;
  @override
  List<ArtistsTracks>? get artists;
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
  ExternalUrlsTracks? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  bool? get isLocal;
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
  @JsonKey(ignore: true)
  _$$ItemsTracksImplCopyWith<_$ItemsTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  String? get albumGroup => throw _privateConstructorUsedError;
  String? get albumType => throw _privateConstructorUsedError;
  List<ArtistsTracks>? get artists => throw _privateConstructorUsedError;
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  ExternalUrlsTracks? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesTracks>? get images => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  int? get totalTracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

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
      {String? albumGroup,
      String? albumType,
      List<ArtistsTracks>? artists,
      List<String>? availableMarkets,
      ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      List<ImagesTracks>? images,
      bool? isPlayable,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      int? totalTracks,
      String? type,
      String? uri});

  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
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
              as List<ArtistsTracks>?,
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsTracks?,
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
              as List<ImagesTracks>?,
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
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsTracksCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
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
      {String? albumGroup,
      String? albumType,
      List<ArtistsTracks>? artists,
      List<String>? availableMarkets,
      ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      List<ImagesTracks>? images,
      bool? isPlayable,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      int? totalTracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
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
    return _then(_$AlbumImpl(
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
              as List<ArtistsTracks>?,
      freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsTracks?,
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
              as List<ImagesTracks>?,
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
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      this.albumGroup,
      this.albumType,
      final List<ArtistsTracks>? artists,
      final List<String>? availableMarkets,
      this.externalUrls,
      this.href,
      this.id,
      final List<ImagesTracks>? images,
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

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  final String? albumGroup;
  @override
  final String? albumType;
  final List<ArtistsTracks>? _artists;
  @override
  List<ArtistsTracks>? get artists {
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
  final ExternalUrlsTracks? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  final List<ImagesTracks>? _images;
  @override
  List<ImagesTracks>? get images {
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
    return 'Album(albumGroup: $albumGroup, albumType: $albumType, artists: $artists, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, isPlayable: $isPlayable, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
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
      final String? albumGroup,
      final String? albumType,
      final List<ArtistsTracks>? artists,
      final List<String>? availableMarkets,
      final ExternalUrlsTracks? externalUrls,
      final String? href,
      final String? id,
      final List<ImagesTracks>? images,
      final bool? isPlayable,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final int? totalTracks,
      final String? type,
      final String? uri) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  String? get albumGroup;
  @override
  String? get albumType;
  @override
  List<ArtistsTracks>? get artists;
  @override
  List<String>? get availableMarkets;
  @override
  ExternalUrlsTracks? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<ImagesTracks>? get images;
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
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistsTracks _$ArtistsTracksFromJson(Map<String, dynamic> json) {
  return _ArtistsTracks.fromJson(json);
}

/// @nodoc
mixin _$ArtistsTracks {
  ExternalUrlsTracks? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistsTracksCopyWith<ArtistsTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsTracksCopyWith<$Res> {
  factory $ArtistsTracksCopyWith(
          ArtistsTracks value, $Res Function(ArtistsTracks) then) =
      _$ArtistsTracksCopyWithImpl<$Res, ArtistsTracks>;
  @useResult
  $Res call(
      {ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$ArtistsTracksCopyWithImpl<$Res, $Val extends ArtistsTracks>
    implements $ArtistsTracksCopyWith<$Res> {
  _$ArtistsTracksCopyWithImpl(this._value, this._then);

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
              as ExternalUrlsTracks?,
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
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsTracksCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistsTracksImplCopyWith<$Res>
    implements $ArtistsTracksCopyWith<$Res> {
  factory _$$ArtistsTracksImplCopyWith(
          _$ArtistsTracksImpl value, $Res Function(_$ArtistsTracksImpl) then) =
      __$$ArtistsTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrlsTracks? externalUrls,
      String? href,
      String? id,
      String? name,
      String? type,
      String? uri});

  @override
  $ExternalUrlsTracksCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$ArtistsTracksImplCopyWithImpl<$Res>
    extends _$ArtistsTracksCopyWithImpl<$Res, _$ArtistsTracksImpl>
    implements _$$ArtistsTracksImplCopyWith<$Res> {
  __$$ArtistsTracksImplCopyWithImpl(
      _$ArtistsTracksImpl _value, $Res Function(_$ArtistsTracksImpl) _then)
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
    return _then(_$ArtistsTracksImpl(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsTracks?,
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
class _$ArtistsTracksImpl implements _ArtistsTracks {
  const _$ArtistsTracksImpl(
      this.externalUrls, this.href, this.id, this.name, this.type, this.uri);

  factory _$ArtistsTracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsTracksImplFromJson(json);

  @override
  final ExternalUrlsTracks? externalUrls;
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
    return 'ArtistsTracks(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsTracksImpl &&
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
  _$$ArtistsTracksImplCopyWith<_$ArtistsTracksImpl> get copyWith =>
      __$$ArtistsTracksImplCopyWithImpl<_$ArtistsTracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistsTracksImplToJson(
      this,
    );
  }
}

abstract class _ArtistsTracks implements ArtistsTracks {
  const factory _ArtistsTracks(
      final ExternalUrlsTracks? externalUrls,
      final String? href,
      final String? id,
      final String? name,
      final String? type,
      final String? uri) = _$ArtistsTracksImpl;

  factory _ArtistsTracks.fromJson(Map<String, dynamic> json) =
      _$ArtistsTracksImpl.fromJson;

  @override
  ExternalUrlsTracks? get externalUrls;
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
  _$$ArtistsTracksImplCopyWith<_$ArtistsTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsTracks _$ExternalUrlsTracksFromJson(Map<String, dynamic> json) {
  return _ExternalUrlsTracks.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsTracks {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsTracksCopyWith<ExternalUrlsTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsTracksCopyWith<$Res> {
  factory $ExternalUrlsTracksCopyWith(
          ExternalUrlsTracks value, $Res Function(ExternalUrlsTracks) then) =
      _$ExternalUrlsTracksCopyWithImpl<$Res, ExternalUrlsTracks>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsTracksCopyWithImpl<$Res, $Val extends ExternalUrlsTracks>
    implements $ExternalUrlsTracksCopyWith<$Res> {
  _$ExternalUrlsTracksCopyWithImpl(this._value, this._then);

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
abstract class _$$ExternalUrlsTracksImplCopyWith<$Res>
    implements $ExternalUrlsTracksCopyWith<$Res> {
  factory _$$ExternalUrlsTracksImplCopyWith(_$ExternalUrlsTracksImpl value,
          $Res Function(_$ExternalUrlsTracksImpl) then) =
      __$$ExternalUrlsTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsTracksImplCopyWithImpl<$Res>
    extends _$ExternalUrlsTracksCopyWithImpl<$Res, _$ExternalUrlsTracksImpl>
    implements _$$ExternalUrlsTracksImplCopyWith<$Res> {
  __$$ExternalUrlsTracksImplCopyWithImpl(_$ExternalUrlsTracksImpl _value,
      $Res Function(_$ExternalUrlsTracksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsTracksImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsTracksImpl implements _ExternalUrlsTracks {
  const _$ExternalUrlsTracksImpl(this.spotify);

  factory _$ExternalUrlsTracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsTracksImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsTracks(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsTracksImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsTracksImplCopyWith<_$ExternalUrlsTracksImpl> get copyWith =>
      __$$ExternalUrlsTracksImplCopyWithImpl<_$ExternalUrlsTracksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsTracksImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsTracks implements ExternalUrlsTracks {
  const factory _ExternalUrlsTracks(final String? spotify) =
      _$ExternalUrlsTracksImpl;

  factory _ExternalUrlsTracks.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsTracksImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsTracksImplCopyWith<_$ExternalUrlsTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesTracks _$ImagesTracksFromJson(Map<String, dynamic> json) {
  return _ImagesTracks.fromJson(json);
}

/// @nodoc
mixin _$ImagesTracks {
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesTracksCopyWith<ImagesTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesTracksCopyWith<$Res> {
  factory $ImagesTracksCopyWith(
          ImagesTracks value, $Res Function(ImagesTracks) then) =
      _$ImagesTracksCopyWithImpl<$Res, ImagesTracks>;
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class _$ImagesTracksCopyWithImpl<$Res, $Val extends ImagesTracks>
    implements $ImagesTracksCopyWith<$Res> {
  _$ImagesTracksCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesTracksImplCopyWith<$Res>
    implements $ImagesTracksCopyWith<$Res> {
  factory _$$ImagesTracksImplCopyWith(
          _$ImagesTracksImpl value, $Res Function(_$ImagesTracksImpl) then) =
      __$$ImagesTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$ImagesTracksImplCopyWithImpl<$Res>
    extends _$ImagesTracksCopyWithImpl<$Res, _$ImagesTracksImpl>
    implements _$$ImagesTracksImplCopyWith<$Res> {
  __$$ImagesTracksImplCopyWithImpl(
      _$ImagesTracksImpl _value, $Res Function(_$ImagesTracksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesTracksImpl(
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
class _$ImagesTracksImpl implements _ImagesTracks {
  const _$ImagesTracksImpl(this.height, this.url, this.width);

  factory _$ImagesTracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesTracksImplFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesTracks(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesTracksImpl &&
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
  _$$ImagesTracksImplCopyWith<_$ImagesTracksImpl> get copyWith =>
      __$$ImagesTracksImplCopyWithImpl<_$ImagesTracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesTracksImplToJson(
      this,
    );
  }
}

abstract class _ImagesTracks implements ImagesTracks {
  const factory _ImagesTracks(
          final int? height, final String? url, final int? width) =
      _$ImagesTracksImpl;

  factory _ImagesTracks.fromJson(Map<String, dynamic> json) =
      _$ImagesTracksImpl.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesTracksImplCopyWith<_$ImagesTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  String? get isrc => throw _privateConstructorUsedError;

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
  $Res call({String? isrc});
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
  }) {
    return _then(_value.copyWith(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? isrc});
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
  }) {
    return _then(_$ExternalIdsImpl(
      freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl(this.isrc);

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

  @override
  final String? isrc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
            (identical(other.isrc, isrc) || other.isrc == isrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isrc);

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
  const factory _ExternalIds(final String? isrc) = _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  String? get isrc;
  @override
  @JsonKey(ignore: true)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
