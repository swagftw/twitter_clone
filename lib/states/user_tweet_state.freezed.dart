// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_tweet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTweetsStateTearOff {
  const _$UserTweetsStateTearOff();

  TweetsLoading loading() {
    return const TweetsLoading();
  }

  TweetsError error() {
    return const TweetsError();
  }

  MyTweetsData myTweets(List<Tweet> tweets) {
    return MyTweetsData(
      tweets,
    );
  }
}

/// @nodoc
const $UserTweetsState = _$UserTweetsStateTearOff();

/// @nodoc
mixin _$UserTweetsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myTweets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myTweets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetsLoading value) loading,
    required TResult Function(TweetsError value) error,
    required TResult Function(MyTweetsData value) myTweets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetsLoading value)? loading,
    TResult Function(TweetsError value)? error,
    TResult Function(MyTweetsData value)? myTweets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTweetsStateCopyWith<$Res> {
  factory $UserTweetsStateCopyWith(
          UserTweetsState value, $Res Function(UserTweetsState) then) =
      _$UserTweetsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTweetsStateCopyWithImpl<$Res>
    implements $UserTweetsStateCopyWith<$Res> {
  _$UserTweetsStateCopyWithImpl(this._value, this._then);

  final UserTweetsState _value;
  // ignore: unused_field
  final $Res Function(UserTweetsState) _then;
}

/// @nodoc
abstract class $TweetsLoadingCopyWith<$Res> {
  factory $TweetsLoadingCopyWith(
          TweetsLoading value, $Res Function(TweetsLoading) then) =
      _$TweetsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TweetsLoadingCopyWithImpl<$Res>
    extends _$UserTweetsStateCopyWithImpl<$Res>
    implements $TweetsLoadingCopyWith<$Res> {
  _$TweetsLoadingCopyWithImpl(
      TweetsLoading _value, $Res Function(TweetsLoading) _then)
      : super(_value, (v) => _then(v as TweetsLoading));

  @override
  TweetsLoading get _value => super._value as TweetsLoading;
}

/// @nodoc
class _$TweetsLoading implements TweetsLoading {
  const _$TweetsLoading();

  @override
  String toString() {
    return 'UserTweetsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TweetsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myTweets,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myTweets,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetsLoading value) loading,
    required TResult Function(TweetsError value) error,
    required TResult Function(MyTweetsData value) myTweets,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetsLoading value)? loading,
    TResult Function(TweetsError value)? error,
    TResult Function(MyTweetsData value)? myTweets,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TweetsLoading implements UserTweetsState {
  const factory TweetsLoading() = _$TweetsLoading;
}

/// @nodoc
abstract class $TweetsErrorCopyWith<$Res> {
  factory $TweetsErrorCopyWith(
          TweetsError value, $Res Function(TweetsError) then) =
      _$TweetsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$TweetsErrorCopyWithImpl<$Res>
    extends _$UserTweetsStateCopyWithImpl<$Res>
    implements $TweetsErrorCopyWith<$Res> {
  _$TweetsErrorCopyWithImpl(
      TweetsError _value, $Res Function(TweetsError) _then)
      : super(_value, (v) => _then(v as TweetsError));

  @override
  TweetsError get _value => super._value as TweetsError;
}

/// @nodoc
class _$TweetsError implements TweetsError {
  const _$TweetsError();

  @override
  String toString() {
    return 'UserTweetsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TweetsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myTweets,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myTweets,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetsLoading value) loading,
    required TResult Function(TweetsError value) error,
    required TResult Function(MyTweetsData value) myTweets,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetsLoading value)? loading,
    TResult Function(TweetsError value)? error,
    TResult Function(MyTweetsData value)? myTweets,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TweetsError implements UserTweetsState {
  const factory TweetsError() = _$TweetsError;
}

/// @nodoc
abstract class $MyTweetsDataCopyWith<$Res> {
  factory $MyTweetsDataCopyWith(
          MyTweetsData value, $Res Function(MyTweetsData) then) =
      _$MyTweetsDataCopyWithImpl<$Res>;
  $Res call({List<Tweet> tweets});
}

/// @nodoc
class _$MyTweetsDataCopyWithImpl<$Res>
    extends _$UserTweetsStateCopyWithImpl<$Res>
    implements $MyTweetsDataCopyWith<$Res> {
  _$MyTweetsDataCopyWithImpl(
      MyTweetsData _value, $Res Function(MyTweetsData) _then)
      : super(_value, (v) => _then(v as MyTweetsData));

  @override
  MyTweetsData get _value => super._value as MyTweetsData;

  @override
  $Res call({
    Object? tweets = freezed,
  }) {
    return _then(MyTweetsData(
      tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<Tweet>,
    ));
  }
}

/// @nodoc
class _$MyTweetsData implements MyTweetsData {
  const _$MyTweetsData(this.tweets);

  @override
  final List<Tweet> tweets;

  @override
  String toString() {
    return 'UserTweetsState.myTweets(tweets: $tweets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MyTweetsData &&
            (identical(other.tweets, tweets) ||
                const DeepCollectionEquality().equals(other.tweets, tweets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tweets);

  @JsonKey(ignore: true)
  @override
  $MyTweetsDataCopyWith<MyTweetsData> get copyWith =>
      _$MyTweetsDataCopyWithImpl<MyTweetsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myTweets,
  }) {
    return myTweets(tweets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myTweets,
    required TResult orElse(),
  }) {
    if (myTweets != null) {
      return myTweets(tweets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TweetsLoading value) loading,
    required TResult Function(TweetsError value) error,
    required TResult Function(MyTweetsData value) myTweets,
  }) {
    return myTweets(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TweetsLoading value)? loading,
    TResult Function(TweetsError value)? error,
    TResult Function(MyTweetsData value)? myTweets,
    required TResult orElse(),
  }) {
    if (myTweets != null) {
      return myTweets(this);
    }
    return orElse();
  }
}

abstract class MyTweetsData implements UserTweetsState {
  const factory MyTweetsData(List<Tweet> tweets) = _$MyTweetsData;

  List<Tweet> get tweets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyTweetsDataCopyWith<MyTweetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserReTweetsStateTearOff {
  const _$UserReTweetsStateTearOff();

  ReTweetsLoading loading() {
    return const ReTweetsLoading();
  }

  ReTweetsError error() {
    return const ReTweetsError();
  }

  MyReTweetsData myReTweets(List<Tweet> tweets) {
    return MyReTweetsData(
      tweets,
    );
  }
}

/// @nodoc
const $UserReTweetsState = _$UserReTweetsStateTearOff();

/// @nodoc
mixin _$UserReTweetsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myReTweets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myReTweets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReTweetsLoading value) loading,
    required TResult Function(ReTweetsError value) error,
    required TResult Function(MyReTweetsData value) myReTweets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReTweetsLoading value)? loading,
    TResult Function(ReTweetsError value)? error,
    TResult Function(MyReTweetsData value)? myReTweets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReTweetsStateCopyWith<$Res> {
  factory $UserReTweetsStateCopyWith(
          UserReTweetsState value, $Res Function(UserReTweetsState) then) =
      _$UserReTweetsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserReTweetsStateCopyWithImpl<$Res>
    implements $UserReTweetsStateCopyWith<$Res> {
  _$UserReTweetsStateCopyWithImpl(this._value, this._then);

  final UserReTweetsState _value;
  // ignore: unused_field
  final $Res Function(UserReTweetsState) _then;
}

/// @nodoc
abstract class $ReTweetsLoadingCopyWith<$Res> {
  factory $ReTweetsLoadingCopyWith(
          ReTweetsLoading value, $Res Function(ReTweetsLoading) then) =
      _$ReTweetsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReTweetsLoadingCopyWithImpl<$Res>
    extends _$UserReTweetsStateCopyWithImpl<$Res>
    implements $ReTweetsLoadingCopyWith<$Res> {
  _$ReTweetsLoadingCopyWithImpl(
      ReTweetsLoading _value, $Res Function(ReTweetsLoading) _then)
      : super(_value, (v) => _then(v as ReTweetsLoading));

  @override
  ReTweetsLoading get _value => super._value as ReTweetsLoading;
}

/// @nodoc
class _$ReTweetsLoading implements ReTweetsLoading {
  const _$ReTweetsLoading();

  @override
  String toString() {
    return 'UserReTweetsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReTweetsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myReTweets,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myReTweets,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReTweetsLoading value) loading,
    required TResult Function(ReTweetsError value) error,
    required TResult Function(MyReTweetsData value) myReTweets,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReTweetsLoading value)? loading,
    TResult Function(ReTweetsError value)? error,
    TResult Function(MyReTweetsData value)? myReTweets,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReTweetsLoading implements UserReTweetsState {
  const factory ReTweetsLoading() = _$ReTweetsLoading;
}

/// @nodoc
abstract class $ReTweetsErrorCopyWith<$Res> {
  factory $ReTweetsErrorCopyWith(
          ReTweetsError value, $Res Function(ReTweetsError) then) =
      _$ReTweetsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReTweetsErrorCopyWithImpl<$Res>
    extends _$UserReTweetsStateCopyWithImpl<$Res>
    implements $ReTweetsErrorCopyWith<$Res> {
  _$ReTweetsErrorCopyWithImpl(
      ReTweetsError _value, $Res Function(ReTweetsError) _then)
      : super(_value, (v) => _then(v as ReTweetsError));

  @override
  ReTweetsError get _value => super._value as ReTweetsError;
}

/// @nodoc
class _$ReTweetsError implements ReTweetsError {
  const _$ReTweetsError();

  @override
  String toString() {
    return 'UserReTweetsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReTweetsError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myReTweets,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myReTweets,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReTweetsLoading value) loading,
    required TResult Function(ReTweetsError value) error,
    required TResult Function(MyReTweetsData value) myReTweets,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReTweetsLoading value)? loading,
    TResult Function(ReTweetsError value)? error,
    TResult Function(MyReTweetsData value)? myReTweets,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReTweetsError implements UserReTweetsState {
  const factory ReTweetsError() = _$ReTweetsError;
}

/// @nodoc
abstract class $MyReTweetsDataCopyWith<$Res> {
  factory $MyReTweetsDataCopyWith(
          MyReTweetsData value, $Res Function(MyReTweetsData) then) =
      _$MyReTweetsDataCopyWithImpl<$Res>;
  $Res call({List<Tweet> tweets});
}

/// @nodoc
class _$MyReTweetsDataCopyWithImpl<$Res>
    extends _$UserReTweetsStateCopyWithImpl<$Res>
    implements $MyReTweetsDataCopyWith<$Res> {
  _$MyReTweetsDataCopyWithImpl(
      MyReTweetsData _value, $Res Function(MyReTweetsData) _then)
      : super(_value, (v) => _then(v as MyReTweetsData));

  @override
  MyReTweetsData get _value => super._value as MyReTweetsData;

  @override
  $Res call({
    Object? tweets = freezed,
  }) {
    return _then(MyReTweetsData(
      tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<Tweet>,
    ));
  }
}

/// @nodoc
class _$MyReTweetsData implements MyReTweetsData {
  const _$MyReTweetsData(this.tweets);

  @override
  final List<Tweet> tweets;

  @override
  String toString() {
    return 'UserReTweetsState.myReTweets(tweets: $tweets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MyReTweetsData &&
            (identical(other.tweets, tweets) ||
                const DeepCollectionEquality().equals(other.tweets, tweets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tweets);

  @JsonKey(ignore: true)
  @override
  $MyReTweetsDataCopyWith<MyReTweetsData> get copyWith =>
      _$MyReTweetsDataCopyWithImpl<MyReTweetsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Tweet> tweets) myReTweets,
  }) {
    return myReTweets(tweets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Tweet> tweets)? myReTweets,
    required TResult orElse(),
  }) {
    if (myReTweets != null) {
      return myReTweets(tweets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReTweetsLoading value) loading,
    required TResult Function(ReTweetsError value) error,
    required TResult Function(MyReTweetsData value) myReTweets,
  }) {
    return myReTweets(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReTweetsLoading value)? loading,
    TResult Function(ReTweetsError value)? error,
    TResult Function(MyReTweetsData value)? myReTweets,
    required TResult orElse(),
  }) {
    if (myReTweets != null) {
      return myReTweets(this);
    }
    return orElse();
  }
}

abstract class MyReTweetsData implements UserReTweetsState {
  const factory MyReTweetsData(List<Tweet> tweets) = _$MyReTweetsData;

  List<Tweet> get tweets => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyReTweetsDataCopyWith<MyReTweetsData> get copyWith =>
      throw _privateConstructorUsedError;
}
