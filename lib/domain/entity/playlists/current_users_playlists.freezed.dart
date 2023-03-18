// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_users_playlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentUsersPlaylistsModel _$CurrentUsersPlaylistsModelFromJson(
    Map<String, dynamic> json) {
  return _CurrentUsersPlaylistsModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentUsersPlaylistsModel {
  String? get href => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  List<Items> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentUsersPlaylistsModelCopyWith<CurrentUsersPlaylistsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUsersPlaylistsModelCopyWith<$Res> {
  factory $CurrentUsersPlaylistsModelCopyWith(CurrentUsersPlaylistsModel value,
          $Res Function(CurrentUsersPlaylistsModel) then) =
      _$CurrentUsersPlaylistsModelCopyWithImpl<$Res,
          CurrentUsersPlaylistsModel>;
  @useResult
  $Res call(
      {String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total,
      List<Items> items});
}

/// @nodoc
class _$CurrentUsersPlaylistsModelCopyWithImpl<$Res,
        $Val extends CurrentUsersPlaylistsModel>
    implements $CurrentUsersPlaylistsModelCopyWith<$Res> {
  _$CurrentUsersPlaylistsModelCopyWithImpl(this._value, this._then);

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
    Object? items = null,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentUsersPlaylistsModelCopyWith<$Res>
    implements $CurrentUsersPlaylistsModelCopyWith<$Res> {
  factory _$$_CurrentUsersPlaylistsModelCopyWith(
          _$_CurrentUsersPlaylistsModel value,
          $Res Function(_$_CurrentUsersPlaylistsModel) then) =
      __$$_CurrentUsersPlaylistsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total,
      List<Items> items});
}

/// @nodoc
class __$$_CurrentUsersPlaylistsModelCopyWithImpl<$Res>
    extends _$CurrentUsersPlaylistsModelCopyWithImpl<$Res,
        _$_CurrentUsersPlaylistsModel>
    implements _$$_CurrentUsersPlaylistsModelCopyWith<$Res> {
  __$$_CurrentUsersPlaylistsModelCopyWithImpl(
      _$_CurrentUsersPlaylistsModel _value,
      $Res Function(_$_CurrentUsersPlaylistsModel) _then)
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
    Object? items = null,
  }) {
    return _then(_$_CurrentUsersPlaylistsModel(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
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
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_CurrentUsersPlaylistsModel implements _CurrentUsersPlaylistsModel {
  const _$_CurrentUsersPlaylistsModel(this.href, this.limit, this.next,
      this.offset, this.previous, this.total, final List<Items> items)
      : _items = items;

  factory _$_CurrentUsersPlaylistsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentUsersPlaylistsModelFromJson(json);

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
  final List<Items> _items;
  @override
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CurrentUsersPlaylistsModel(href: $href, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUsersPlaylistsModel &&
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
  _$$_CurrentUsersPlaylistsModelCopyWith<_$_CurrentUsersPlaylistsModel>
      get copyWith => __$$_CurrentUsersPlaylistsModelCopyWithImpl<
          _$_CurrentUsersPlaylistsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentUsersPlaylistsModelToJson(
      this,
    );
  }
}

abstract class _CurrentUsersPlaylistsModel
    implements CurrentUsersPlaylistsModel {
  const factory _CurrentUsersPlaylistsModel(
      final String? href,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total,
      final List<Items> items) = _$_CurrentUsersPlaylistsModel;

  factory _CurrentUsersPlaylistsModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentUsersPlaylistsModel.fromJson;

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
  List<Items> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentUsersPlaylistsModelCopyWith<_$_CurrentUsersPlaylistsModel>
      get copyWith => throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  bool? get collaborative => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Images>? get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  bool? get public => throw _privateConstructorUsedError;
  String? get snapshotId => throw _privateConstructorUsedError;
  Followers? get tracks => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      List<Images>? images,
      String? name,
      Owner? owner,
      bool? public,
      String? snapshotId,
      Followers? tracks,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $OwnerCopyWith<$Res>? get owner;
  $FollowersCopyWith<$Res>? get tracks;
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
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
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
              as Followers?,
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
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowersCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $FollowersCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? collaborative,
      String? description,
      ExternalUrls? externalUrls,
      String? href,
      String? id,
      List<Images>? images,
      String? name,
      Owner? owner,
      bool? public,
      String? snapshotId,
      Followers? tracks,
      String? type,
      String? uri});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $FollowersCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
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
    return _then(_$_Items(
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
      freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
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
              as Followers?,
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
class _$_Items implements _Items {
  const _$_Items(
      this.collaborative,
      this.description,
      this.externalUrls,
      this.href,
      this.id,
      final List<Images>? images,
      this.name,
      this.owner,
      this.public,
      this.snapshotId,
      this.tracks,
      this.type,
      this.uri)
      : _images = images;

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final bool? collaborative;
  @override
  final String? description;
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
  final Owner? owner;
  @override
  final bool? public;
  @override
  final String? snapshotId;
  @override
  final Followers? tracks;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'Items(collaborative: $collaborative, description: $description, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, owner: $owner, public: $public, snapshotId: $snapshotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
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
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      final bool? collaborative,
      final String? description,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? id,
      final List<Images>? images,
      final String? name,
      final Owner? owner,
      final bool? public,
      final String? snapshotId,
      final Followers? tracks,
      final String? type,
      final String? uri) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  bool? get collaborative;
  @override
  String? get description;
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
  Owner? get owner;
  @override
  bool? get public;
  @override
  String? get snapshotId;
  @override
  Followers? get tracks;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
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

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  Followers? get followers => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      String? type,
      String? uri,
      String? displayName});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? displayName = freezed,
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
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$_OwnerCopyWith(_$_Owner value, $Res Function(_$_Owner) then) =
      __$$_OwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExternalUrls? externalUrls,
      Followers? followers,
      String? href,
      String? id,
      String? type,
      String? uri,
      String? displayName});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $FollowersCopyWith<$Res>? get followers;
}

/// @nodoc
class __$$_OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res, _$_Owner>
    implements _$$_OwnerCopyWith<$Res> {
  __$$_OwnerCopyWithImpl(_$_Owner _value, $Res Function(_$_Owner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = freezed,
    Object? followers = freezed,
    Object? href = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? uri = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_$_Owner(
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
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Owner implements _Owner {
  const _$_Owner(this.externalUrls, this.followers, this.href, this.id,
      this.type, this.uri, this.displayName);

  factory _$_Owner.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerFromJson(json);

  @override
  final ExternalUrls? externalUrls;
  @override
  final Followers? followers;
  @override
  final String? href;
  @override
  final String? id;
  @override
  final String? type;
  @override
  final String? uri;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'Owner(externalUrls: $externalUrls, followers: $followers, href: $href, id: $id, type: $type, uri: $uri, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Owner &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, externalUrls, followers, href, id, type, uri, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
      __$$_OwnerCopyWithImpl<_$_Owner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      final ExternalUrls? externalUrls,
      final Followers? followers,
      final String? href,
      final String? id,
      final String? type,
      final String? uri,
      final String? displayName) = _$_Owner;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$_Owner.fromJson;

  @override
  ExternalUrls? get externalUrls;
  @override
  Followers? get followers;
  @override
  String? get href;
  @override
  String? get id;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerCopyWith<_$_Owner> get copyWith =>
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
