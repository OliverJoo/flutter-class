// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderType<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ascending,
    TResult? Function()? descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending<T> value) ascending,
    required TResult Function(Descending<T> value) descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ascending<T> value)? ascending,
    TResult? Function(Descending<T> value)? descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending<T> value)? ascending,
    TResult Function(Descending<T> value)? descending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeCopyWith<T, $Res> {
  factory $OrderTypeCopyWith(
          OrderType<T> value, $Res Function(OrderType<T>) then) =
      _$OrderTypeCopyWithImpl<T, $Res, OrderType<T>>;
}

/// @nodoc
class _$OrderTypeCopyWithImpl<T, $Res, $Val extends OrderType<T>>
    implements $OrderTypeCopyWith<T, $Res> {
  _$OrderTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AscendingImplCopyWith<T, $Res> {
  factory _$$AscendingImplCopyWith(
          _$AscendingImpl<T> value, $Res Function(_$AscendingImpl<T>) then) =
      __$$AscendingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AscendingImplCopyWithImpl<T, $Res>
    extends _$OrderTypeCopyWithImpl<T, $Res, _$AscendingImpl<T>>
    implements _$$AscendingImplCopyWith<T, $Res> {
  __$$AscendingImplCopyWithImpl(
      _$AscendingImpl<T> _value, $Res Function(_$AscendingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AscendingImpl<T> with DiagnosticableTreeMixin implements Ascending<T> {
  const _$AscendingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderType<$T>.ascending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrderType<$T>.ascending'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AscendingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) {
    return ascending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ascending,
    TResult? Function()? descending,
  }) {
    return ascending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) {
    if (ascending != null) {
      return ascending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending<T> value) ascending,
    required TResult Function(Descending<T> value) descending,
  }) {
    return ascending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ascending<T> value)? ascending,
    TResult? Function(Descending<T> value)? descending,
  }) {
    return ascending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending<T> value)? ascending,
    TResult Function(Descending<T> value)? descending,
    required TResult orElse(),
  }) {
    if (ascending != null) {
      return ascending(this);
    }
    return orElse();
  }
}

abstract class Ascending<T> implements OrderType<T> {
  const factory Ascending() = _$AscendingImpl<T>;
}

/// @nodoc
abstract class _$$DescendingImplCopyWith<T, $Res> {
  factory _$$DescendingImplCopyWith(
          _$DescendingImpl<T> value, $Res Function(_$DescendingImpl<T>) then) =
      __$$DescendingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DescendingImplCopyWithImpl<T, $Res>
    extends _$OrderTypeCopyWithImpl<T, $Res, _$DescendingImpl<T>>
    implements _$$DescendingImplCopyWith<T, $Res> {
  __$$DescendingImplCopyWithImpl(
      _$DescendingImpl<T> _value, $Res Function(_$DescendingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DescendingImpl<T>
    with DiagnosticableTreeMixin
    implements Descending<T> {
  const _$DescendingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderType<$T>.descending()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrderType<$T>.descending'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DescendingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) {
    return descending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ascending,
    TResult? Function()? descending,
  }) {
    return descending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) {
    if (descending != null) {
      return descending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending<T> value) ascending,
    required TResult Function(Descending<T> value) descending,
  }) {
    return descending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ascending<T> value)? ascending,
    TResult? Function(Descending<T> value)? descending,
  }) {
    return descending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending<T> value)? ascending,
    TResult Function(Descending<T> value)? descending,
    required TResult orElse(),
  }) {
    if (descending != null) {
      return descending(this);
    }
    return orElse();
  }
}

abstract class Descending<T> implements OrderType<T> {
  const factory Descending() = _$DescendingImpl<T>;
}
