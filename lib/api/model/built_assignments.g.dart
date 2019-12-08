// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_assignments.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAssignments> _$builtAssignmentsSerializer =
    new _$BuiltAssignmentsSerializer();

class _$BuiltAssignmentsSerializer
    implements StructuredSerializer<BuiltAssignments> {
  @override
  final Iterable<Type> types = const [BuiltAssignments, _$BuiltAssignments];
  @override
  final String wireName = 'BuiltAssignments';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAssignments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'assignments',
      serializers.serialize(object.assignments,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltAssignment)])),
    ];

    return result;
  }

  @override
  BuiltAssignments deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAssignmentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'assignments':
          result.assignments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltAssignment)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAssignments extends BuiltAssignments {
  @override
  final BuiltList<BuiltAssignment> assignments;

  factory _$BuiltAssignments(
          [void Function(BuiltAssignmentsBuilder) updates]) =>
      (new BuiltAssignmentsBuilder()..update(updates)).build();

  _$BuiltAssignments._({this.assignments}) : super._() {
    if (assignments == null) {
      throw new BuiltValueNullFieldError('BuiltAssignments', 'assignments');
    }
  }

  @override
  BuiltAssignments rebuild(void Function(BuiltAssignmentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAssignmentsBuilder toBuilder() =>
      new BuiltAssignmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAssignments && assignments == other.assignments;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assignments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAssignments')
          ..add('assignments', assignments))
        .toString();
  }
}

class BuiltAssignmentsBuilder
    implements Builder<BuiltAssignments, BuiltAssignmentsBuilder> {
  _$BuiltAssignments _$v;

  ListBuilder<BuiltAssignment> _assignments;
  ListBuilder<BuiltAssignment> get assignments =>
      _$this._assignments ??= new ListBuilder<BuiltAssignment>();
  set assignments(ListBuilder<BuiltAssignment> assignments) =>
      _$this._assignments = assignments;

  BuiltAssignmentsBuilder();

  BuiltAssignmentsBuilder get _$this {
    if (_$v != null) {
      _assignments = _$v.assignments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAssignments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAssignments;
  }

  @override
  void update(void Function(BuiltAssignmentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAssignments build() {
    _$BuiltAssignments _$result;
    try {
      _$result =
          _$v ?? new _$BuiltAssignments._(assignments: assignments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assignments';
        assignments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAssignments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
