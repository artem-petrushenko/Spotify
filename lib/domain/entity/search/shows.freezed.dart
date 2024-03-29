// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shows.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shows _$ShowsFromJson(Map<String, dynamic> json) {
  return _Shows.fromJson(json);
}

/// @nodoc
mixin _$Shows {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsShows>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowsCopyWith<Shows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowsCopyWith<$Res> {
  factory $ShowsCopyWith(Shows value, $Res Function(Shows) then) =
      _$ShowsCopyWithImpl<$Res, Shows>;
  @useResult
  $Res call(
      {String? href,
      List<ItemsShows>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class _$ShowsCopyWithImpl<$Res, $Val extends Shows>
    implements $ShowsCopyWith<$Res> {
  _$ShowsCopyWithImpl(this._value, this._then);

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
              as List<ItemsShows>?,
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
abstract class _$$ShowsImplCopyWith<$Res> implements $ShowsCopyWith<$Res> {
  factory _$$ShowsImplCopyWith(
          _$ShowsImpl value, $Res Function(_$ShowsImpl) then) =
      __$$ShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsShows>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$ShowsImplCopyWithImpl<$Res>
    extends _$ShowsCopyWithImpl<$Res, _$ShowsImpl>
    implements _$$ShowsImplCopyWith<$Res> {
  __$$ShowsImplCopyWithImpl(
      _$ShowsImpl _value, $Res Function(_$ShowsImpl) _then)
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
    return _then(_$ShowsImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsShows>?,
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
class _$ShowsImpl implements _Shows {
  const _$ShowsImpl(this.href, final List<ItemsShows>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$ShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowsImplFromJson(json);

  @override
  final String? href;
  final List<ItemsShows>? _items;
  @override
  List<ItemsShows>? get items {
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
    return 'Shows(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowsImpl &&
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
  _$$ShowsImplCopyWith<_$ShowsImpl> get copyWith =>
      __$$ShowsImplCopyWithImpl<_$ShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowsImplToJson(
      this,
    );
  }
}

abstract class _Shows implements Shows {
  const factory _Shows(
      final String? href,
      final List<ItemsShows>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$ShowsImpl;

  factory _Shows.fromJson(Map<String, dynamic> json) = _$ShowsImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsShows>? get items;
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
  _$$ShowsImplCopyWith<_$ShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsShows _$ItemsShowsFromJson(Map<String, dynamic> json) {
  return _ItemsShows.fromJson(json);
}

/// @nodoc
mixin _$ItemsShows {
  List<String>? get availableMarkets => throw _privateConstructorUsedError;
  List<CopyrightShows>? get copyrights => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalUrlsShows? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get htmlDescription => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesShows>? get images => throw _privateConstructorUsedError;
  bool? get isExternallyHosted => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  int? get totalEpisodes => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsShowsCopyWith<ItemsShows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsShowsCopyWith<$Res> {
  factory $ItemsShowsCopyWith(
          ItemsShows value, $Res Function(ItemsShows) then) =
      _$ItemsShowsCopyWithImpl<$Res, ItemsShows>;
  @useResult
  $Res call(
      {List<String>? availableMarkets,
      List<CopyrightShows>? copyrights,
      String? description,
      bool? explicit,
      ExternalUrlsShows? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<ImagesShows>? images,
      bool? isExternallyHosted,
      List<String>? languages,
      String? mediaType,
      String? name,
      String? publisher,
      int? totalEpisodes,
      String? type,
      String? uri});

  $ExternalUrlsShowsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class _$ItemsShowsCopyWithImpl<$Res, $Val extends ItemsShows>
    implements $ItemsShowsCopyWith<$Res> {
  _$ItemsShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableMarkets = freezed,
    Object? copyrights = freezed,
    Object? description = freezed,
    Object? explicit = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? htmlDescription = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isExternallyHosted = freezed,
    Object? languages = freezed,
    Object? mediaType = freezed,
    Object? name = freezed,
    Object? publisher = freezed,
    Object? totalEpisodes = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      availableMarkets: freezed == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyrights: freezed == copyrights
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<CopyrightShows>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsShows?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlDescription: freezed == htmlDescription
          ? _value.htmlDescription
          : htmlDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesShows>?,
      isExternallyHosted: freezed == isExternallyHosted
          ? _value.isExternallyHosted
          : isExternallyHosted // ignore: cast_nullable_to_non_nullable
              as bool?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      totalEpisodes: freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
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
  $ExternalUrlsShowsCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsShowsCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsShowsImplCopyWith<$Res>
    implements $ItemsShowsCopyWith<$Res> {
  factory _$$ItemsShowsImplCopyWith(
          _$ItemsShowsImpl value, $Res Function(_$ItemsShowsImpl) then) =
      __$$ItemsShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? availableMarkets,
      List<CopyrightShows>? copyrights,
      String? description,
      bool? explicit,
      ExternalUrlsShows? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<ImagesShows>? images,
      bool? isExternallyHosted,
      List<String>? languages,
      String? mediaType,
      String? name,
      String? publisher,
      int? totalEpisodes,
      String? type,
      String? uri});

  @override
  $ExternalUrlsShowsCopyWith<$Res>? get externalUrls;
}

/// @nodoc
class __$$ItemsShowsImplCopyWithImpl<$Res>
    extends _$ItemsShowsCopyWithImpl<$Res, _$ItemsShowsImpl>
    implements _$$ItemsShowsImplCopyWith<$Res> {
  __$$ItemsShowsImplCopyWithImpl(
      _$ItemsShowsImpl _value, $Res Function(_$ItemsShowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableMarkets = freezed,
    Object? copyrights = freezed,
    Object? description = freezed,
    Object? explicit = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? htmlDescription = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isExternallyHosted = freezed,
    Object? languages = freezed,
    Object? mediaType = freezed,
    Object? name = freezed,
    Object? publisher = freezed,
    Object? totalEpisodes = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$ItemsShowsImpl(
      freezed == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == copyrights
          ? _value._copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as List<CopyrightShows>?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrlsShows?,
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == htmlDescription
          ? _value.htmlDescription
          : htmlDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesShows>?,
      freezed == isExternallyHosted
          ? _value.isExternallyHosted
          : isExternallyHosted // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == totalEpisodes
          ? _value.totalEpisodes
          : totalEpisodes // ignore: cast_nullable_to_non_nullable
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
class _$ItemsShowsImpl implements _ItemsShows {
  const _$ItemsShowsImpl(
      final List<String>? availableMarkets,
      final List<CopyrightShows>? copyrights,
      this.description,
      this.explicit,
      this.externalUrls,
      this.href,
      this.htmlDescription,
      this.id,
      final List<ImagesShows>? images,
      this.isExternallyHosted,
      final List<String>? languages,
      this.mediaType,
      this.name,
      this.publisher,
      this.totalEpisodes,
      this.type,
      this.uri)
      : _availableMarkets = availableMarkets,
        _copyrights = copyrights,
        _images = images,
        _languages = languages;

  factory _$ItemsShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsShowsImplFromJson(json);

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

  final List<CopyrightShows>? _copyrights;
  @override
  List<CopyrightShows>? get copyrights {
    final value = _copyrights;
    if (value == null) return null;
    if (_copyrights is EqualUnmodifiableListView) return _copyrights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final bool? explicit;
  @override
  final ExternalUrlsShows? externalUrls;
  @override
  final String? href;
  @override
  final String? htmlDescription;
  @override
  final String? id;
  final List<ImagesShows>? _images;
  @override
  List<ImagesShows>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isExternallyHosted;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mediaType;
  @override
  final String? name;
  @override
  final String? publisher;
  @override
  final int? totalEpisodes;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'ItemsShows(availableMarkets: $availableMarkets, copyrights: $copyrights, description: $description, explicit: $explicit, externalUrls: $externalUrls, href: $href, htmlDescription: $htmlDescription, id: $id, images: $images, isExternallyHosted: $isExternallyHosted, languages: $languages, mediaType: $mediaType, name: $name, publisher: $publisher, totalEpisodes: $totalEpisodes, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsShowsImpl &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            const DeepCollectionEquality()
                .equals(other._copyrights, _copyrights) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.htmlDescription, htmlDescription) ||
                other.htmlDescription == htmlDescription) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isExternallyHosted, isExternallyHosted) ||
                other.isExternallyHosted == isExternallyHosted) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.totalEpisodes, totalEpisodes) ||
                other.totalEpisodes == totalEpisodes) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableMarkets),
      const DeepCollectionEquality().hash(_copyrights),
      description,
      explicit,
      externalUrls,
      href,
      htmlDescription,
      id,
      const DeepCollectionEquality().hash(_images),
      isExternallyHosted,
      const DeepCollectionEquality().hash(_languages),
      mediaType,
      name,
      publisher,
      totalEpisodes,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsShowsImplCopyWith<_$ItemsShowsImpl> get copyWith =>
      __$$ItemsShowsImplCopyWithImpl<_$ItemsShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsShowsImplToJson(
      this,
    );
  }
}

abstract class _ItemsShows implements ItemsShows {
  const factory _ItemsShows(
      final List<String>? availableMarkets,
      final List<CopyrightShows>? copyrights,
      final String? description,
      final bool? explicit,
      final ExternalUrlsShows? externalUrls,
      final String? href,
      final String? htmlDescription,
      final String? id,
      final List<ImagesShows>? images,
      final bool? isExternallyHosted,
      final List<String>? languages,
      final String? mediaType,
      final String? name,
      final String? publisher,
      final int? totalEpisodes,
      final String? type,
      final String? uri) = _$ItemsShowsImpl;

  factory _ItemsShows.fromJson(Map<String, dynamic> json) =
      _$ItemsShowsImpl.fromJson;

  @override
  List<String>? get availableMarkets;
  @override
  List<CopyrightShows>? get copyrights;
  @override
  String? get description;
  @override
  bool? get explicit;
  @override
  ExternalUrlsShows? get externalUrls;
  @override
  String? get href;
  @override
  String? get htmlDescription;
  @override
  String? get id;
  @override
  List<ImagesShows>? get images;
  @override
  bool? get isExternallyHosted;
  @override
  List<String>? get languages;
  @override
  String? get mediaType;
  @override
  String? get name;
  @override
  String? get publisher;
  @override
  int? get totalEpisodes;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemsShowsImplCopyWith<_$ItemsShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CopyrightShows _$CopyrightShowsFromJson(Map<String, dynamic> json) {
  return _CopyrightShows.fromJson(json);
}

/// @nodoc
mixin _$CopyrightShows {
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CopyrightShowsCopyWith<CopyrightShows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyrightShowsCopyWith<$Res> {
  factory $CopyrightShowsCopyWith(
          CopyrightShows value, $Res Function(CopyrightShows) then) =
      _$CopyrightShowsCopyWithImpl<$Res, CopyrightShows>;
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class _$CopyrightShowsCopyWithImpl<$Res, $Val extends CopyrightShows>
    implements $CopyrightShowsCopyWith<$Res> {
  _$CopyrightShowsCopyWithImpl(this._value, this._then);

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
abstract class _$$CopyrightShowsImplCopyWith<$Res>
    implements $CopyrightShowsCopyWith<$Res> {
  factory _$$CopyrightShowsImplCopyWith(_$CopyrightShowsImpl value,
          $Res Function(_$CopyrightShowsImpl) then) =
      __$$CopyrightShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? type});
}

/// @nodoc
class __$$CopyrightShowsImplCopyWithImpl<$Res>
    extends _$CopyrightShowsCopyWithImpl<$Res, _$CopyrightShowsImpl>
    implements _$$CopyrightShowsImplCopyWith<$Res> {
  __$$CopyrightShowsImplCopyWithImpl(
      _$CopyrightShowsImpl _value, $Res Function(_$CopyrightShowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CopyrightShowsImpl(
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
class _$CopyrightShowsImpl implements _CopyrightShows {
  const _$CopyrightShowsImpl(this.text, this.type);

  factory _$CopyrightShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyrightShowsImplFromJson(json);

  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'CopyrightShows(text: $text, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyrightShowsImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyrightShowsImplCopyWith<_$CopyrightShowsImpl> get copyWith =>
      __$$CopyrightShowsImplCopyWithImpl<_$CopyrightShowsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyrightShowsImplToJson(
      this,
    );
  }
}

abstract class _CopyrightShows implements CopyrightShows {
  const factory _CopyrightShows(final String? text, final String? type) =
      _$CopyrightShowsImpl;

  factory _CopyrightShows.fromJson(Map<String, dynamic> json) =
      _$CopyrightShowsImpl.fromJson;

  @override
  String? get text;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$CopyrightShowsImplCopyWith<_$CopyrightShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsShows _$ExternalUrlsShowsFromJson(Map<String, dynamic> json) {
  return _ExternalUrlsShows.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsShows {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsShowsCopyWith<ExternalUrlsShows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsShowsCopyWith<$Res> {
  factory $ExternalUrlsShowsCopyWith(
          ExternalUrlsShows value, $Res Function(ExternalUrlsShows) then) =
      _$ExternalUrlsShowsCopyWithImpl<$Res, ExternalUrlsShows>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsShowsCopyWithImpl<$Res, $Val extends ExternalUrlsShows>
    implements $ExternalUrlsShowsCopyWith<$Res> {
  _$ExternalUrlsShowsCopyWithImpl(this._value, this._then);

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
abstract class _$$ExternalUrlsShowsImplCopyWith<$Res>
    implements $ExternalUrlsShowsCopyWith<$Res> {
  factory _$$ExternalUrlsShowsImplCopyWith(_$ExternalUrlsShowsImpl value,
          $Res Function(_$ExternalUrlsShowsImpl) then) =
      __$$ExternalUrlsShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsShowsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsShowsCopyWithImpl<$Res, _$ExternalUrlsShowsImpl>
    implements _$$ExternalUrlsShowsImplCopyWith<$Res> {
  __$$ExternalUrlsShowsImplCopyWithImpl(_$ExternalUrlsShowsImpl _value,
      $Res Function(_$ExternalUrlsShowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsShowsImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsShowsImpl implements _ExternalUrlsShows {
  const _$ExternalUrlsShowsImpl(this.spotify);

  factory _$ExternalUrlsShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsShowsImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsShows(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsShowsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsShowsImplCopyWith<_$ExternalUrlsShowsImpl> get copyWith =>
      __$$ExternalUrlsShowsImplCopyWithImpl<_$ExternalUrlsShowsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsShowsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsShows implements ExternalUrlsShows {
  const factory _ExternalUrlsShows(final String? spotify) =
      _$ExternalUrlsShowsImpl;

  factory _ExternalUrlsShows.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsShowsImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsShowsImplCopyWith<_$ExternalUrlsShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImagesShows _$ImagesShowsFromJson(Map<String, dynamic> json) {
  return _ImagesShows.fromJson(json);
}

/// @nodoc
mixin _$ImagesShows {
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesShowsCopyWith<ImagesShows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesShowsCopyWith<$Res> {
  factory $ImagesShowsCopyWith(
          ImagesShows value, $Res Function(ImagesShows) then) =
      _$ImagesShowsCopyWithImpl<$Res, ImagesShows>;
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class _$ImagesShowsCopyWithImpl<$Res, $Val extends ImagesShows>
    implements $ImagesShowsCopyWith<$Res> {
  _$ImagesShowsCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesShowsImplCopyWith<$Res>
    implements $ImagesShowsCopyWith<$Res> {
  factory _$$ImagesShowsImplCopyWith(
          _$ImagesShowsImpl value, $Res Function(_$ImagesShowsImpl) then) =
      __$$ImagesShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$ImagesShowsImplCopyWithImpl<$Res>
    extends _$ImagesShowsCopyWithImpl<$Res, _$ImagesShowsImpl>
    implements _$$ImagesShowsImplCopyWith<$Res> {
  __$$ImagesShowsImplCopyWithImpl(
      _$ImagesShowsImpl _value, $Res Function(_$ImagesShowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesShowsImpl(
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
class _$ImagesShowsImpl implements _ImagesShows {
  const _$ImagesShowsImpl(this.height, this.url, this.width);

  factory _$ImagesShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesShowsImplFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesShows(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesShowsImpl &&
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
  _$$ImagesShowsImplCopyWith<_$ImagesShowsImpl> get copyWith =>
      __$$ImagesShowsImplCopyWithImpl<_$ImagesShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesShowsImplToJson(
      this,
    );
  }
}

abstract class _ImagesShows implements ImagesShows {
  const factory _ImagesShows(
          final int? height, final String? url, final int? width) =
      _$ImagesShowsImpl;

  factory _ImagesShows.fromJson(Map<String, dynamic> json) =
      _$ImagesShowsImpl.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesShowsImplCopyWith<_$ImagesShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
