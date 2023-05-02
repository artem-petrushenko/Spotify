// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mini_player_local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiniPlayerLocalModel _$MiniPlayerLocalModelFromJson(Map<String, dynamic> json) {
  return _MiniPlayerLocalModel.fromJson(json);
}

/// @nodoc
mixin _$MiniPlayerLocalModel {
  String? get name => throw _privateConstructorUsedError;
  String? get artists => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get progressPercent => throw _privateConstructorUsedError;
  bool? get isPlaying => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiniPlayerLocalModelCopyWith<MiniPlayerLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniPlayerLocalModelCopyWith<$Res> {
  factory $MiniPlayerLocalModelCopyWith(MiniPlayerLocalModel value,
          $Res Function(MiniPlayerLocalModel) then) =
      _$MiniPlayerLocalModelCopyWithImpl<$Res, MiniPlayerLocalModel>;
  @useResult
  $Res call(
      {String? name,
      String? artists,
      String? image,
      double? progressPercent,
      bool? isPlaying});
}

/// @nodoc
class _$MiniPlayerLocalModelCopyWithImpl<$Res,
        $Val extends MiniPlayerLocalModel>
    implements $MiniPlayerLocalModelCopyWith<$Res> {
  _$MiniPlayerLocalModelCopyWithImpl(this._value, this._then);

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
    Object? progressPercent = freezed,
    Object? isPlaying = freezed,
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
      progressPercent: freezed == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MiniPlayerLocalModelCopyWith<$Res>
    implements $MiniPlayerLocalModelCopyWith<$Res> {
  factory _$$_MiniPlayerLocalModelCopyWith(_$_MiniPlayerLocalModel value,
          $Res Function(_$_MiniPlayerLocalModel) then) =
      __$$_MiniPlayerLocalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? artists,
      String? image,
      double? progressPercent,
      bool? isPlaying});
}

/// @nodoc
class __$$_MiniPlayerLocalModelCopyWithImpl<$Res>
    extends _$MiniPlayerLocalModelCopyWithImpl<$Res, _$_MiniPlayerLocalModel>
    implements _$$_MiniPlayerLocalModelCopyWith<$Res> {
  __$$_MiniPlayerLocalModelCopyWithImpl(_$_MiniPlayerLocalModel _value,
      $Res Function(_$_MiniPlayerLocalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? artists = freezed,
    Object? image = freezed,
    Object? progressPercent = freezed,
    Object? isPlaying = freezed,
  }) {
    return _then(_$_MiniPlayerLocalModel(
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
      progressPercent: freezed == progressPercent
          ? _value.progressPercent
          : progressPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      isPlaying: freezed == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_MiniPlayerLocalModel implements _MiniPlayerLocalModel {
  const _$_MiniPlayerLocalModel(
      {this.name,
      this.artists,
      this.image,
      this.progressPercent,
      this.isPlaying});

  factory _$_MiniPlayerLocalModel.fromJson(Map<String, dynamic> json) =>
      _$$_MiniPlayerLocalModelFromJson(json);

  @override
  final String? name;
  @override
  final String? artists;
  @override
  final String? image;
  @override
  final double? progressPercent;
  @override
  final bool? isPlaying;

  @override
  String toString() {
    return 'MiniPlayerLocalModel(name: $name, artists: $artists, image: $image, progressPercent: $progressPercent, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MiniPlayerLocalModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artists, artists) || other.artists == artists) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.progressPercent, progressPercent) ||
                other.progressPercent == progressPercent) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, artists, image, progressPercent, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MiniPlayerLocalModelCopyWith<_$_MiniPlayerLocalModel> get copyWith =>
      __$$_MiniPlayerLocalModelCopyWithImpl<_$_MiniPlayerLocalModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MiniPlayerLocalModelToJson(
      this,
    );
  }
}

abstract class _MiniPlayerLocalModel implements MiniPlayerLocalModel {
  const factory _MiniPlayerLocalModel(
      {final String? name,
      final String? artists,
      final String? image,
      final double? progressPercent,
      final bool? isPlaying}) = _$_MiniPlayerLocalModel;

  factory _MiniPlayerLocalModel.fromJson(Map<String, dynamic> json) =
      _$_MiniPlayerLocalModel.fromJson;

  @override
  String? get name;
  @override
  String? get artists;
  @override
  String? get image;
  @override
  double? get progressPercent;
  @override
  bool? get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$_MiniPlayerLocalModelCopyWith<_$_MiniPlayerLocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
