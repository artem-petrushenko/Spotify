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
abstract class _$$_ArtistsCopyWith<$Res> implements $ArtistsCopyWith<$Res> {
  factory _$$_ArtistsCopyWith(
          _$_Artists value, $Res Function(_$_Artists) then) =
      __$$_ArtistsCopyWithImpl<$Res>;
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
class __$$_ArtistsCopyWithImpl<$Res>
    extends _$ArtistsCopyWithImpl<$Res, _$_Artists>
    implements _$$_ArtistsCopyWith<$Res> {
  __$$_ArtistsCopyWithImpl(_$_Artists _value, $Res Function(_$_Artists) _then)
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
    return _then(_$_Artists(
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
class _$_Artists implements _Artists {
  const _$_Artists(this.href, final List<ItemsArtists>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$_Artists.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artists &&
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
  _$$_ArtistsCopyWith<_$_Artists> get copyWith =>
      __$$_ArtistsCopyWithImpl<_$_Artists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistsToJson(
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
      final int? total) = _$_Artists;

  factory _Artists.fromJson(Map<String, dynamic> json) = _$_Artists.fromJson;

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
  _$$_ArtistsCopyWith<_$_Artists> get copyWith =>
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
abstract class _$$_ItemsArtistsCopyWith<$Res>
    implements $ItemsArtistsCopyWith<$Res> {
  factory _$$_ItemsArtistsCopyWith(
          _$_ItemsArtists value, $Res Function(_$_ItemsArtists) then) =
      __$$_ItemsArtistsCopyWithImpl<$Res>;
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
class __$$_ItemsArtistsCopyWithImpl<$Res>
    extends _$ItemsArtistsCopyWithImpl<$Res, _$_ItemsArtists>
    implements _$$_ItemsArtistsCopyWith<$Res> {
  __$$_ItemsArtistsCopyWithImpl(
      _$_ItemsArtists _value, $Res Function(_$_ItemsArtists) _then)
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
    return _then(_$_ItemsArtists(
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
class _$_ItemsArtists implements _ItemsArtists {
  const _$_ItemsArtists(
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

  factory _$_ItemsArtists.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsArtistsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemsArtists &&
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
  _$$_ItemsArtistsCopyWith<_$_ItemsArtists> get copyWith =>
      __$$_ItemsArtistsCopyWithImpl<_$_ItemsArtists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsArtistsToJson(
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
      final String? uri) = _$_ItemsArtists;

  factory _ItemsArtists.fromJson(Map<String, dynamic> json) =
      _$_ItemsArtists.fromJson;

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
  _$$_ItemsArtistsCopyWith<_$_ItemsArtists> get copyWith =>
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
abstract class _$$_ExternalUrlsArtistsCopyWith<$Res>
    implements $ExternalUrlsArtistsCopyWith<$Res> {
  factory _$$_ExternalUrlsArtistsCopyWith(_$_ExternalUrlsArtists value,
          $Res Function(_$_ExternalUrlsArtists) then) =
      __$$_ExternalUrlsArtistsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$_ExternalUrlsArtistsCopyWithImpl<$Res>
    extends _$ExternalUrlsArtistsCopyWithImpl<$Res, _$_ExternalUrlsArtists>
    implements _$$_ExternalUrlsArtistsCopyWith<$Res> {
  __$$_ExternalUrlsArtistsCopyWithImpl(_$_ExternalUrlsArtists _value,
      $Res Function(_$_ExternalUrlsArtists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$_ExternalUrlsArtists(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ExternalUrlsArtists implements _ExternalUrlsArtists {
  const _$_ExternalUrlsArtists(this.spotify);

  factory _$_ExternalUrlsArtists.fromJson(Map<String, dynamic> json) =>
      _$$_ExternalUrlsArtistsFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsArtists(spotify: $spotify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalUrlsArtists &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalUrlsArtistsCopyWith<_$_ExternalUrlsArtists> get copyWith =>
      __$$_ExternalUrlsArtistsCopyWithImpl<_$_ExternalUrlsArtists>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExternalUrlsArtistsToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsArtists implements ExternalUrlsArtists {
  const factory _ExternalUrlsArtists(final String? spotify) =
      _$_ExternalUrlsArtists;

  factory _ExternalUrlsArtists.fromJson(Map<String, dynamic> json) =
      _$_ExternalUrlsArtists.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalUrlsArtistsCopyWith<_$_ExternalUrlsArtists> get copyWith =>
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
abstract class _$$_FollowersArtistsCopyWith<$Res>
    implements $FollowersArtistsCopyWith<$Res> {
  factory _$$_FollowersArtistsCopyWith(
          _$_FollowersArtists value, $Res Function(_$_FollowersArtists) then) =
      __$$_FollowersArtistsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class __$$_FollowersArtistsCopyWithImpl<$Res>
    extends _$FollowersArtistsCopyWithImpl<$Res, _$_FollowersArtists>
    implements _$$_FollowersArtistsCopyWith<$Res> {
  __$$_FollowersArtistsCopyWithImpl(
      _$_FollowersArtists _value, $Res Function(_$_FollowersArtists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_FollowersArtists(
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
class _$_FollowersArtists implements _FollowersArtists {
  const _$_FollowersArtists(this.href, this.total);

  factory _$_FollowersArtists.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersArtistsFromJson(json);

  @override
  final String? href;
  @override
  final int? total;

  @override
  String toString() {
    return 'FollowersArtists(href: $href, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FollowersArtists &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FollowersArtistsCopyWith<_$_FollowersArtists> get copyWith =>
      __$$_FollowersArtistsCopyWithImpl<_$_FollowersArtists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersArtistsToJson(
      this,
    );
  }
}

abstract class _FollowersArtists implements FollowersArtists {
  const factory _FollowersArtists(final String? href, final int? total) =
      _$_FollowersArtists;

  factory _FollowersArtists.fromJson(Map<String, dynamic> json) =
      _$_FollowersArtists.fromJson;

  @override
  String? get href;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_FollowersArtistsCopyWith<_$_FollowersArtists> get copyWith =>
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
abstract class _$$_ImagesArtistsCopyWith<$Res>
    implements $ImagesArtistsCopyWith<$Res> {
  factory _$$_ImagesArtistsCopyWith(
          _$_ImagesArtists value, $Res Function(_$_ImagesArtists) then) =
      __$$_ImagesArtistsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$_ImagesArtistsCopyWithImpl<$Res>
    extends _$ImagesArtistsCopyWithImpl<$Res, _$_ImagesArtists>
    implements _$$_ImagesArtistsCopyWith<$Res> {
  __$$_ImagesArtistsCopyWithImpl(
      _$_ImagesArtists _value, $Res Function(_$_ImagesArtists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_ImagesArtists(
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
class _$_ImagesArtists implements _ImagesArtists {
  const _$_ImagesArtists(this.height, this.url, this.width);

  factory _$_ImagesArtists.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesArtistsFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagesArtists &&
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
  _$$_ImagesArtistsCopyWith<_$_ImagesArtists> get copyWith =>
      __$$_ImagesArtistsCopyWithImpl<_$_ImagesArtists>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesArtistsToJson(
      this,
    );
  }
}

abstract class _ImagesArtists implements ImagesArtists {
  const factory _ImagesArtists(
          final int? height, final String? url, final int? width) =
      _$_ImagesArtists;

  factory _ImagesArtists.fromJson(Map<String, dynamic> json) =
      _$_ImagesArtists.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesArtistsCopyWith<_$_ImagesArtists> get copyWith =>
      throw _privateConstructorUsedError;
}
