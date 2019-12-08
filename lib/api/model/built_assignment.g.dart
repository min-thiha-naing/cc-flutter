// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_assignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAssignment> _$builtAssignmentSerializer =
    new _$BuiltAssignmentSerializer();

class _$BuiltAssignmentSerializer
    implements StructuredSerializer<BuiltAssignment> {
  @override
  final Iterable<Type> types = const [BuiltAssignment, _$BuiltAssignment];
  @override
  final String wireName = 'BuiltAssignment';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAssignment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'assignment_id',
      serializers.serialize(object.assignment_id,
          specifiedType: const FullType(int)),
      'assignment_name',
      serializers.serialize(object.assignmentname,
          specifiedType: const FullType(String)),
      'deadline',
      serializers.serialize(object.deadline,
          specifiedType: const FullType(DateTime)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'class_id',
      serializers.serialize(object.classid,
          specifiedType: const FullType(String)),
      'user_id',
      serializers.serialize(object.userid,
          specifiedType: const FullType(String)),
      'submissions',
      serializers.serialize(object.submissions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltSubmission)])),
    ];

    return result;
  }

  @override
  BuiltAssignment deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAssignmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'assignment_id':
          result.assignment_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'assignment_name':
          result.assignmentname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deadline':
          result.deadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'class_id':
          result.classid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'submissions':
          result.submissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltSubmission)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAssignment extends BuiltAssignment {
  @override
  final int assignment_id;
  @override
  final String assignmentname;
  @override
  final DateTime deadline;
  @override
  final String description;
  @override
  final String classid;
  @override
  final String userid;
  @override
  final BuiltList<BuiltSubmission> submissions;

  factory _$BuiltAssignment([void Function(BuiltAssignmentBuilder) updates]) =>
      (new BuiltAssignmentBuilder()..update(updates)).build();

  _$BuiltAssignment._(
      {this.assignment_id,
      this.assignmentname,
      this.deadline,
      this.description,
      this.classid,
      this.userid,
      this.submissions})
      : super._() {
    if (assignment_id == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'assignment_id');
    }
    if (assignmentname == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'assignmentname');
    }
    if (deadline == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'deadline');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'description');
    }
    if (classid == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'classid');
    }
    if (userid == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'userid');
    }
    if (submissions == null) {
      throw new BuiltValueNullFieldError('BuiltAssignment', 'submissions');
    }
  }

  @override
  BuiltAssignment rebuild(void Function(BuiltAssignmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAssignmentBuilder toBuilder() =>
      new BuiltAssignmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAssignment &&
        assignment_id == other.assignment_id &&
        assignmentname == other.assignmentname &&
        deadline == other.deadline &&
        description == other.description &&
        classid == other.classid &&
        userid == other.userid &&
        submissions == other.submissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, assignment_id.hashCode),
                            assignmentname.hashCode),
                        deadline.hashCode),
                    description.hashCode),
                classid.hashCode),
            userid.hashCode),
        submissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAssignment')
          ..add('assignment_id', assignment_id)
          ..add('assignmentname', assignmentname)
          ..add('deadline', deadline)
          ..add('description', description)
          ..add('classid', classid)
          ..add('userid', userid)
          ..add('submissions', submissions))
        .toString();
  }
}

class BuiltAssignmentBuilder
    implements Builder<BuiltAssignment, BuiltAssignmentBuilder> {
  _$BuiltAssignment _$v;

  int _assignment_id;
  int get assignment_id => _$this._assignment_id;
  set assignment_id(int assignment_id) => _$this._assignment_id = assignment_id;

  String _assignmentname;
  String get assignmentname => _$this._assignmentname;
  set assignmentname(String assignmentname) =>
      _$this._assignmentname = assignmentname;

  DateTime _deadline;
  DateTime get deadline => _$this._deadline;
  set deadline(DateTime deadline) => _$this._deadline = deadline;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _classid;
  String get classid => _$this._classid;
  set classid(String classid) => _$this._classid = classid;

  String _userid;
  String get userid => _$this._userid;
  set userid(String userid) => _$this._userid = userid;

  ListBuilder<BuiltSubmission> _submissions;
  ListBuilder<BuiltSubmission> get submissions =>
      _$this._submissions ??= new ListBuilder<BuiltSubmission>();
  set submissions(ListBuilder<BuiltSubmission> submissions) =>
      _$this._submissions = submissions;

  BuiltAssignmentBuilder();

  BuiltAssignmentBuilder get _$this {
    if (_$v != null) {
      _assignment_id = _$v.assignment_id;
      _assignmentname = _$v.assignmentname;
      _deadline = _$v.deadline;
      _description = _$v.description;
      _classid = _$v.classid;
      _userid = _$v.userid;
      _submissions = _$v.submissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAssignment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAssignment;
  }

  @override
  void update(void Function(BuiltAssignmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAssignment build() {
    _$BuiltAssignment _$result;
    try {
      _$result = _$v ??
          new _$BuiltAssignment._(
              assignment_id: assignment_id,
              assignmentname: assignmentname,
              deadline: deadline,
              description: description,
              classid: classid,
              userid: userid,
              submissions: submissions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'submissions';
        submissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAssignment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
