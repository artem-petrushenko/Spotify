// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_devices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableDevicesModel _$AvailableDevicesModelFromJson(
    Map<String, dynamic> json) {
  return _AvailableDevicesModel.fromJson(json);
}

/// @nodoc
mixin _$AvailableDevicesModel {
  List<Devices>? get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableDevicesModelCopyWith<AvailableDevicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableDevicesModelCopyWith<$Res> {
  factory $AvailableDevicesModelCopyWith(AvailableDevicesModel value,
          $Res Function(AvailableDevicesModel) then) =
      _$AvailableDevicesModelCopyWithImpl<$Res, AvailableDevicesModel>;
  @useResult
  $Res call({List<Devices>? devices});
}

/// @nodoc
class _$AvailableDevicesModelCopyWithImpl<$Res,
        $Val extends AvailableDevicesModel>
    implements $AvailableDevicesModelCopyWith<$Res> {
  _$AvailableDevicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_value.copyWith(
      devices: freezed == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Devices>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableDevicesModelImplCopyWith<$Res>
    implements $AvailableDevicesModelCopyWith<$Res> {
  factory _$$AvailableDevicesModelImplCopyWith(
          _$AvailableDevicesModelImpl value,
          $Res Function(_$AvailableDevicesModelImpl) then) =
      __$$AvailableDevicesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Devices>? devices});
}

/// @nodoc
class __$$AvailableDevicesModelImplCopyWithImpl<$Res>
    extends _$AvailableDevicesModelCopyWithImpl<$Res,
        _$AvailableDevicesModelImpl>
    implements _$$AvailableDevicesModelImplCopyWith<$Res> {
  __$$AvailableDevicesModelImplCopyWithImpl(_$AvailableDevicesModelImpl _value,
      $Res Function(_$AvailableDevicesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_$AvailableDevicesModelImpl(
      freezed == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Devices>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AvailableDevicesModelImpl implements _AvailableDevicesModel {
  const _$AvailableDevicesModelImpl(final List<Devices>? devices)
      : _devices = devices;

  factory _$AvailableDevicesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableDevicesModelImplFromJson(json);

  final List<Devices>? _devices;
  @override
  List<Devices>? get devices {
    final value = _devices;
    if (value == null) return null;
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvailableDevicesModel(devices: $devices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableDevicesModelImpl &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableDevicesModelImplCopyWith<_$AvailableDevicesModelImpl>
      get copyWith => __$$AvailableDevicesModelImplCopyWithImpl<
          _$AvailableDevicesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableDevicesModelImplToJson(
      this,
    );
  }
}

abstract class _AvailableDevicesModel implements AvailableDevicesModel {
  const factory _AvailableDevicesModel(final List<Devices>? devices) =
      _$AvailableDevicesModelImpl;

  factory _AvailableDevicesModel.fromJson(Map<String, dynamic> json) =
      _$AvailableDevicesModelImpl.fromJson;

  @override
  List<Devices>? get devices;
  @override
  @JsonKey(ignore: true)
  _$$AvailableDevicesModelImplCopyWith<_$AvailableDevicesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Devices _$DevicesFromJson(Map<String, dynamic> json) {
  return _Devices.fromJson(json);
}

/// @nodoc
mixin _$Devices {
  String? get id => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isPrivateSession => throw _privateConstructorUsedError;
  bool? get isRestricted => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get volumePercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicesCopyWith<Devices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicesCopyWith<$Res> {
  factory $DevicesCopyWith(Devices value, $Res Function(Devices) then) =
      _$DevicesCopyWithImpl<$Res, Devices>;
  @useResult
  $Res call(
      {String? id,
      bool? isActive,
      bool? isPrivateSession,
      bool? isRestricted,
      String? name,
      String? type,
      int? volumePercent});
}

/// @nodoc
class _$DevicesCopyWithImpl<$Res, $Val extends Devices>
    implements $DevicesCopyWith<$Res> {
  _$DevicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isPrivateSession = freezed,
    Object? isRestricted = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? volumePercent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrivateSession: freezed == isPrivateSession
          ? _value.isPrivateSession
          : isPrivateSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRestricted: freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      volumePercent: freezed == volumePercent
          ? _value.volumePercent
          : volumePercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevicesImplCopyWith<$Res> implements $DevicesCopyWith<$Res> {
  factory _$$DevicesImplCopyWith(
          _$DevicesImpl value, $Res Function(_$DevicesImpl) then) =
      __$$DevicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? isActive,
      bool? isPrivateSession,
      bool? isRestricted,
      String? name,
      String? type,
      int? volumePercent});
}

/// @nodoc
class __$$DevicesImplCopyWithImpl<$Res>
    extends _$DevicesCopyWithImpl<$Res, _$DevicesImpl>
    implements _$$DevicesImplCopyWith<$Res> {
  __$$DevicesImplCopyWithImpl(
      _$DevicesImpl _value, $Res Function(_$DevicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? isPrivateSession = freezed,
    Object? isRestricted = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? volumePercent = freezed,
  }) {
    return _then(_$DevicesImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == isPrivateSession
          ? _value.isPrivateSession
          : isPrivateSession // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == isRestricted
          ? _value.isRestricted
          : isRestricted // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == volumePercent
          ? _value.volumePercent
          : volumePercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DevicesImpl implements _Devices {
  const _$DevicesImpl(this.id, this.isActive, this.isPrivateSession,
      this.isRestricted, this.name, this.type, this.volumePercent);

  factory _$DevicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevicesImplFromJson(json);

  @override
  final String? id;
  @override
  final bool? isActive;
  @override
  final bool? isPrivateSession;
  @override
  final bool? isRestricted;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final int? volumePercent;

  @override
  String toString() {
    return 'Devices(id: $id, isActive: $isActive, isPrivateSession: $isPrivateSession, isRestricted: $isRestricted, name: $name, type: $type, volumePercent: $volumePercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevicesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPrivateSession, isPrivateSession) ||
                other.isPrivateSession == isPrivateSession) &&
            (identical(other.isRestricted, isRestricted) ||
                other.isRestricted == isRestricted) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.volumePercent, volumePercent) ||
                other.volumePercent == volumePercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isActive, isPrivateSession,
      isRestricted, name, type, volumePercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DevicesImplCopyWith<_$DevicesImpl> get copyWith =>
      __$$DevicesImplCopyWithImpl<_$DevicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevicesImplToJson(
      this,
    );
  }
}

abstract class _Devices implements Devices {
  const factory _Devices(
      final String? id,
      final bool? isActive,
      final bool? isPrivateSession,
      final bool? isRestricted,
      final String? name,
      final String? type,
      final int? volumePercent) = _$DevicesImpl;

  factory _Devices.fromJson(Map<String, dynamic> json) = _$DevicesImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get isActive;
  @override
  bool? get isPrivateSession;
  @override
  bool? get isRestricted;
  @override
  String? get name;
  @override
  String? get type;
  @override
  int? get volumePercent;
  @override
  @JsonKey(ignore: true)
  _$$DevicesImplCopyWith<_$DevicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
