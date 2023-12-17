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
  List<ItemsEpisodes>? get items => throw _privateConstructorUsedError;
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
      List<ItemsEpisodes>? items,
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
              as List<ItemsEpisodes>?,
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
abstract class _$$EpisodesImplCopyWith<$Res>
    implements $EpisodesCopyWith<$Res> {
  factory _$$EpisodesImplCopyWith(
          _$EpisodesImpl value, $Res Function(_$EpisodesImpl) then) =
      __$$EpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsEpisodes>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$EpisodesImplCopyWithImpl<$Res>
    extends _$EpisodesCopyWithImpl<$Res, _$EpisodesImpl>
    implements _$$EpisodesImplCopyWith<$Res> {
  __$$EpisodesImplCopyWithImpl(
      _$EpisodesImpl _value, $Res Function(_$EpisodesImpl) _then)
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
    return _then(_$EpisodesImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsEpisodes>?,
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
class _$EpisodesImpl implements _Episodes {
  const _$EpisodesImpl(this.href, final List<ItemsEpisodes>? items, this.limit,
      this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$EpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesImplFromJson(json);

  @override
  final String? href;
  final List<ItemsEpisodes>? _items;
  @override
  List<ItemsEpisodes>? get items {
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesImpl &&
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
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      __$$EpisodesImplCopyWithImpl<_$EpisodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesImplToJson(
      this,
    );
  }
}

abstract class _Episodes implements Episodes {
  const factory _Episodes(
      final String? href,
      final List<ItemsEpisodes>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$EpisodesImpl;

  factory _Episodes.fromJson(Map<String, dynamic> json) =
      _$EpisodesImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsEpisodes>? get items;
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
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsEpisodes _$ItemsEpisodesFromJson(Map<String, dynamic> json) {
  return _ItemsEpisodes.fromJson(json);
}

/// @nodoc
mixin _$ItemsEpisodes {
  String? get audioPreviewUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get durationMs => throw _privateConstructorUsedError;
  bool? get explicit => throw _privateConstructorUsedError;
  ExternalUrlsEpisodes? get externalUrls => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;
  String? get htmlDescription => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<ImagesEpisodes>? get images => throw _privateConstructorUsedError;
  bool? get isExternallyHosted => throw _privateConstructorUsedError;
  bool? get isPlayable => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get releaseDatePrecision => throw _privateConstructorUsedError;
  ResumePointEpisodes? get resumePoint => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsEpisodesCopyWith<ItemsEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsEpisodesCopyWith<$Res> {
  factory $ItemsEpisodesCopyWith(
          ItemsEpisodes value, $Res Function(ItemsEpisodes) then) =
      _$ItemsEpisodesCopyWithImpl<$Res, ItemsEpisodes>;
  @useResult
  $Res call(
      {String? audioPreviewUrl,
      String? description,
      int? durationMs,
      bool? explicit,
      ExternalUrlsEpisodes? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<ImagesEpisodes>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      ResumePointEpisodes? resumePoint,
      String? type,
      String? uri});

  $ExternalUrlsEpisodesCopyWith<$Res>? get externalUrls;
  $ResumePointEpisodesCopyWith<$Res>? get resumePoint;
}

/// @nodoc
class _$ItemsEpisodesCopyWithImpl<$Res, $Val extends ItemsEpisodes>
    implements $ItemsEpisodesCopyWith<$Res> {
  _$ItemsEpisodesCopyWithImpl(this._value, this._then);

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
              as ExternalUrlsEpisodes?,
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
              as List<ImagesEpisodes>?,
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
              as ResumePointEpisodes?,
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
  $ExternalUrlsEpisodesCopyWith<$Res>? get externalUrls {
    if (_value.externalUrls == null) {
      return null;
    }

    return $ExternalUrlsEpisodesCopyWith<$Res>(_value.externalUrls!, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResumePointEpisodesCopyWith<$Res>? get resumePoint {
    if (_value.resumePoint == null) {
      return null;
    }

    return $ResumePointEpisodesCopyWith<$Res>(_value.resumePoint!, (value) {
      return _then(_value.copyWith(resumePoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsEpisodesImplCopyWith<$Res>
    implements $ItemsEpisodesCopyWith<$Res> {
  factory _$$ItemsEpisodesImplCopyWith(
          _$ItemsEpisodesImpl value, $Res Function(_$ItemsEpisodesImpl) then) =
      __$$ItemsEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? audioPreviewUrl,
      String? description,
      int? durationMs,
      bool? explicit,
      ExternalUrlsEpisodes? externalUrls,
      String? href,
      String? htmlDescription,
      String? id,
      List<ImagesEpisodes>? images,
      bool? isExternallyHosted,
      bool? isPlayable,
      String? language,
      List<String>? languages,
      String? name,
      String? releaseDate,
      String? releaseDatePrecision,
      ResumePointEpisodes? resumePoint,
      String? type,
      String? uri});

  @override
  $ExternalUrlsEpisodesCopyWith<$Res>? get externalUrls;
  @override
  $ResumePointEpisodesCopyWith<$Res>? get resumePoint;
}

/// @nodoc
class __$$ItemsEpisodesImplCopyWithImpl<$Res>
    extends _$ItemsEpisodesCopyWithImpl<$Res, _$ItemsEpisodesImpl>
    implements _$$ItemsEpisodesImplCopyWith<$Res> {
  __$$ItemsEpisodesImplCopyWithImpl(
      _$ItemsEpisodesImpl _value, $Res Function(_$ItemsEpisodesImpl) _then)
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
    return _then(_$ItemsEpisodesImpl(
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
              as ExternalUrlsEpisodes?,
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
              as List<ImagesEpisodes>?,
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
              as ResumePointEpisodes?,
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
class _$ItemsEpisodesImpl implements _ItemsEpisodes {
  const _$ItemsEpisodesImpl(
      this.audioPreviewUrl,
      this.description,
      this.durationMs,
      this.explicit,
      this.externalUrls,
      this.href,
      this.htmlDescription,
      this.id,
      final List<ImagesEpisodes>? images,
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

  factory _$ItemsEpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsEpisodesImplFromJson(json);

  @override
  final String? audioPreviewUrl;
  @override
  final String? description;
  @override
  final int? durationMs;
  @override
  final bool? explicit;
  @override
  final ExternalUrlsEpisodes? externalUrls;
  @override
  final String? href;
  @override
  final String? htmlDescription;
  @override
  final String? id;
  final List<ImagesEpisodes>? _images;
  @override
  List<ImagesEpisodes>? get images {
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
  final ResumePointEpisodes? resumePoint;
  @override
  final String? type;
  @override
  final String? uri;

  @override
  String toString() {
    return 'ItemsEpisodes(audioPreviewUrl: $audioPreviewUrl, description: $description, durationMs: $durationMs, explicit: $explicit, externalUrls: $externalUrls, href: $href, htmlDescription: $htmlDescription, id: $id, images: $images, isExternallyHosted: $isExternallyHosted, isPlayable: $isPlayable, language: $language, languages: $languages, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, resumePoint: $resumePoint, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsEpisodesImpl &&
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
  _$$ItemsEpisodesImplCopyWith<_$ItemsEpisodesImpl> get copyWith =>
      __$$ItemsEpisodesImplCopyWithImpl<_$ItemsEpisodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsEpisodesImplToJson(
      this,
    );
  }
}

abstract class _ItemsEpisodes implements ItemsEpisodes {
  const factory _ItemsEpisodes(
      final String? audioPreviewUrl,
      final String? description,
      final int? durationMs,
      final bool? explicit,
      final ExternalUrlsEpisodes? externalUrls,
      final String? href,
      final String? htmlDescription,
      final String? id,
      final List<ImagesEpisodes>? images,
      final bool? isExternallyHosted,
      final bool? isPlayable,
      final String? language,
      final List<String>? languages,
      final String? name,
      final String? releaseDate,
      final String? releaseDatePrecision,
      final ResumePointEpisodes? resumePoint,
      final String? type,
      final String? uri) = _$ItemsEpisodesImpl;

  factory _ItemsEpisodes.fromJson(Map<String, dynamic> json) =
      _$ItemsEpisodesImpl.fromJson;

  @override
  String? get audioPreviewUrl;
  @override
  String? get description;
  @override
  int? get durationMs;
  @override
  bool? get explicit;
  @override
  ExternalUrlsEpisodes? get externalUrls;
  @override
  String? get href;
  @override
  String? get htmlDescription;
  @override
  String? get id;
  @override
  List<ImagesEpisodes>? get images;
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
  ResumePointEpisodes? get resumePoint;
  @override
  String? get type;
  @override
  String? get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemsEpisodesImplCopyWith<_$ItemsEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrlsEpisodes _$ExternalUrlsEpisodesFromJson(Map<String, dynamic> json) {
  return _ExternalUrlsEpisodes.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrlsEpisodes {
  String? get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsEpisodesCopyWith<ExternalUrlsEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsEpisodesCopyWith<$Res> {
  factory $ExternalUrlsEpisodesCopyWith(ExternalUrlsEpisodes value,
          $Res Function(ExternalUrlsEpisodes) then) =
      _$ExternalUrlsEpisodesCopyWithImpl<$Res, ExternalUrlsEpisodes>;
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class _$ExternalUrlsEpisodesCopyWithImpl<$Res,
        $Val extends ExternalUrlsEpisodes>
    implements $ExternalUrlsEpisodesCopyWith<$Res> {
  _$ExternalUrlsEpisodesCopyWithImpl(this._value, this._then);

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
abstract class _$$ExternalUrlsEpisodesImplCopyWith<$Res>
    implements $ExternalUrlsEpisodesCopyWith<$Res> {
  factory _$$ExternalUrlsEpisodesImplCopyWith(_$ExternalUrlsEpisodesImpl value,
          $Res Function(_$ExternalUrlsEpisodesImpl) then) =
      __$$ExternalUrlsEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? spotify});
}

/// @nodoc
class __$$ExternalUrlsEpisodesImplCopyWithImpl<$Res>
    extends _$ExternalUrlsEpisodesCopyWithImpl<$Res, _$ExternalUrlsEpisodesImpl>
    implements _$$ExternalUrlsEpisodesImplCopyWith<$Res> {
  __$$ExternalUrlsEpisodesImplCopyWithImpl(_$ExternalUrlsEpisodesImpl _value,
      $Res Function(_$ExternalUrlsEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = freezed,
  }) {
    return _then(_$ExternalUrlsEpisodesImpl(
      freezed == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ExternalUrlsEpisodesImpl implements _ExternalUrlsEpisodes {
  const _$ExternalUrlsEpisodesImpl(this.spotify);

  factory _$ExternalUrlsEpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsEpisodesImplFromJson(json);

  @override
  final String? spotify;

  @override
  String toString() {
    return 'ExternalUrlsEpisodes(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsEpisodesImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsEpisodesImplCopyWith<_$ExternalUrlsEpisodesImpl>
      get copyWith =>
          __$$ExternalUrlsEpisodesImplCopyWithImpl<_$ExternalUrlsEpisodesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsEpisodesImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrlsEpisodes implements ExternalUrlsEpisodes {
  const factory _ExternalUrlsEpisodes(final String? spotify) =
      _$ExternalUrlsEpisodesImpl;

  factory _ExternalUrlsEpisodes.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsEpisodesImpl.fromJson;

  @override
  String? get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsEpisodesImplCopyWith<_$ExternalUrlsEpisodesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImagesEpisodes _$ImagesEpisodesFromJson(Map<String, dynamic> json) {
  return _ImagesEpisodes.fromJson(json);
}

/// @nodoc
mixin _$ImagesEpisodes {
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesEpisodesCopyWith<ImagesEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesEpisodesCopyWith<$Res> {
  factory $ImagesEpisodesCopyWith(
          ImagesEpisodes value, $Res Function(ImagesEpisodes) then) =
      _$ImagesEpisodesCopyWithImpl<$Res, ImagesEpisodes>;
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class _$ImagesEpisodesCopyWithImpl<$Res, $Val extends ImagesEpisodes>
    implements $ImagesEpisodesCopyWith<$Res> {
  _$ImagesEpisodesCopyWithImpl(this._value, this._then);

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
abstract class _$$ImagesEpisodesImplCopyWith<$Res>
    implements $ImagesEpisodesCopyWith<$Res> {
  factory _$$ImagesEpisodesImplCopyWith(_$ImagesEpisodesImpl value,
          $Res Function(_$ImagesEpisodesImpl) then) =
      __$$ImagesEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? height, String? url, int? width});
}

/// @nodoc
class __$$ImagesEpisodesImplCopyWithImpl<$Res>
    extends _$ImagesEpisodesCopyWithImpl<$Res, _$ImagesEpisodesImpl>
    implements _$$ImagesEpisodesImplCopyWith<$Res> {
  __$$ImagesEpisodesImplCopyWithImpl(
      _$ImagesEpisodesImpl _value, $Res Function(_$ImagesEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$ImagesEpisodesImpl(
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
class _$ImagesEpisodesImpl implements _ImagesEpisodes {
  const _$ImagesEpisodesImpl(this.height, this.url, this.width);

  factory _$ImagesEpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesEpisodesImplFromJson(json);

  @override
  final int? height;
  @override
  final String? url;
  @override
  final int? width;

  @override
  String toString() {
    return 'ImagesEpisodes(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesEpisodesImpl &&
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
  _$$ImagesEpisodesImplCopyWith<_$ImagesEpisodesImpl> get copyWith =>
      __$$ImagesEpisodesImplCopyWithImpl<_$ImagesEpisodesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesEpisodesImplToJson(
      this,
    );
  }
}

abstract class _ImagesEpisodes implements ImagesEpisodes {
  const factory _ImagesEpisodes(
          final int? height, final String? url, final int? width) =
      _$ImagesEpisodesImpl;

  factory _ImagesEpisodes.fromJson(Map<String, dynamic> json) =
      _$ImagesEpisodesImpl.fromJson;

  @override
  int? get height;
  @override
  String? get url;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImagesEpisodesImplCopyWith<_$ImagesEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResumePointEpisodes _$ResumePointEpisodesFromJson(Map<String, dynamic> json) {
  return _ResumePointEpisodes.fromJson(json);
}

/// @nodoc
mixin _$ResumePointEpisodes {
  bool? get fullyPlayed => throw _privateConstructorUsedError;
  int? get resumePositionMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumePointEpisodesCopyWith<ResumePointEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumePointEpisodesCopyWith<$Res> {
  factory $ResumePointEpisodesCopyWith(
          ResumePointEpisodes value, $Res Function(ResumePointEpisodes) then) =
      _$ResumePointEpisodesCopyWithImpl<$Res, ResumePointEpisodes>;
  @useResult
  $Res call({bool? fullyPlayed, int? resumePositionMs});
}

/// @nodoc
class _$ResumePointEpisodesCopyWithImpl<$Res, $Val extends ResumePointEpisodes>
    implements $ResumePointEpisodesCopyWith<$Res> {
  _$ResumePointEpisodesCopyWithImpl(this._value, this._then);

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
abstract class _$$ResumePointEpisodesImplCopyWith<$Res>
    implements $ResumePointEpisodesCopyWith<$Res> {
  factory _$$ResumePointEpisodesImplCopyWith(_$ResumePointEpisodesImpl value,
          $Res Function(_$ResumePointEpisodesImpl) then) =
      __$$ResumePointEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? fullyPlayed, int? resumePositionMs});
}

/// @nodoc
class __$$ResumePointEpisodesImplCopyWithImpl<$Res>
    extends _$ResumePointEpisodesCopyWithImpl<$Res, _$ResumePointEpisodesImpl>
    implements _$$ResumePointEpisodesImplCopyWith<$Res> {
  __$$ResumePointEpisodesImplCopyWithImpl(_$ResumePointEpisodesImpl _value,
      $Res Function(_$ResumePointEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullyPlayed = freezed,
    Object? resumePositionMs = freezed,
  }) {
    return _then(_$ResumePointEpisodesImpl(
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
class _$ResumePointEpisodesImpl implements _ResumePointEpisodes {
  const _$ResumePointEpisodesImpl(this.fullyPlayed, this.resumePositionMs);

  factory _$ResumePointEpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumePointEpisodesImplFromJson(json);

  @override
  final bool? fullyPlayed;
  @override
  final int? resumePositionMs;

  @override
  String toString() {
    return 'ResumePointEpisodes(fullyPlayed: $fullyPlayed, resumePositionMs: $resumePositionMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumePointEpisodesImpl &&
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
  _$$ResumePointEpisodesImplCopyWith<_$ResumePointEpisodesImpl> get copyWith =>
      __$$ResumePointEpisodesImplCopyWithImpl<_$ResumePointEpisodesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumePointEpisodesImplToJson(
      this,
    );
  }
}

abstract class _ResumePointEpisodes implements ResumePointEpisodes {
  const factory _ResumePointEpisodes(
          final bool? fullyPlayed, final int? resumePositionMs) =
      _$ResumePointEpisodesImpl;

  factory _ResumePointEpisodes.fromJson(Map<String, dynamic> json) =
      _$ResumePointEpisodesImpl.fromJson;

  @override
  bool? get fullyPlayed;
  @override
  int? get resumePositionMs;
  @override
  @JsonKey(ignore: true)
  _$$ResumePointEpisodesImplCopyWith<_$ResumePointEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
