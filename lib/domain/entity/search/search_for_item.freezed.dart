// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_for_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchForItemModel _$SearchForItemModelFromJson(Map<String, dynamic> json) {
  return _SearchForItemModel.fromJson(json);
}

/// @nodoc
mixin _$SearchForItemModel {
  Albums? get albums => throw _privateConstructorUsedError;
  Artists? get artists => throw _privateConstructorUsedError;
  Tracks? get tracks => throw _privateConstructorUsedError;
  Playlists? get playlists => throw _privateConstructorUsedError;
  Shows? get shows => throw _privateConstructorUsedError;
  Episodes? get episodes => throw _privateConstructorUsedError;
  Audiobooks? get audiobooks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchForItemModelCopyWith<SearchForItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchForItemModelCopyWith<$Res> {
  factory $SearchForItemModelCopyWith(
          SearchForItemModel value, $Res Function(SearchForItemModel) then) =
      _$SearchForItemModelCopyWithImpl<$Res, SearchForItemModel>;
  @useResult
  $Res call(
      {Albums? albums,
      Artists? artists,
      Tracks? tracks,
      Playlists? playlists,
      Shows? shows,
      Episodes? episodes,
      Audiobooks? audiobooks});

  $AlbumsCopyWith<$Res>? get albums;
  $ArtistsCopyWith<$Res>? get artists;
  $TracksCopyWith<$Res>? get tracks;
  $PlaylistsCopyWith<$Res>? get playlists;
  $ShowsCopyWith<$Res>? get shows;
  $EpisodesCopyWith<$Res>? get episodes;
  $AudiobooksCopyWith<$Res>? get audiobooks;
}

/// @nodoc
class _$SearchForItemModelCopyWithImpl<$Res, $Val extends SearchForItemModel>
    implements $SearchForItemModelCopyWith<$Res> {
  _$SearchForItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
    Object? artists = freezed,
    Object? tracks = freezed,
    Object? playlists = freezed,
    Object? shows = freezed,
    Object? episodes = freezed,
    Object? audiobooks = freezed,
  }) {
    return _then(_value.copyWith(
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as Artists?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      playlists: freezed == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists?,
      shows: freezed == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as Shows?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as Episodes?,
      audiobooks: freezed == audiobooks
          ? _value.audiobooks
          : audiobooks // ignore: cast_nullable_to_non_nullable
              as Audiobooks?,
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

  @override
  @pragma('vm:prefer-inline')
  $ArtistsCopyWith<$Res>? get artists {
    if (_value.artists == null) {
      return null;
    }

    return $ArtistsCopyWith<$Res>(_value.artists!, (value) {
      return _then(_value.copyWith(artists: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TracksCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistsCopyWith<$Res>? get playlists {
    if (_value.playlists == null) {
      return null;
    }

    return $PlaylistsCopyWith<$Res>(_value.playlists!, (value) {
      return _then(_value.copyWith(playlists: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowsCopyWith<$Res>? get shows {
    if (_value.shows == null) {
      return null;
    }

    return $ShowsCopyWith<$Res>(_value.shows!, (value) {
      return _then(_value.copyWith(shows: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodesCopyWith<$Res>? get episodes {
    if (_value.episodes == null) {
      return null;
    }

    return $EpisodesCopyWith<$Res>(_value.episodes!, (value) {
      return _then(_value.copyWith(episodes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudiobooksCopyWith<$Res>? get audiobooks {
    if (_value.audiobooks == null) {
      return null;
    }

    return $AudiobooksCopyWith<$Res>(_value.audiobooks!, (value) {
      return _then(_value.copyWith(audiobooks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchForItemModelImplCopyWith<$Res>
    implements $SearchForItemModelCopyWith<$Res> {
  factory _$$SearchForItemModelImplCopyWith(_$SearchForItemModelImpl value,
          $Res Function(_$SearchForItemModelImpl) then) =
      __$$SearchForItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Albums? albums,
      Artists? artists,
      Tracks? tracks,
      Playlists? playlists,
      Shows? shows,
      Episodes? episodes,
      Audiobooks? audiobooks});

  @override
  $AlbumsCopyWith<$Res>? get albums;
  @override
  $ArtistsCopyWith<$Res>? get artists;
  @override
  $TracksCopyWith<$Res>? get tracks;
  @override
  $PlaylistsCopyWith<$Res>? get playlists;
  @override
  $ShowsCopyWith<$Res>? get shows;
  @override
  $EpisodesCopyWith<$Res>? get episodes;
  @override
  $AudiobooksCopyWith<$Res>? get audiobooks;
}

/// @nodoc
class __$$SearchForItemModelImplCopyWithImpl<$Res>
    extends _$SearchForItemModelCopyWithImpl<$Res, _$SearchForItemModelImpl>
    implements _$$SearchForItemModelImplCopyWith<$Res> {
  __$$SearchForItemModelImplCopyWithImpl(_$SearchForItemModelImpl _value,
      $Res Function(_$SearchForItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = freezed,
    Object? artists = freezed,
    Object? tracks = freezed,
    Object? playlists = freezed,
    Object? shows = freezed,
    Object? episodes = freezed,
    Object? audiobooks = freezed,
  }) {
    return _then(_$SearchForItemModelImpl(
      freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as Albums?,
      freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as Artists?,
      freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks?,
      freezed == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists?,
      freezed == shows
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as Shows?,
      freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as Episodes?,
      freezed == audiobooks
          ? _value.audiobooks
          : audiobooks // ignore: cast_nullable_to_non_nullable
              as Audiobooks?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchForItemModelImpl implements _SearchForItemModel {
  const _$SearchForItemModelImpl(this.albums, this.artists, this.tracks,
      this.playlists, this.shows, this.episodes, this.audiobooks);

  factory _$SearchForItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchForItemModelImplFromJson(json);

  @override
  final Albums? albums;
  @override
  final Artists? artists;
  @override
  final Tracks? tracks;
  @override
  final Playlists? playlists;
  @override
  final Shows? shows;
  @override
  final Episodes? episodes;
  @override
  final Audiobooks? audiobooks;

  @override
  String toString() {
    return 'SearchForItemModel(albums: $albums, artists: $artists, tracks: $tracks, playlists: $playlists, shows: $shows, episodes: $episodes, audiobooks: $audiobooks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchForItemModelImpl &&
            (identical(other.albums, albums) || other.albums == albums) &&
            (identical(other.artists, artists) || other.artists == artists) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.playlists, playlists) ||
                other.playlists == playlists) &&
            (identical(other.shows, shows) || other.shows == shows) &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes) &&
            (identical(other.audiobooks, audiobooks) ||
                other.audiobooks == audiobooks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, albums, artists, tracks,
      playlists, shows, episodes, audiobooks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchForItemModelImplCopyWith<_$SearchForItemModelImpl> get copyWith =>
      __$$SearchForItemModelImplCopyWithImpl<_$SearchForItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchForItemModelImplToJson(
      this,
    );
  }
}

abstract class _SearchForItemModel implements SearchForItemModel {
  const factory _SearchForItemModel(
      final Albums? albums,
      final Artists? artists,
      final Tracks? tracks,
      final Playlists? playlists,
      final Shows? shows,
      final Episodes? episodes,
      final Audiobooks? audiobooks) = _$SearchForItemModelImpl;

  factory _SearchForItemModel.fromJson(Map<String, dynamic> json) =
      _$SearchForItemModelImpl.fromJson;

  @override
  Albums? get albums;
  @override
  Artists? get artists;
  @override
  Tracks? get tracks;
  @override
  Playlists? get playlists;
  @override
  Shows? get shows;
  @override
  Episodes? get episodes;
  @override
  Audiobooks? get audiobooks;
  @override
  @JsonKey(ignore: true)
  _$$SearchForItemModelImplCopyWith<_$SearchForItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
