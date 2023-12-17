// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audiobooks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Audiobooks _$AudiobooksFromJson(Map<String, dynamic> json) {
  return _Audiobooks.fromJson(json);
}

/// @nodoc
mixin _$Audiobooks {
  String? get href => throw _privateConstructorUsedError;
  List<ItemsAudiobooks>? get items => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudiobooksCopyWith<Audiobooks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudiobooksCopyWith<$Res> {
  factory $AudiobooksCopyWith(
          Audiobooks value, $Res Function(Audiobooks) then) =
      _$AudiobooksCopyWithImpl<$Res, Audiobooks>;
  @useResult
  $Res call(
      {String? href,
      List<ItemsAudiobooks>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class _$AudiobooksCopyWithImpl<$Res, $Val extends Audiobooks>
    implements $AudiobooksCopyWith<$Res> {
  _$AudiobooksCopyWithImpl(this._value, this._then);

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
              as List<ItemsAudiobooks>?,
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
abstract class _$$AudiobooksImplCopyWith<$Res>
    implements $AudiobooksCopyWith<$Res> {
  factory _$$AudiobooksImplCopyWith(
          _$AudiobooksImpl value, $Res Function(_$AudiobooksImpl) then) =
      __$$AudiobooksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? href,
      List<ItemsAudiobooks>? items,
      int? limit,
      String? next,
      int? offset,
      String? previous,
      int? total});
}

/// @nodoc
class __$$AudiobooksImplCopyWithImpl<$Res>
    extends _$AudiobooksCopyWithImpl<$Res, _$AudiobooksImpl>
    implements _$$AudiobooksImplCopyWith<$Res> {
  __$$AudiobooksImplCopyWithImpl(
      _$AudiobooksImpl _value, $Res Function(_$AudiobooksImpl) _then)
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
    return _then(_$AudiobooksImpl(
      freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsAudiobooks>?,
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
class _$AudiobooksImpl implements _Audiobooks {
  const _$AudiobooksImpl(this.href, final List<ItemsAudiobooks>? items,
      this.limit, this.next, this.offset, this.previous, this.total)
      : _items = items;

  factory _$AudiobooksImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudiobooksImplFromJson(json);

  @override
  final String? href;
  final List<ItemsAudiobooks>? _items;
  @override
  List<ItemsAudiobooks>? get items {
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
    return 'Audiobooks(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudiobooksImpl &&
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
  _$$AudiobooksImplCopyWith<_$AudiobooksImpl> get copyWith =>
      __$$AudiobooksImplCopyWithImpl<_$AudiobooksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudiobooksImplToJson(
      this,
    );
  }
}

abstract class _Audiobooks implements Audiobooks {
  const factory _Audiobooks(
      final String? href,
      final List<ItemsAudiobooks>? items,
      final int? limit,
      final String? next,
      final int? offset,
      final String? previous,
      final int? total) = _$AudiobooksImpl;

  factory _Audiobooks.fromJson(Map<String, dynamic> json) =
      _$AudiobooksImpl.fromJson;

  @override
  String? get href;
  @override
  List<ItemsAudiobooks>? get items;
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
  _$$AudiobooksImplCopyWith<_$AudiobooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemsAudiobooks _$ItemsAudiobooksFromJson(Map<String, dynamic> json) {
  return _ItemsAudiobooks.fromJson(json);
}

/// @nodoc
mixin _$ItemsAudiobooks {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsAudiobooksCopyWith<$Res> {
  factory $ItemsAudiobooksCopyWith(
          ItemsAudiobooks value, $Res Function(ItemsAudiobooks) then) =
      _$ItemsAudiobooksCopyWithImpl<$Res, ItemsAudiobooks>;
}

/// @nodoc
class _$ItemsAudiobooksCopyWithImpl<$Res, $Val extends ItemsAudiobooks>
    implements $ItemsAudiobooksCopyWith<$Res> {
  _$ItemsAudiobooksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItemsAudiobooksImplCopyWith<$Res> {
  factory _$$ItemsAudiobooksImplCopyWith(_$ItemsAudiobooksImpl value,
          $Res Function(_$ItemsAudiobooksImpl) then) =
      __$$ItemsAudiobooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemsAudiobooksImplCopyWithImpl<$Res>
    extends _$ItemsAudiobooksCopyWithImpl<$Res, _$ItemsAudiobooksImpl>
    implements _$$ItemsAudiobooksImplCopyWith<$Res> {
  __$$ItemsAudiobooksImplCopyWithImpl(
      _$ItemsAudiobooksImpl _value, $Res Function(_$ItemsAudiobooksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ItemsAudiobooksImpl implements _ItemsAudiobooks {
  const _$ItemsAudiobooksImpl();

  factory _$ItemsAudiobooksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsAudiobooksImplFromJson(json);

  @override
  String toString() {
    return 'ItemsAudiobooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemsAudiobooksImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsAudiobooksImplToJson(
      this,
    );
  }
}

abstract class _ItemsAudiobooks implements ItemsAudiobooks {
  const factory _ItemsAudiobooks() = _$ItemsAudiobooksImpl;

  factory _ItemsAudiobooks.fromJson(Map<String, dynamic> json) =
      _$ItemsAudiobooksImpl.fromJson;
}
