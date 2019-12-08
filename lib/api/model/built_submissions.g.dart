// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_submissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltSubmissions> _$builtSubmissionsSerializer =
    new _$BuiltSubmissionsSerializer();

class _$BuiltSubmissionsSerializer
    implements StructuredSerializer<BuiltSubmissions> {
  @override
  final Iterable<Type> types = const [BuiltSubmissions, _$BuiltSubmissions];
  @override
  final String wireName = 'BuiltSubmissions';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltSubmissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'submissons',
      serializers.serialize(object.submissons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltSubmission)])),
    ];

    return result;
  }

  @override
  BuiltSubmissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltSubmissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'submissons':
          result.submissons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltSubmission)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltSubmissions extends BuiltSubmissions {
  @override
  final BuiltList<BuiltSubmission> submissons;

  factory _$BuiltSubmissions(
          [void Function(BuiltSubmissionsBuilder) updates]) =>
      (new BuiltSubmissionsBuilder()..update(updates)).build();

  _$BuiltSubmissions._({this.submissons}) : super._() {
    if (submissons == null) {
      throw new BuiltValueNullFieldError('BuiltSubmissions', 'submissons');
    }
  }

  @override
  BuiltSubmissions rebuild(void Function(BuiltSubmissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSubmissionsBuilder toBuilder() =>
      new BuiltSubmissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSubmissions && submissons == other.submissons;
  }

  @override
  int get hashCode {
    return $jf($jc(0, submissons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSubmissions')
          ..add('submissons', submissons))
        .toString();
  }
}

class BuiltSubmissionsBuilder
    implements Builder<BuiltSubmissions, BuiltSubmissionsBuilder> {
  _$BuiltSubmissions _$v;

  ListBuilder<BuiltSubmission> _submissons;
  ListBuilder<BuiltSubmission> get submissons =>
      _$this._submissons ??= new ListBuilder<BuiltSubmission>();
  set submissons(ListBuilder<BuiltSubmission> submissons) =>
      _$this._submissons = submissons;

  BuiltSubmissionsBuilder();

  BuiltSubmissionsBuilder get _$this {
    if (_$v != null) {
      _submissons = _$v.submissons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSubmissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltSubmissions;
  }

  @override
  void update(void Function(BuiltSubmissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSubmissions build() {
    _$BuiltSubmissions _$result;
    try {
      _$result =
          _$v ?? new _$BuiltSubmissions._(submissons: submissons.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'submissons';
        submissons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltSubmissions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
