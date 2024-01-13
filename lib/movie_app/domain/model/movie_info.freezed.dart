// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieInfo {
  String get title => throw _privateConstructorUsedError;
  bool get isAdult => throw _privateConstructorUsedError;
  num get movieId => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  num get voteAverage => throw _privateConstructorUsedError;
  num get voteCount => throw _privateConstructorUsedError;
  List<num> get genreIds => throw _privateConstructorUsedError;
  String get releasedDate => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieInfoCopyWith<MovieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoCopyWith<$Res> {
  factory $MovieInfoCopyWith(MovieInfo value, $Res Function(MovieInfo) then) =
      _$MovieInfoCopyWithImpl<$Res, MovieInfo>;
  @useResult
  $Res call(
      {String title,
      bool isAdult,
      num movieId,
      String overview,
      num voteAverage,
      num voteCount,
      List<num> genreIds,
      String releasedDate,
      String posterPath});
}

/// @nodoc
class _$MovieInfoCopyWithImpl<$Res, $Val extends MovieInfo>
    implements $MovieInfoCopyWith<$Res> {
  _$MovieInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isAdult = null,
    Object? movieId = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? genreIds = null,
    Object? releasedDate = null,
    Object? posterPath = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<num>,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieInfoImplCopyWith<$Res>
    implements $MovieInfoCopyWith<$Res> {
  factory _$$MovieInfoImplCopyWith(
          _$MovieInfoImpl value, $Res Function(_$MovieInfoImpl) then) =
      __$$MovieInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool isAdult,
      num movieId,
      String overview,
      num voteAverage,
      num voteCount,
      List<num> genreIds,
      String releasedDate,
      String posterPath});
}

/// @nodoc
class __$$MovieInfoImplCopyWithImpl<$Res>
    extends _$MovieInfoCopyWithImpl<$Res, _$MovieInfoImpl>
    implements _$$MovieInfoImplCopyWith<$Res> {
  __$$MovieInfoImplCopyWithImpl(
      _$MovieInfoImpl _value, $Res Function(_$MovieInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isAdult = null,
    Object? movieId = null,
    Object? overview = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? genreIds = null,
    Object? releasedDate = null,
    Object? posterPath = null,
  }) {
    return _then(_$MovieInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as num,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<num>,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MovieInfoImpl with DiagnosticableTreeMixin implements _MovieInfo {
  const _$MovieInfoImpl(
      {required this.title,
      required this.isAdult,
      required this.movieId,
      required this.overview,
      required this.voteAverage,
      required this.voteCount,
      required final List<num> genreIds,
      required this.releasedDate,
      required this.posterPath})
      : _genreIds = genreIds;

  @override
  final String title;
  @override
  final bool isAdult;
  @override
  final num movieId;
  @override
  final String overview;
  @override
  final num voteAverage;
  @override
  final num voteCount;
  final List<num> _genreIds;
  @override
  List<num> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final String releasedDate;
  @override
  final String posterPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieInfo(title: $title, isAdult: $isAdult, movieId: $movieId, overview: $overview, voteAverage: $voteAverage, voteCount: $voteCount, genreIds: $genreIds, releasedDate: $releasedDate, posterPath: $posterPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieInfo'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('isAdult', isAdult))
      ..add(DiagnosticsProperty('movieId', movieId))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('voteCount', voteCount))
      ..add(DiagnosticsProperty('genreIds', genreIds))
      ..add(DiagnosticsProperty('releasedDate', releasedDate))
      ..add(DiagnosticsProperty('posterPath', posterPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.releasedDate, releasedDate) ||
                other.releasedDate == releasedDate) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      isAdult,
      movieId,
      overview,
      voteAverage,
      voteCount,
      const DeepCollectionEquality().hash(_genreIds),
      releasedDate,
      posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieInfoImplCopyWith<_$MovieInfoImpl> get copyWith =>
      __$$MovieInfoImplCopyWithImpl<_$MovieInfoImpl>(this, _$identity);
}

abstract class _MovieInfo implements MovieInfo {
  const factory _MovieInfo(
      {required final String title,
      required final bool isAdult,
      required final num movieId,
      required final String overview,
      required final num voteAverage,
      required final num voteCount,
      required final List<num> genreIds,
      required final String releasedDate,
      required final String posterPath}) = _$MovieInfoImpl;

  @override
  String get title;
  @override
  bool get isAdult;
  @override
  num get movieId;
  @override
  String get overview;
  @override
  num get voteAverage;
  @override
  num get voteCount;
  @override
  List<num> get genreIds;
  @override
  String get releasedDate;
  @override
  String get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$MovieInfoImplCopyWith<_$MovieInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
