// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episodes _$EpisodesFromJson(Map<String, dynamic> json) {
  return _Episodes.fromJson(json);
}

/// @nodoc
mixin _$Episodes {
  String? get href => throw _privateConstructorUsedError;
  List<Items>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesCopyWith<Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesCopyWith<$Res> {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) then) =
      _$EpisodesCopyWithImpl<$Res, Episodes>;
  @useResult
  $Res call(
      {String? href,
      List<Items>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res, $Val extends Episodes>
    implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

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
              as List<Items>?,
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
abstract class _$$_EpisodesCopyWith<$Res> implements $EpisodesCopyWith<$Res> {
  factory _$$_EpisodesCopyWith(
          _$_Episodes value, $Res Function(_$_Episodes) then) =
      __$$_EpisodesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<Items>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$_EpisodesCopyWithImpl<$Res>
    extends _$EpisodesCopyWithImpl<$Res, _$_Episodes>
    implements _$$_EpisodesCopyWith<$Res> {
  __$$_EpisodesCopyWithImpl(
      _$_Episodes _value, $Res Function(_$_Episodes) _then)
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
    return _then(_$_Episodes(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
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
class _$_Episodes implements _Episodes {
  const _$_Episodes(this.href, final List<Items>? items, this.limit, this.next,
      this.offset, this.previous, this.total)
      : _items = items;

  factory _$_Episodes.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesFromJson(json);

  @override
  final String? href;
  final List<Items>? _items;
  @override
  List<Items>? get items {
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
    return 'Episodes(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Episodes &&
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
  _$$_EpisodesCopyWith<_$_Episodes> get copyWith =>
      __$$_EpisodesCopyWithImpl<_$_Episodes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesToJson(
      this,
    );
  }
}

abstract class _Episodes implements Episodes {
  const factory _Episodes(
      final String? href,
      final List<Items>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$_Episodes;

  factory _Episodes.fromJson(Map<String, dynamic> json) = _$_Episodes.fromJson;

  @override
  String? get href;
  @override
  List<Items>? get items;
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
  _$$_EpisodesCopyWith<_$_Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String? get audioPreviewUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalUrls? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get htmlDescription => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<Images>? get images => throw _privateConstructorUsedError;
  bool? get isExternallyHosted => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  ResumePoint? get resumePoint => throw _privateConstructorUsedError;
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
      {String? audioPreviewUrl,
      String? description,
      int? durationMs,
      bool? explicit,
      ExternalUrls? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<Images>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      ResumePoint? resumePoint,
      String? type,
      String? uri});

  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  $ResumePointCopyWith<$Res>? get resumePoint;
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
    Object? audioPreviewUrl = freezed,
    Object? description = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? htmlDescription = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isExternallyHosted = freezed,
    Object? isPlayable = freezed,
    Object? language = freezed,
    Object? languages = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? resumePoint = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      audioPreviewUrl: freezed == audioPreviewUrl
          ? _value.audioPreviewUrl
          : audioPreviewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
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
              as List<Images>?,
      isExternallyHosted: freezed == isExternallyHosted
          ? _value.isExternallyHosted
          : isExternallyHosted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlayable: freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      resumePoint: freezed == resumePoint
          ? _value.resumePoint
          : resumePoint // ignore: cast_nullable_to_non_nullable
              as ResumePoint?,
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
  $ResumePointCopyWith<$Res>? get resumePoint {
    if (_value.resumePoint == null) {
      return null;
    }

    return $ResumePointCopyWith<$Res>(_value.resumePoint!, (value) {
      return _then(_value.copyWith(resumePoint: value) as $Val);
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
      {String? audioPreviewUrl,
      String? description,
      int? durationMs,
      bool? explicit,
      ExternalUrls? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<Images>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      ResumePoint? resumePoint,
      String? type,
      String? uri});

  @override
  $ExternalUrlsCopyWith<$Res>? get externalUrls;
  @override
  $ResumePointCopyWith<$Res>? get resumePoint;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPreviewUrl = freezed,
    Object? description = freezed,
    Object? durationMs = freezed,
    Object? explicit = freezed,
    Object? externalUrls = freezed,
    Object? href = freezed,
    Object? htmlDescription = freezed,
    Object? id = freezed,
    Object? images = freezed,
    Object? isExternallyHosted = freezed,
    Object? isPlayable = freezed,
    Object? language = freezed,
    Object? languages = freezed,
    Object? name = freezed,
    Object? releaseDate = freezed,
    Object? releaseDatePrecision = freezed,
    Object? resumePoint = freezed,
    Object? type = freezed,
    Object? uri = freezed,
  }) {
    return _then(_$_Items(
      freezed == audioPreviewUrl
          ? _value.audioPreviewUrl
          : audioPreviewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls?,
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
              as List<Images>?,
      freezed == isExternallyHosted
          ? _value.isExternallyHosted
          : isExternallyHosted // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      freezed == resumePoint
          ? _value.resumePoint
          : resumePoint // ignore: cast_nullable_to_non_nullable
              as ResumePoint?,
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
      this.audioPreviewUrl,
      this.description,
      this.durationMs,
      this.explicit,
      this.externalUrls,
      this.href,
      this.htmlDescription,
      this.id,
      final List<Images>? images,
      this.isExternallyHosted,
      this.isPlayable,
      this.language,
      final List<String>? languages,
      this.name,
      this.releaseDate,
      this.releaseDatePrecision,
      this.resumePoint,
      this.type,
      this.uri)
      : _images = images,
        _languages = languages;

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final String? audioPreviewUrl;
  @override
  final String? description;
  @override
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final ExternalUrls? externalUrls;
  @override
  final String? href;
  @override
  final String? htmlDescription;
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
  final bool? isExternallyHosted;
  @override
  final bool? isPlayable;
  @override
  final String? language;
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
  final String? name;
  @override
  final String? releaseDate;
  @override
  final String? releaseDatePrecision;
  @override
  final ResumePoint? resumePoint;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'Items(audioPreviewUrl: $audioPreviewUrl, description: $description, durationMs: $durationMs, explicit: $explicit, externalUrls: $externalUrls, href: $href, htmlDescription: $htmlDescription, id: $id, images: $images, isExternallyHosted: $isExternallyHosted, isPlayable: $isPlayable, language: $language, languages: $languages, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, resumePoint: $resumePoint, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.audioPreviewUrl, audioPreviewUrl) ||
                other.audioPreviewUrl == audioPreviewUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
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
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.resumePoint, resumePoint) ||
                other.resumePoint == resumePoint) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        audioPreviewUrl,
        description,
        durationMs,
        explicit,
        externalUrls,
        href,
        htmlDescription,
        id,
        const DeepCollectionEquality().hash(_images),
        isExternallyHosted,
        isPlayable,
        language,
        const DeepCollectionEquality().hash(_languages),
        name,
        releaseDate,
        releaseDatePrecision,
        resumePoint,
        type,
        uri
      ]);

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
      final String? audioPreviewUrl,
      final String? description,
      final int? durationMs,
      final bool? explicit,
      final ExternalUrls? externalUrls,
      final String? href,
      final String? htmlDescription,
      final String? id,
      final List<Images>? images,
      final bool? isExternallyHosted,
      final bool? isPlayable,
      final String? language,
      final List<String>? languages,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final ResumePoint? resumePoint,
      final String? type,
      final String? uri) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  String? get audioPreviewUrl;
  @override
  String? get description;
  @override
  int? get durationMs;
  @override
  bool? get explicit;
  @override
  ExternalUrls? get externalUrls;
  @override
  String? get href;
  @override
  String? get htmlDescription;
  @override
  String? get id;
  @override
  List<Images>? get images;
  @override
  bool? get isExternallyHosted;
  @override
  bool? get isPlayable;
  @override
  String? get language;
  @override
  List<String>? get languages;
  @override
  String? get name;
  @override
  String? get releaseDate;
  @override
  String? get releaseDatePrecision;
  @override
  ResumePoint? get resumePoint;
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
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
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
  $Res call({int? height, String? url, int? width});
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
abstract class _$$_ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$_ImagesCopyWith(_$_Images value, $Res Function(_$_Images) then) =
      __$$_ImagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
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
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Images(
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
class _$_Images implements _Images {
  const _$_Images(this.height, this.url, this.width);

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'Images(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Images &&
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
      final int? height, final String? url, final int? width) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      throw _privateConstructorUsedError;
}

ResumePoint _$ResumePointFromJson(Map<String, dynamic> json) {
  return _ResumePoint.fromJson(json);
}

/// @nodoc
mixin _$ResumePoint {
  bool? get fullyPlayed => throw _privateConstructorUsedError;
  int? get resumePositionMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumePointCopyWith<ResumePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumePointCopyWith<$Res> {
  factory $ResumePointCopyWith(
          ResumePoint value, $Res Function(ResumePoint) then) =
      _$ResumePointCopyWithImpl<$Res, ResumePoint>;
  @useResult
  $Res call({bool? fullyPlayed, int? resumePositionMs});
}

/// @nodoc
class _$ResumePointCopyWithImpl<$Res, $Val extends ResumePoint>
    implements $ResumePointCopyWith<$Res> {
  _$ResumePointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullyPlayed = freezed,
    Object? resumePositionMs = freezed,
  }) {
    return _then(_value.copyWith(
      fullyPlayed: freezed == fullyPlayed
          ? _value.fullyPlayed
          : fullyPlayed // ignore: cast_nullable_to_non_nullable
              as bool?,
      resumePositionMs: freezed == resumePositionMs
          ? _value.resumePositionMs
          : resumePositionMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResumePointCopyWith<$Res>
    implements $ResumePointCopyWith<$Res> {
  factory _$$_ResumePointCopyWith(
          _$_ResumePoint value, $Res Function(_$_ResumePoint) then) =
      __$$_ResumePointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? fullyPlayed, int? resumePositionMs});
}

/// @nodoc
class __$$_ResumePointCopyWithImpl<$Res>
    extends _$ResumePointCopyWithImpl<$Res, _$_ResumePoint>
    implements _$$_ResumePointCopyWith<$Res> {
  __$$_ResumePointCopyWithImpl(
      _$_ResumePoint _value, $Res Function(_$_ResumePoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullyPlayed = freezed,
    Object? resumePositionMs = freezed,
  }) {
    return _then(_$_ResumePoint(
      freezed == fullyPlayed
          ? _value.fullyPlayed
          : fullyPlayed // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == resumePositionMs
          ? _value.resumePositionMs
          : resumePositionMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ResumePoint implements _ResumePoint {
  const _$_ResumePoint(this.fullyPlayed, this.resumePositionMs);

  factory _$_ResumePoint.fromJson(Map<String, dynamic> json) =>
      _$$_ResumePointFromJson(json);

  @override
  final bool? fullyPlayed;
  @override
  final int? resumePositionMs;

  @override
  String toString() {
    return 'ResumePoint(fullyPlayed: $fullyPlayed, resumePositionMs: $resumePositionMs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResumePoint &&
            (identical(other.fullyPlayed, fullyPlayed) ||
                other.fullyPlayed == fullyPlayed) &&
            (identical(other.resumePositionMs, resumePositionMs) ||
                other.resumePositionMs == resumePositionMs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullyPlayed, resumePositionMs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResumePointCopyWith<_$_ResumePoint> get copyWith =>
      __$$_ResumePointCopyWithImpl<_$_ResumePoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResumePointToJson(
      this,
    );
  }
}

abstract class _ResumePoint implements ResumePoint {
  const factory _ResumePoint(
      final bool? fullyPlayed, final int? resumePositionMs) = _$_ResumePoint;

  factory _ResumePoint.fromJson(Map<String, dynamic> json) =
      _$_ResumePoint.fromJson;

  @override
  bool? get fullyPlayed;
  @override
  int? get resumePositionMs;
  @override
  @JsonKey(ignore: true)
  _$$_ResumePointCopyWith<_$_ResumePoint> get copyWith =>
      throw _privateConstructorUsedError;
}
