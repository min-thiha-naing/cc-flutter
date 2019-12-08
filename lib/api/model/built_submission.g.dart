// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltSubmission> _$builtSubmissionSerializer =
    new _$BuiltSubmissionSerializer();

class _$BuiltSubmissionSerializer
    implements StructuredSerializer<BuiltSubmission> {
  @override
  final Iterable<Type> types = const [BuiltSubmission, _$BuiltSubmission];
  @override
  final String wireName = 'BuiltSubmission';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltSubmission object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'submission_id',
      serializers.serialize(object.submission_id,
          specifiedType: const FullType(int)),
      'user_id',
      serializers.serialize(object.userid, specifiedType: const FullType(int)),
      'assignment_id',
      serializers.serialize(object.assignmentid,
          specifiedType: const FullType(int)),
      'course_id',
      serializers.serialize(object.courseid,
          specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'remark',
      serializers.serialize(object.remark,
          specifiedType: const FullType(String)),
      'submitted_file',
      serializers.serialize(object.submittedfile,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  BuiltSubmission deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltSubmissionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'submission_id':
          result.submission_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_id':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'assignment_id':
          result.assignmentid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'course_id':
          result.courseid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remark':
          result.remark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'submitted_file':
          result.submittedfile = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltSubmission extends BuiltSubmission {
  @override
  final int submission_id;
  @override
  final int userid;
  @override
  final int assignmentid;
  @override
  final int courseid;
  @override
  final int score;
  @override
  final String status;
  @override
  final String remark;
  @override
  final int submittedfile;

  factory _$BuiltSubmission([void Function(BuiltSubmissionBuilder) updates]) =>
      (new BuiltSubmissionBuilder()..update(updates)).build();

  _$BuiltSubmission._(
      {this.submission_id,
      this.userid,
      this.assignmentid,
      this.courseid,
      this.score,
      this.status,
      this.remark,
      this.submittedfile})
      : super._() {
    if (submission_id == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'submission_id');
    }
    if (userid == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'userid');
    }
    if (assignmentid == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'assignmentid');
    }
    if (courseid == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'courseid');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'score');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'status');
    }
    if (remark == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'remark');
    }
    if (submittedfile == null) {
      throw new BuiltValueNullFieldError('BuiltSubmission', 'submittedfile');
    }
  }

  @override
  BuiltSubmission rebuild(void Function(BuiltSubmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSubmissionBuilder toBuilder() =>
      new BuiltSubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSubmission &&
        submission_id == other.submission_id &&
        userid == other.userid &&
        assignmentid == other.assignmentid &&
        courseid == other.courseid &&
        score == other.score &&
        status == other.status &&
        remark == other.remark &&
        submittedfile == other.submittedfile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, submission_id.hashCode),
                                userid.hashCode),
                            assignmentid.hashCode),
                        courseid.hashCode),
                    score.hashCode),
                status.hashCode),
            remark.hashCode),
        submittedfile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSubmission')
          ..add('submission_id', submission_id)
          ..add('userid', userid)
          ..add('assignmentid', assignmentid)
          ..add('courseid', courseid)
          ..add('score', score)
          ..add('status', status)
          ..add('remark', remark)
          ..add('submittedfile', submittedfile))
        .toString();
  }
}

class BuiltSubmissionBuilder
    implements Builder<BuiltSubmission, BuiltSubmissionBuilder> {
  _$BuiltSubmission _$v;

  int _submission_id;
  int get submission_id => _$this._submission_id;
  set submission_id(int submission_id) => _$this._submission_id = submission_id;

  int _userid;
  int get userid => _$this._userid;
  set userid(int userid) => _$this._userid = userid;

  int _assignmentid;
  int get assignmentid => _$this._assignmentid;
  set assignmentid(int assignmentid) => _$this._assignmentid = assignmentid;

  int _courseid;
  int get courseid => _$this._courseid;
  set courseid(int courseid) => _$this._courseid = courseid;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _remark;
  String get remark => _$this._remark;
  set remark(String remark) => _$this._remark = remark;

  int _submittedfile;
  int get submittedfile => _$this._submittedfile;
  set submittedfile(int submittedfile) => _$this._submittedfile = submittedfile;

  BuiltSubmissionBuilder();

  BuiltSubmissionBuilder get _$this {
    if (_$v != null) {
      _submission_id = _$v.submission_id;
      _userid = _$v.userid;
      _assignmentid = _$v.assignmentid;
      _courseid = _$v.courseid;
      _score = _$v.score;
      _status = _$v.status;
      _remark = _$v.remark;
      _submittedfile = _$v.submittedfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSubmission other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltSubmission;
  }

  @override
  void update(void Function(BuiltSubmissionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSubmission build() {
    final _$result = _$v ??
        new _$BuiltSubmission._(
            submission_id: submission_id,
            userid: userid,
            assignmentid: assignmentid,
            courseid: courseid,
            score: score,
            status: status,
            remark: remark,
            submittedfile: submittedfile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
