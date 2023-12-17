// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return _Playlists.fromJson(json);
}

/// @nodoc
mixin _$Playlists {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsPlaylists>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistsCopyWith<Playlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) then) =
      _$PlaylistsCopyWithImpl<$Res, Playlists>;
  @useResult
  $Res call(
      {String? href,
      List<ItemsPlaylists>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class _$PlaylistsCopyWithImpl<$Res, $Val extends Playlists>
    implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._value, this._then);

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
              as List<ItemsPlaylists>?,
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
abstract class _$$PlaylistsImplCopyWith<$Res>
    implements $PlaylistsCopyWith<$Res> {
  factory _$$PlaylistsImplCopyWith(
          _$PlaylistsImpl value, $Res Function(_$PlaylistsImpl) then) =
      __$$PlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsPlaylists>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$PlaylistsImplCopyWithImpl<$Res>
    extends _$PlaylistsCopyWithImpl<$Res, _$PlaylistsImpl>
    implements _$$PlaylistsImplCopyWith<$Res> {
  __$$PlaylistsImplCopyWithImpl(
      _$PlaylistsImpl _value, $Res Function(_$PlaylistsImpl) _then)
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
    return _then(_$PlaylistsImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsPlaylists>?,
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
class _$PlaylistsImpl implements _Playlists {
  const _$PlaylistsImpl(this.href, final List<ItemsPlaylists>? items,
      this.limit, this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$PlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistsImplFromJson(json);

  @override
  final String? href;
  final List<ItemsPlaylists>? _items;
  @override
  List<ItemsPlaylists>? get items {
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
    return 'Playlists(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsImpl &&
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
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      __$$PlaylistsImplCopyWithImpl<_$PlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistsImplToJson(
      this,
    );
  }
}

abstract class _Playlists implements Playlists {
  const factory _Playlists(
      final String? href,
      final List<ItemsPlaylists>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$PlaylistsImpl;

  factory _Playlists.fromJson(Map<String, dynamic> json) =
      _$PlaylistsImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsPlaylists>? get items;
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
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsPlaylists _$ItemsPlaylistsFromJson(Map<String, dynamic> json) {
  return _ItemsPlaylists.fromJson(json);
}

/// @nodoc
mixin _$ItemsPlaylists {
  bool? get collaborative => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ExternalUrlsPlaylists? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesPlaylists>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  OwnerPlaylists? get owner => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  String? get snapshotId => throw _privateConstructorUsedError;
  TracksPlaylists? get tracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsPlaylistsCopyWith<ItemsPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsPlaylistsCopyWith<$Res> {
  factory $ItemsPlaylistsCopyWith(
          ItemsPlaylists value, $Res Function(ItemsPlaylists) then) =
      _$ItemsPlaylistsCopyWithImpl<$Res, ItemsPlaylists>;
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      ExternalUrlsPlaylists? externalUrls,
      String? href,
      String? id,
      List<ImagesPlaylists>? images,
      String? name,
      OwnerPlaylists? owner,
      bool? public,
      String? snapshotId,
      TracksPlaylists? tracks,
      String? type,
      String? uri});

  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls;
  $OwnerPlaylistsCopyWith<$Res>? get owner;
  $TracksPlaylistsCopyWith<$Res>? get tracks;
}

/// @nodoc
class _$ItemsPlaylistsCopyWithImpl<$Res, $Val extends ItemsPlaylists>
    implements $ItemsPlaylistsCopyWith<$Res> {
  _$ItemsPlaylistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapshotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      collaborative: freezed == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsPlaylists?,
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
              as List<ImagesPlaylists>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerPlaylists?,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      snapshotId: freezed == snapshotId
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TracksPlaylists?,
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
  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsPlaylistsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerPlaylistsCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerPlaylistsCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksPlaylistsCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TracksPlaylistsCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsPlaylistsImplCopyWith<$Res>
    implements $ItemsPlaylistsCopyWith<$Res> {
  factory _$$ItemsPlaylistsImplCopyWith(_$ItemsPlaylistsImpl value,
          $Res Function(_$ItemsPlaylistsImpl) then) =
      __$$ItemsPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      ExternalUrlsPlaylists? externalUrls,
      String? href,
      String? id,
      List<ImagesPlaylists>? images,
      String? name,
      OwnerPlaylists? owner,
      bool? public,
      String? snapshotId,
      TracksPlaylists? tracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls;
  @override
  $OwnerPlaylistsCopyWith<$Res>? get owner;
  @override
  $TracksPlaylistsCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$ItemsPlaylistsImplCopyWithImpl<$Res>
    extends _$ItemsPlaylistsCopyWithImpl<$Res, _$ItemsPlaylistsImpl>
    implements _$$ItemsPlaylistsImplCopyWith<$Res> {
  __$$ItemsPlaylistsImplCopyWithImpl(
      _$ItemsPlaylistsImpl _value, $Res Function(_$ItemsPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = freezed,
    Object? description = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? public = freezed,
    Object? snapshotId = freezed,
    Object? tracks = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$ItemsPlaylistsImpl(
      freezed == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsPlaylists?,
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
              as List<ImagesPlaylists>?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerPlaylists?,
      freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == snapshotId
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TracksPlaylists?,
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
class _$ItemsPlaylistsImpl implements _ItemsPlaylists {
  const _$ItemsPlaylistsImpl(
      this.collaborative,
      this.description,
      this.externalUrls,
      this.href,
      this.id,
      final List<ImagesPlaylists>? images,
      this.name,
      this.owner,
      this.public,
      this.snapshotId,
      this.tracks,
      this.type,
      this.uri)
      : _images = images;

  factory _$ItemsPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsPlaylistsImplFromJson(json);

  @override
  final bool? collaborative;
  @override
  final String? description;
  @override
  final ExternalUrlsPlaylists? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  final List<ImagesPlaylists>? _images;
  @override
  List<ImagesPlaylists>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final OwnerPlaylists? owner;
  @override
  final bool? public;
  @override
  final String? snapshotId;
  @override
  final TracksPlaylists? tracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'ItemsPlaylists(collaborative: $collaborative, description: $description, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, owner: $owner, public: $public, snapshotId: $snapshotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsPlaylistsImpl &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.snapshotId, snapshotId) ||
                other.snapshotId == snapshotId) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collaborative,
      description,
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      owner,
      public,
      snapshotId,
      tracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsPlaylistsImplCopyWith<_$ItemsPlaylistsImpl> get copyWith =>
      __$$ItemsPlaylistsImplCopyWithImpl<_$ItemsPlaylistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _ItemsPlaylists implements ItemsPlaylists {
  const factory _ItemsPlaylists(
      final bool? collaborative,
      final String? description,
      final ExternalUrlsPlaylists? externalUrls,
      final String? href,
      final String? id,
      final List<ImagesPlaylists>? images,
      final String? name,
      final OwnerPlaylists? owner,
      final bool? public,
      final String? snapshotId,
      final TracksPlaylists? tracks,
      final String? type,
      final String? uri) = _$ItemsPlaylistsImpl;

  factory _ItemsPlaylists.fromJson(Map<String, dynamic> json) =
      _$ItemsPlaylistsImpl.fromJson;

  @override
  bool? get collaborative;
  @override
  String? get description;
  @override
  ExternalUrlsPlaylists? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  List<ImagesPlaylists>? get images;
  @override
  String? get name;
  @override
  OwnerPlaylists? get owner;
  @override
  bool? get public;
  @override
  String? get snapshotId;
  @override
  TracksPlaylists? get tracks;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemsPlaylistsImplCopyWith<_$ItemsPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsPlaylists _$ExternalUrlsPlaylistsFromJson(
    Map<String, dynamic> json) {
  return _ExternalUrlsPlaylists.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsPlaylists {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsPlaylistsCopyWith<ExternalUrlsPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsPlaylistsCopyWith<$Res> {
  factory $ExternalUrlsPlaylistsCopyWith(ExternalUrlsPlaylists value,
          $Res Function(ExternalUrlsPlaylists) then) =
      _$ExternalUrlsPlaylistsCopyWithImpl<$Res, ExternalUrlsPlaylists>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsPlaylistsCopyWithImpl<$Res,
        $Val extends ExternalUrlsPlaylists>
    implements $ExternalUrlsPlaylistsCopyWith<$Res> {
  _$ExternalUrlsPlaylistsCopyWithImpl(this._value, this._then);

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
abstract class _$$ExternalUrlsPlaylistsImplCopyWith<$Res>
    implements $ExternalUrlsPlaylistsCopyWith<$Res> {
  factory _$$ExternalUrlsPlaylistsImplCopyWith(
          _$ExternalUrlsPlaylistsImpl value,
          $Res Function(_$ExternalUrlsPlaylistsImpl) then) =
      __$$ExternalUrlsPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsPlaylistsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsPlaylistsCopyWithImpl<$Res,
        _$ExternalUrlsPlaylistsImpl>
    implements _$$ExternalUrlsPlaylistsImplCopyWith<$Res> {
  __$$ExternalUrlsPlaylistsImplCopyWithImpl(_$ExternalUrlsPlaylistsImpl _value,
      $Res Function(_$ExternalUrlsPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsPlaylistsImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsPlaylistsImpl implements _ExternalUrlsPlaylists {
  const _$ExternalUrlsPlaylistsImpl(this.spotify);

  factory _$ExternalUrlsPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsPlaylistsImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsPlaylists(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsPlaylistsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsPlaylistsImplCopyWith<_$ExternalUrlsPlaylistsImpl>
      get copyWith => __$$ExternalUrlsPlaylistsImplCopyWithImpl<
          _$ExternalUrlsPlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsPlaylists implements ExternalUrlsPlaylists {
  const factory _ExternalUrlsPlaylists(final String? spotify) =
      _$ExternalUrlsPlaylistsImpl;

  factory _ExternalUrlsPlaylists.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsPlaylistsImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsPlaylistsImplCopyWith<_$ExternalUrlsPlaylistsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImagesPlaylists _$ImagesPlaylistsFromJson(Map<String, dynamic> json) {
  return _ImagesPlaylists.fromJson(json);
}

/// @nodoc
mixin _$ImagesPlaylists {
  String? get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesPlaylistsCopyWith<ImagesPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesPlaylistsCopyWith<$Res> {
  factory $ImagesPlaylistsCopyWith(
          ImagesPlaylists value, $Res Function(ImagesPlaylists) then) =
      _$ImagesPlaylistsCopyWithImpl<$Res, ImagesPlaylists>;
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class _$ImagesPlaylistsCopyWithImpl<$Res, $Val extends ImagesPlaylists>
    implements $ImagesPlaylistsCopyWith<$Res> {
  _$ImagesPlaylistsCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesPlaylistsImplCopyWith<$Res>
    implements $ImagesPlaylistsCopyWith<$Res> {
  factory _$$ImagesPlaylistsImplCopyWith(_$ImagesPlaylistsImpl value,
          $Res Function(_$ImagesPlaylistsImpl) then) =
      __$$ImagesPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class __$$ImagesPlaylistsImplCopyWithImpl<$Res>
    extends _$ImagesPlaylistsCopyWithImpl<$Res, _$ImagesPlaylistsImpl>
    implements _$$ImagesPlaylistsImplCopyWith<$Res> {
  __$$ImagesPlaylistsImplCopyWithImpl(
      _$ImagesPlaylistsImpl _value, $Res Function(_$ImagesPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesPlaylistsImpl(
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
class _$ImagesPlaylistsImpl implements _ImagesPlaylists {
  const _$ImagesPlaylistsImpl(this.url, this.height, this.width);

  factory _$ImagesPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesPlaylistsImplFromJson(json);

  @override
  final String? url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesPlaylists(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesPlaylistsImpl &&
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
  _$$ImagesPlaylistsImplCopyWith<_$ImagesPlaylistsImpl> get copyWith =>
      __$$ImagesPlaylistsImplCopyWithImpl<_$ImagesPlaylistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _ImagesPlaylists implements ImagesPlaylists {
  const factory _ImagesPlaylists(
          final String? url, final int? height, final int? width) =
      _$ImagesPlaylistsImpl;

  factory _ImagesPlaylists.fromJson(Map<String, dynamic> json) =
      _$ImagesPlaylistsImpl.fromJson;

  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesPlaylistsImplCopyWith<_$ImagesPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnerPlaylists _$OwnerPlaylistsFromJson(Map<String, dynamic> json) {
  return _OwnerPlaylists.fromJson(json);
}

/// @nodoc
mixin _$OwnerPlaylists {
  String? get displayName => throw _privateConstructorUsedError;
  ExternalUrlsPlaylists? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerPlaylistsCopyWith<OwnerPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerPlaylistsCopyWith<$Res> {
  factory $OwnerPlaylistsCopyWith(
          OwnerPlaylists value, $Res Function(OwnerPlaylists) then) =
      _$OwnerPlaylistsCopyWithImpl<$Res, OwnerPlaylists>;
  @useResult
  $Res call(
      {String? displayName,
      ExternalUrlsPlaylists? externalUrls,
      String? href,
      String? id,
      String? type,
      String? uri});

  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$OwnerPlaylistsCopyWithImpl<$Res, $Val extends OwnerPlaylists>
    implements $OwnerPlaylistsCopyWith<$Res> {
  _$OwnerPlaylistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsPlaylists?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsPlaylistsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OwnerPlaylistsImplCopyWith<$Res>
    implements $OwnerPlaylistsCopyWith<$Res> {
  factory _$$OwnerPlaylistsImplCopyWith(_$OwnerPlaylistsImpl value,
          $Res Function(_$OwnerPlaylistsImpl) then) =
      __$$OwnerPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? displayName,
      ExternalUrlsPlaylists? externalUrls,
      String? href,
      String? id,
      String? type,
      String? uri});

  @override
  $ExternalUrlsPlaylistsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$OwnerPlaylistsImplCopyWithImpl<$Res>
    extends _$OwnerPlaylistsCopyWithImpl<$Res, _$OwnerPlaylistsImpl>
    implements _$$OwnerPlaylistsImplCopyWith<$Res> {
  __$$OwnerPlaylistsImplCopyWithImpl(
      _$OwnerPlaylistsImpl _value, $Res Function(_$OwnerPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$OwnerPlaylistsImpl(
      freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsPlaylists?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$OwnerPlaylistsImpl implements _OwnerPlaylists {
  const _$OwnerPlaylistsImpl(this.displayName, this.externalUrls, this.href,
      this.id, this.type, this.uri);

  factory _$OwnerPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerPlaylistsImplFromJson(json);

  @override
  final String? displayName;
  @override
  final ExternalUrlsPlaylists? externalUrls;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'OwnerPlaylists(displayName: $displayName, externalUrls: $externalUrls, href: $href, id: $id, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerPlaylistsImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, externalUrls, href, id, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerPlaylistsImplCopyWith<_$OwnerPlaylistsImpl> get copyWith =>
      __$$OwnerPlaylistsImplCopyWithImpl<_$OwnerPlaylistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _OwnerPlaylists implements OwnerPlaylists {
  const factory _OwnerPlaylists(
      final String? displayName,
      final ExternalUrlsPlaylists? externalUrls,
      final String? href,
      final String? id,
      final String? type,
      final String? uri) = _$OwnerPlaylistsImpl;

  factory _OwnerPlaylists.fromJson(Map<String, dynamic> json) =
      _$OwnerPlaylistsImpl.fromJson;

  @override
  String? get displayName;
  @override
  ExternalUrlsPlaylists? get externalUrls;
  @override
  String? get href;
  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$OwnerPlaylistsImplCopyWith<_$OwnerPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TracksPlaylists _$TracksPlaylistsFromJson(Map<String, dynamic> json) {
  return _TracksPlaylists.fromJson(json);
}

/// @nodoc
mixin _$TracksPlaylists {
  String? get href => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksPlaylistsCopyWith<TracksPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksPlaylistsCopyWith<$Res> {
  factory $TracksPlaylistsCopyWith(
          TracksPlaylists value, $Res Function(TracksPlaylists) then) =
      _$TracksPlaylistsCopyWithImpl<$Res, TracksPlaylists>;
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class _$TracksPlaylistsCopyWithImpl<$Res, $Val extends TracksPlaylists>
    implements $TracksPlaylistsCopyWith<$Res> {
  _$TracksPlaylistsCopyWithImpl(this._value, this._then);

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
abstract class _$$TracksPlaylistsImplCopyWith<$Res>
    implements $TracksPlaylistsCopyWith<$Res> {
  factory _$$TracksPlaylistsImplCopyWith(_$TracksPlaylistsImpl value,
          $Res Function(_$TracksPlaylistsImpl) then) =
      __$$TracksPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href, int? total});
}

/// @nodoc
class __$$TracksPlaylistsImplCopyWithImpl<$Res>
    extends _$TracksPlaylistsCopyWithImpl<$Res, _$TracksPlaylistsImpl>
    implements _$$TracksPlaylistsImplCopyWith<$Res> {
  __$$TracksPlaylistsImplCopyWithImpl(
      _$TracksPlaylistsImpl _value, $Res Function(_$TracksPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = freezed,
  }) {
    return _then(_$TracksPlaylistsImpl(
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
class _$TracksPlaylistsImpl implements _TracksPlaylists {
  const _$TracksPlaylistsImpl(this.href, this.total);

  factory _$TracksPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksPlaylistsImplFromJson(json);

  @override
  final String? href;
  @override
  final int? total;

  @override
  String toString() {
    return 'TracksPlaylists(href: $href, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksPlaylistsImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TracksPlaylistsImplCopyWith<_$TracksPlaylistsImpl> get copyWith =>
      __$$TracksPlaylistsImplCopyWithImpl<_$TracksPlaylistsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracksPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _TracksPlaylists implements TracksPlaylists {
  const factory _TracksPlaylists(final String? href, final int? total) =
      _$TracksPlaylistsImpl;

  factory _TracksPlaylists.fromJson(Map<String, dynamic> json) =
      _$TracksPlaylistsImpl.fromJson;

  @override
  String? get href;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$TracksPlaylistsImplCopyWith<_$TracksPlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
