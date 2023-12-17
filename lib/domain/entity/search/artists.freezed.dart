// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return _Artists.fromJson(json);
}

/// @nodoc
mixin _$Artists {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsArtists>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

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
      {String? href,
      List<ItemsArtists>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
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
              as List<ItemsArtists>?,
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
abstract class _$$ArtistsImplCopyWith<$Res> implements $ArtistsCopyWith<$Res> {
  factory _$$ArtistsImplCopyWith(
          _$ArtistsImpl value, $Res Function(_$ArtistsImpl) then) =
      __$$ArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsArtists>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
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
    Object? href = freezed,
    Object? items = freezed,
    Object? limit = freezed,
    Object? next = freezed,
    Object? offset = freezed,
    Object? previous = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ArtistsImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsArtists>?,
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
class _$ArtistsImpl implements _Artists {
  const _$ArtistsImpl(this.href, final List<ItemsArtists>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$ArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistsImplFromJson(json);

  @override
  final String? href;
  final List<ItemsArtists>? _items;
  @override
  List<ItemsArtists>? get items {
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
    return 'Artists(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsImpl &&
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
      final String? href,
      final List<ItemsArtists>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$ArtistsImpl;

  factory _Artists.fromJson(Map<String, dynamic> json) = _$ArtistsImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsArtists>? get items;
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
  _$$ArtistsImplCopyWith<_$ArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsArtists _$ItemsArtistsFromJson(Map<String, dynamic> json) {
  return _ItemsArtists.fromJson(json);
}

/// @nodoc
mixin _$ItemsArtists {
  ExternalUrlsArtists? get externalUrls => throw _privateConstructorUsedError;
  FollowersArtists? get followers => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesArtists>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get popularity => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsArtistsCopyWith<ItemsArtists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsArtistsCopyWith<$Res> {
  factory $ItemsArtistsCopyWith(
          ItemsArtists value, $Res Function(ItemsArtists) then) =
      _$ItemsArtistsCopyWithImpl<$Res, ItemsArtists>;
  @useResult
  $Res call(
      {ExternalUrlsArtists? externalUrls,
      FollowersArtists? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<ImagesArtists>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  $ExternalUrlsArtistsCopyWith<$Res>? get externalUrls;
  $FollowersArtistsCopyWith<$Res>? get followers;
}

/// @nodoc
class _$ItemsArtistsCopyWithImpl<$Res, $Val extends ItemsArtists>
    implements $ItemsArtistsCopyWith<$Res> {
  _$ItemsArtistsCopyWithImpl(this._value, this._then);

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
              as ExternalUrlsArtists?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as FollowersArtists?,
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
              as List<ImagesArtists>?,
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
  $ExternalUrlsArtistsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsArtistsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowersArtistsCopyWith<$Res>? get followers {
    if (_value.followers == null) {
      return null;
    }

    return $FollowersArtistsCopyWith<$Res>(_value.followers!, (value) {
      return _then(_value.copyWith(followers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsArtistsImplCopyWith<$Res>
    implements $ItemsArtistsCopyWith<$Res> {
  factory _$$ItemsArtistsImplCopyWith(
          _$ItemsArtistsImpl value, $Res Function(_$ItemsArtistsImpl) then) =
      __$$ItemsArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrlsArtists? externalUrls,
      FollowersArtists? followers,
      List<String>? genres,
      String? href,
      String? id,
      List<ImagesArtists>? images,
      String? name,
      int? popularity,
      String? type,
      String? uri});

  @override
  $ExternalUrlsArtistsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersArtistsCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$ItemsArtistsImplCopyWithImpl<$Res>
    extends _$ItemsArtistsCopyWithImpl<$Res, _$ItemsArtistsImpl>
    implements _$$ItemsArtistsImplCopyWith<$Res> {
  __$$ItemsArtistsImplCopyWithImpl(
      _$ItemsArtistsImpl _value, $Res Function(_$ItemsArtistsImpl) _then)
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
    return _then(_$ItemsArtistsImpl(
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsArtists?,
      freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as FollowersArtists?,
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
              as List<ImagesArtists>?,
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
class _$ItemsArtistsImpl implements _ItemsArtists {
  const _$ItemsArtistsImpl(
      this.externalUrls,
      this.followers,
      final List<String>? genres,
      this.href,
      this.id,
      final List<ImagesArtists>? images,
      this.name,
      this.popularity,
      this.type,
      this.uri)
      : _genres = genres,
        _images = images;

  factory _$ItemsArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsArtistsImplFromJson(json);

  @override
  final ExternalUrlsArtists? externalUrls;
  @override
  final FollowersArtists? followers;
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
  final List<ImagesArtists>? _images;
  @override
  List<ImagesArtists>? get images {
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
    return 'ItemsArtists(externalUrls: $externalUrls, followers: $followers, genres: $genres, href: $href, id: $id, images: $images, name: $name, popularity: $popularity, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsArtistsImpl &&
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
  _$$ItemsArtistsImplCopyWith<_$ItemsArtistsImpl> get copyWith =>
      __$$ItemsArtistsImplCopyWithImpl<_$ItemsArtistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsArtistsImplToJson(
      this,
    );
  }
}

abstract class _ItemsArtists implements ItemsArtists {
  const factory _ItemsArtists(
      final ExternalUrlsArtists? externalUrls,
      final FollowersArtists? followers,
      final List<String>? genres,
      final String? href,
      final String? id,
      final List<ImagesArtists>? images,
      final String? name,
      final int? popularity,
      final String? type,
      final String? uri) = _$ItemsArtistsImpl;

  factory _ItemsArtists.fromJson(Map<String, dynamic> json) =
      _$ItemsArtistsImpl.fromJson;

  @override
  ExternalUrlsArtists? get externalUrls;
  @override
  FollowersArtists? get followers;
  @override
  List<String>? get genres;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<ImagesArtists>? get images;
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
  _$$ItemsArtistsImplCopyWith<_$ItemsArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsArtists _$ExternalUrlsArtistsFromJson(Map<String, dynamic> json) {
  return _ExternalUrlsArtists.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsArtists {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsArtistsCopyWith<ExternalUrlsArtists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsArtistsCopyWith<$Res> {
  factory $ExternalUrlsArtistsCopyWith(
          ExternalUrlsArtists value, $Res Function(ExternalUrlsArtists) then) =
      _$ExternalUrlsArtistsCopyWithImpl<$Res, ExternalUrlsArtists>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsArtistsCopyWithImpl<$Res, $Val extends ExternalUrlsArtists>
    implements $ExternalUrlsArtistsCopyWith<$Res> {
  _$ExternalUrlsArtistsCopyWithImpl(this._value, this._then);

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
abstract class _$$ExternalUrlsArtistsImplCopyWith<$Res>
    implements $ExternalUrlsArtistsCopyWith<$Res> {
  factory _$$ExternalUrlsArtistsImplCopyWith(_$ExternalUrlsArtistsImpl value,
          $Res Function(_$ExternalUrlsArtistsImpl) then) =
      __$$ExternalUrlsArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsArtistsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsArtistsCopyWithImpl<$Res, _$ExternalUrlsArtistsImpl>
    implements _$$ExternalUrlsArtistsImplCopyWith<$Res> {
  __$$ExternalUrlsArtistsImplCopyWithImpl(_$ExternalUrlsArtistsImpl _value,
      $Res Function(_$ExternalUrlsArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsArtistsImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsArtistsImpl implements _ExternalUrlsArtists {
  const _$ExternalUrlsArtistsImpl(this.spotify);

  factory _$ExternalUrlsArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsArtistsImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsArtists(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsArtistsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsArtistsImplCopyWith<_$ExternalUrlsArtistsImpl> get copyWith =>
      __$$ExternalUrlsArtistsImplCopyWithImpl<_$ExternalUrlsArtistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsArtistsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsArtists implements ExternalUrlsArtists {
  const factory _ExternalUrlsArtists(final String? spotify) =
      _$ExternalUrlsArtistsImpl;

  factory _ExternalUrlsArtists.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsArtistsImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsArtistsImplCopyWith<_$ExternalUrlsArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowersArtists _$FollowersArtistsFromJson(Map<String, dynamic> json) {
  return _FollowersArtists.fromJson(json);
}

/// @nodoc
mixin _$FollowersArtists {
  String? get href => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersArtistsCopyWith<FollowersArtists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersArtistsCopyWith<$Res> {
  factory $FollowersArtistsCopyWith(
          FollowersArtists value, $Res Function(FollowersArtists) then) =
      _$FollowersArtistsCopyWithImpl<$Res, FollowersArtists>;
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class _$FollowersArtistsCopyWithImpl<$Res, $Val extends FollowersArtists>
    implements $FollowersArtistsCopyWith<$Res> {
  _$FollowersArtistsCopyWithImpl(this._value, this._then);

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
abstract class _$$FollowersArtistsImplCopyWith<$Res>
    implements $FollowersArtistsCopyWith<$Res> {
  factory _$$FollowersArtistsImplCopyWith(_$FollowersArtistsImpl value,
          $Res Function(_$FollowersArtistsImpl) then) =
      __$$FollowersArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class __$$FollowersArtistsImplCopyWithImpl<$Res>
    extends _$FollowersArtistsCopyWithImpl<$Res, _$FollowersArtistsImpl>
    implements _$$FollowersArtistsImplCopyWith<$Res> {
  __$$FollowersArtistsImplCopyWithImpl(_$FollowersArtistsImpl _value,
      $Res Function(_$FollowersArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
  }) {
    return _then(_$FollowersArtistsImpl(
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
class _$FollowersArtistsImpl implements _FollowersArtists {
  const _$FollowersArtistsImpl(this.href, this.total);

  factory _$FollowersArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowersArtistsImplFromJson(json);

  @override
  final String? href;
  @override
  final int? total;

  @override
  String toString() {
    return 'FollowersArtists(href: $href, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowersArtistsImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowersArtistsImplCopyWith<_$FollowersArtistsImpl> get copyWith =>
      __$$FollowersArtistsImplCopyWithImpl<_$FollowersArtistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowersArtistsImplToJson(
      this,
    );
  }
}

abstract class _FollowersArtists implements FollowersArtists {
  const factory _FollowersArtists(final String? href, final int? total) =
      _$FollowersArtistsImpl;

  factory _FollowersArtists.fromJson(Map<String, dynamic> json) =
      _$FollowersArtistsImpl.fromJson;

  @override
  String? get href;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$FollowersArtistsImplCopyWith<_$FollowersArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesArtists _$ImagesArtistsFromJson(Map<String, dynamic> json) {
  return _ImagesArtists.fromJson(json);
}

/// @nodoc
mixin _$ImagesArtists {
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesArtistsCopyWith<ImagesArtists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesArtistsCopyWith<$Res> {
  factory $ImagesArtistsCopyWith(
          ImagesArtists value, $Res Function(ImagesArtists) then) =
      _$ImagesArtistsCopyWithImpl<$Res, ImagesArtists>;
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class _$ImagesArtistsCopyWithImpl<$Res, $Val extends ImagesArtists>
    implements $ImagesArtistsCopyWith<$Res> {
  _$ImagesArtistsCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesArtistsImplCopyWith<$Res>
    implements $ImagesArtistsCopyWith<$Res> {
  factory _$$ImagesArtistsImplCopyWith(
          _$ImagesArtistsImpl value, $Res Function(_$ImagesArtistsImpl) then) =
      __$$ImagesArtistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$ImagesArtistsImplCopyWithImpl<$Res>
    extends _$ImagesArtistsCopyWithImpl<$Res, _$ImagesArtistsImpl>
    implements _$$ImagesArtistsImplCopyWith<$Res> {
  __$$ImagesArtistsImplCopyWithImpl(
      _$ImagesArtistsImpl _value, $Res Function(_$ImagesArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesArtistsImpl(
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
class _$ImagesArtistsImpl implements _ImagesArtists {
  const _$ImagesArtistsImpl(this.height, this.url, this.width);

  factory _$ImagesArtistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesArtistsImplFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesArtists(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesArtistsImpl &&
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
  _$$ImagesArtistsImplCopyWith<_$ImagesArtistsImpl> get copyWith =>
      __$$ImagesArtistsImplCopyWithImpl<_$ImagesArtistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesArtistsImplToJson(
      this,
    );
  }
}

abstract class _ImagesArtists implements ImagesArtists {
  const factory _ImagesArtists(
          final int? height, final String? url, final int? width) =
      _$ImagesArtistsImpl;

  factory _ImagesArtists.fromJson(Map<String, dynamic> json) =
      _$ImagesArtistsImpl.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesArtistsImplCopyWith<_$ImagesArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
