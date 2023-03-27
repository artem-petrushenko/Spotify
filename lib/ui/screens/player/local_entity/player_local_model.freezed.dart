// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerLocalModel _$PlayerLocalModelFromJson(Map<String, dynamic> json) {
  return _PlayerLocalModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerLocalModel {
  String? get name => throw _privateConstructorUsedError;
  String? get artists => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get progressMs => throw _privateConstructorUsedError;
  double? get durationMs => throw _privateConstructorUsedError;
  bool? get shuffleState => throw _privateConstructorUsedError;
  bool? get isPlaying => throw _privateConstructorUsedError;
  String? get repeatState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerLocalModelCopyWith<PlayerLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerLocalModelCopyWith<$Res> {
  factory $PlayerLocalModelCopyWith(
          PlayerLocalModel value, $Res Function(PlayerLocalModel) then) =
      _$PlayerLocalModelCopyWithImpl<$Res, PlayerLocalModel>;
  @useResult
  $Res call(
      {String? name,
      String? artists,
      String? image,
      double? progressMs,
      double? durationMs,
      bool? shuffleState,
      bool? isPlaying,
      String? repeatState});
}

/// @nodoc
class _$PlayerLocalModelCopyWithImpl<$Res, $Val extends PlayerLocalModel>
    implements $PlayerLocalModelCopyWith<$Res> {
  _$PlayerLocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? artists = freezed,
    Object? image = freezed,
    Object? progressMs = freezed,
    Object? durationMs = freezed,
    Object? shuffleState = freezed,
    Object? isPlaying = freezed,
    Object? repeatState = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      progressMs: freezed == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as double?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as double?,
      shuffleState: freezed == shuffleState
          ? _value.shuffleState
          : shuffleState // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatState: freezed == repeatState
          ? _value.repeatState
          : repeatState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerLocalModelCopyWith<$Res>
    implements $PlayerLocalModelCopyWith<$Res> {
  factory _$$_PlayerLocalModelCopyWith(
          _$_PlayerLocalModel value, $Res Function(_$_PlayerLocalModel) then) =
      __$$_PlayerLocalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? artists,
      String? image,
      double? progressMs,
      double? durationMs,
      bool? shuffleState,
      bool? isPlaying,
      String? repeatState});
}

/// @nodoc
class __$$_PlayerLocalModelCopyWithImpl<$Res>
    extends _$PlayerLocalModelCopyWithImpl<$Res, _$_PlayerLocalModel>
    implements _$$_PlayerLocalModelCopyWith<$Res> {
  __$$_PlayerLocalModelCopyWithImpl(
      _$_PlayerLocalModel _value, $Res Function(_$_PlayerLocalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? artists = freezed,
    Object? image = freezed,
    Object? progressMs = freezed,
    Object? durationMs = freezed,
    Object? shuffleState = freezed,
    Object? isPlaying = freezed,
    Object? repeatState = freezed,
  }) {
    return _then(_$_PlayerLocalModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      progressMs: freezed == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as double?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as double?,
      shuffleState: freezed == shuffleState
          ? _value.shuffleState
          : shuffleState // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
      repeatState: freezed == repeatState
          ? _value.repeatState
          : repeatState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_PlayerLocalModel implements _PlayerLocalModel {
  const _$_PlayerLocalModel(
      {this.name,
      this.artists,
      this.image,
      this.progressMs,
      this.durationMs,
      this.shuffleState,
      this.isPlaying,
      this.repeatState});

  factory _$_PlayerLocalModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerLocalModelFromJson(json);

  @override
  final String? name;
  @override
  final String? artists;
  @override
  final String? image;
  @override
  final double? progressMs;
  @override
  final double? durationMs;
  @override
  final bool? shuffleState;
  @override
  final bool? isPlaying;
  @override
  final String? repeatState;

  @override
  String toString() {
    return 'PlayerLocalModel(name: $name, artists: $artists, image: $image, progressMs: $progressMs, durationMs: $durationMs, shuffleState: $shuffleState, isPlaying: $isPlaying, repeatState: $repeatState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerLocalModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artists, artists) || other.artists == artists) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.progressMs, progressMs) ||
                other.progressMs == progressMs) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.shuffleState, shuffleState) ||
                other.shuffleState == shuffleState) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.repeatState, repeatState) ||
                other.repeatState == repeatState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, artists, image, progressMs,
      durationMs, shuffleState, isPlaying, repeatState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerLocalModelCopyWith<_$_PlayerLocalModel> get copyWith =>
      __$$_PlayerLocalModelCopyWithImpl<_$_PlayerLocalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerLocalModelToJson(
      this,
    );
  }
}

abstract class _PlayerLocalModel implements PlayerLocalModel {
  const factory _PlayerLocalModel(
      {final String? name,
      final String? artists,
      final String? image,
      final double? progressMs,
      final double? durationMs,
      final bool? shuffleState,
      final bool? isPlaying,
      final String? repeatState}) = _$_PlayerLocalModel;

  factory _PlayerLocalModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerLocalModel.fromJson;

  @override
  String? get name;
  @override
  String? get artists;
  @override
  String? get image;
  @override
  double? get progressMs;
  @override
  double? get durationMs;
  @override
  bool? get shuffleState;
  @override
  bool? get isPlaying;
  @override
  String? get repeatState;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerLocalModelCopyWith<_$_PlayerLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
