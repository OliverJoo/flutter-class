// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteOrder<T> {
  OrderType<dynamic> get orderType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType<dynamic> orderType) title,
    required TResult Function(OrderType<dynamic> orderType) date,
    required TResult Function(OrderType<dynamic> orderType) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType<dynamic> orderType)? title,
    TResult? Function(OrderType<dynamic> orderType)? date,
    TResult? Function(OrderType<dynamic> orderType)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType<dynamic> orderType)? title,
    TResult Function(OrderType<dynamic> orderType)? date,
    TResult Function(OrderType<dynamic> orderType)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle<T> value) title,
    required TResult Function(NoteOrderDate<T> value) date,
    required TResult Function(NoteOrderColor<T> value) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle<T> value)? title,
    TResult? Function(NoteOrderDate<T> value)? date,
    TResult? Function(NoteOrderColor<T> value)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle<T> value)? title,
    TResult Function(NoteOrderDate<T> value)? date,
    TResult Function(NoteOrderColor<T> value)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteOrderCopyWith<T, NoteOrder<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderCopyWith<T, $Res> {
  factory $NoteOrderCopyWith(
          NoteOrder<T> value, $Res Function(NoteOrder<T>) then) =
      _$NoteOrderCopyWithImpl<T, $Res, NoteOrder<T>>;
  @useResult
  $Res call({OrderType<dynamic> orderType});

  $OrderTypeCopyWith<dynamic, $Res> get orderType;
}

/// @nodoc
class _$NoteOrderCopyWithImpl<T, $Res, $Val extends NoteOrder<T>>
    implements $NoteOrderCopyWith<T, $Res> {
  _$NoteOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_value.copyWith(
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<dynamic, $Res> get orderType {
    return $OrderTypeCopyWith<dynamic, $Res>(_value.orderType, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteOrderTitleImplCopyWith<T, $Res>
    implements $NoteOrderCopyWith<T, $Res> {
  factory _$$NoteOrderTitleImplCopyWith(_$NoteOrderTitleImpl<T> value,
          $Res Function(_$NoteOrderTitleImpl<T>) then) =
      __$$NoteOrderTitleImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({OrderType<dynamic> orderType});

  @override
  $OrderTypeCopyWith<dynamic, $Res> get orderType;
}

/// @nodoc
class __$$NoteOrderTitleImplCopyWithImpl<T, $Res>
    extends _$NoteOrderCopyWithImpl<T, $Res, _$NoteOrderTitleImpl<T>>
    implements _$$NoteOrderTitleImplCopyWith<T, $Res> {
  __$$NoteOrderTitleImplCopyWithImpl(_$NoteOrderTitleImpl<T> _value,
      $Res Function(_$NoteOrderTitleImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderTitleImpl<T>(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType<dynamic>,
    ));
  }
}

/// @nodoc

class _$NoteOrderTitleImpl<T>
    with DiagnosticableTreeMixin
    implements NoteOrderTitle<T> {
  const _$NoteOrderTitleImpl(this.orderType);

  @override
  final OrderType<dynamic> orderType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteOrder<$T>.title(orderType: $orderType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteOrder<$T>.title'))
      ..add(DiagnosticsProperty('orderType', orderType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderTitleImpl<T> &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderTitleImplCopyWith<T, _$NoteOrderTitleImpl<T>> get copyWith =>
      __$$NoteOrderTitleImplCopyWithImpl<T, _$NoteOrderTitleImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType<dynamic> orderType) title,
    required TResult Function(OrderType<dynamic> orderType) date,
    required TResult Function(OrderType<dynamic> orderType) color,
  }) {
    return title(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType<dynamic> orderType)? title,
    TResult? Function(OrderType<dynamic> orderType)? date,
    TResult? Function(OrderType<dynamic> orderType)? color,
  }) {
    return title?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType<dynamic> orderType)? title,
    TResult Function(OrderType<dynamic> orderType)? date,
    TResult Function(OrderType<dynamic> orderType)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle<T> value) title,
    required TResult Function(NoteOrderDate<T> value) date,
    required TResult Function(NoteOrderColor<T> value) color,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle<T> value)? title,
    TResult? Function(NoteOrderDate<T> value)? date,
    TResult? Function(NoteOrderColor<T> value)? color,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle<T> value)? title,
    TResult Function(NoteOrderDate<T> value)? date,
    TResult Function(NoteOrderColor<T> value)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class NoteOrderTitle<T> implements NoteOrder<T> {
  const factory NoteOrderTitle(final OrderType<dynamic> orderType) =
      _$NoteOrderTitleImpl<T>;

  @override
  OrderType<dynamic> get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderTitleImplCopyWith<T, _$NoteOrderTitleImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteOrderDateImplCopyWith<T, $Res>
    implements $NoteOrderCopyWith<T, $Res> {
  factory _$$NoteOrderDateImplCopyWith(_$NoteOrderDateImpl<T> value,
          $Res Function(_$NoteOrderDateImpl<T>) then) =
      __$$NoteOrderDateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({OrderType<dynamic> orderType});

  @override
  $OrderTypeCopyWith<dynamic, $Res> get orderType;
}

/// @nodoc
class __$$NoteOrderDateImplCopyWithImpl<T, $Res>
    extends _$NoteOrderCopyWithImpl<T, $Res, _$NoteOrderDateImpl<T>>
    implements _$$NoteOrderDateImplCopyWith<T, $Res> {
  __$$NoteOrderDateImplCopyWithImpl(_$NoteOrderDateImpl<T> _value,
      $Res Function(_$NoteOrderDateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderDateImpl<T>(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType<dynamic>,
    ));
  }
}

/// @nodoc

class _$NoteOrderDateImpl<T>
    with DiagnosticableTreeMixin
    implements NoteOrderDate<T> {
  const _$NoteOrderDateImpl(this.orderType);

  @override
  final OrderType<dynamic> orderType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteOrder<$T>.date(orderType: $orderType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteOrder<$T>.date'))
      ..add(DiagnosticsProperty('orderType', orderType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderDateImpl<T> &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderDateImplCopyWith<T, _$NoteOrderDateImpl<T>> get copyWith =>
      __$$NoteOrderDateImplCopyWithImpl<T, _$NoteOrderDateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType<dynamic> orderType) title,
    required TResult Function(OrderType<dynamic> orderType) date,
    required TResult Function(OrderType<dynamic> orderType) color,
  }) {
    return date(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType<dynamic> orderType)? title,
    TResult? Function(OrderType<dynamic> orderType)? date,
    TResult? Function(OrderType<dynamic> orderType)? color,
  }) {
    return date?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType<dynamic> orderType)? title,
    TResult Function(OrderType<dynamic> orderType)? date,
    TResult Function(OrderType<dynamic> orderType)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle<T> value) title,
    required TResult Function(NoteOrderDate<T> value) date,
    required TResult Function(NoteOrderColor<T> value) color,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle<T> value)? title,
    TResult? Function(NoteOrderDate<T> value)? date,
    TResult? Function(NoteOrderColor<T> value)? color,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle<T> value)? title,
    TResult Function(NoteOrderDate<T> value)? date,
    TResult Function(NoteOrderColor<T> value)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class NoteOrderDate<T> implements NoteOrder<T> {
  const factory NoteOrderDate(final OrderType<dynamic> orderType) =
      _$NoteOrderDateImpl<T>;

  @override
  OrderType<dynamic> get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderDateImplCopyWith<T, _$NoteOrderDateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteOrderColorImplCopyWith<T, $Res>
    implements $NoteOrderCopyWith<T, $Res> {
  factory _$$NoteOrderColorImplCopyWith(_$NoteOrderColorImpl<T> value,
          $Res Function(_$NoteOrderColorImpl<T>) then) =
      __$$NoteOrderColorImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({OrderType<dynamic> orderType});

  @override
  $OrderTypeCopyWith<dynamic, $Res> get orderType;
}

/// @nodoc
class __$$NoteOrderColorImplCopyWithImpl<T, $Res>
    extends _$NoteOrderCopyWithImpl<T, $Res, _$NoteOrderColorImpl<T>>
    implements _$$NoteOrderColorImplCopyWith<T, $Res> {
  __$$NoteOrderColorImplCopyWithImpl(_$NoteOrderColorImpl<T> _value,
      $Res Function(_$NoteOrderColorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderColorImpl<T>(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType<dynamic>,
    ));
  }
}

/// @nodoc

class _$NoteOrderColorImpl<T>
    with DiagnosticableTreeMixin
    implements NoteOrderColor<T> {
  const _$NoteOrderColorImpl(this.orderType);

  @override
  final OrderType<dynamic> orderType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteOrder<$T>.color(orderType: $orderType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteOrder<$T>.color'))
      ..add(DiagnosticsProperty('orderType', orderType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderColorImpl<T> &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderColorImplCopyWith<T, _$NoteOrderColorImpl<T>> get copyWith =>
      __$$NoteOrderColorImplCopyWithImpl<T, _$NoteOrderColorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType<dynamic> orderType) title,
    required TResult Function(OrderType<dynamic> orderType) date,
    required TResult Function(OrderType<dynamic> orderType) color,
  }) {
    return color(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType<dynamic> orderType)? title,
    TResult? Function(OrderType<dynamic> orderType)? date,
    TResult? Function(OrderType<dynamic> orderType)? color,
  }) {
    return color?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType<dynamic> orderType)? title,
    TResult Function(OrderType<dynamic> orderType)? date,
    TResult Function(OrderType<dynamic> orderType)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle<T> value) title,
    required TResult Function(NoteOrderDate<T> value) date,
    required TResult Function(NoteOrderColor<T> value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle<T> value)? title,
    TResult? Function(NoteOrderDate<T> value)? date,
    TResult? Function(NoteOrderColor<T> value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle<T> value)? title,
    TResult Function(NoteOrderDate<T> value)? date,
    TResult Function(NoteOrderColor<T> value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class NoteOrderColor<T> implements NoteOrder<T> {
  const factory NoteOrderColor(final OrderType<dynamic> orderType) =
      _$NoteOrderColorImpl<T>;

  @override
  OrderType<dynamic> get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderColorImplCopyWith<T, _$NoteOrderColorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
