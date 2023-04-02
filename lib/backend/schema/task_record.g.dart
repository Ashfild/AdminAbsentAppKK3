// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskRecord> _$taskRecordSerializer = new _$TaskRecordSerializer();

class _$TaskRecordSerializer implements StructuredSerializer<TaskRecord> {
  @override
  final Iterable<Type> types = const [TaskRecord, _$TaskRecord];
  @override
  final String wireName = 'TaskRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaskRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.task;
    if (value != null) {
      result
        ..add('task')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jabatan;
    if (value != null) {
      result
        ..add('jabatan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TaskRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'jabatan':
          result.jabatan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TaskRecord extends TaskRecord {
  @override
  final String? task;
  @override
  final DateTime? timestamp;
  @override
  final String? name;
  @override
  final String? jabatan;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TaskRecord([void Function(TaskRecordBuilder)? updates]) =>
      (new TaskRecordBuilder()..update(updates))._build();

  _$TaskRecord._(
      {this.task, this.timestamp, this.name, this.jabatan, this.ffRef})
      : super._();

  @override
  TaskRecord rebuild(void Function(TaskRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskRecordBuilder toBuilder() => new TaskRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskRecord &&
        task == other.task &&
        timestamp == other.timestamp &&
        name == other.name &&
        jabatan == other.jabatan &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, task.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, jabatan.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskRecord')
          ..add('task', task)
          ..add('timestamp', timestamp)
          ..add('name', name)
          ..add('jabatan', jabatan)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TaskRecordBuilder implements Builder<TaskRecord, TaskRecordBuilder> {
  _$TaskRecord? _$v;

  String? _task;
  String? get task => _$this._task;
  set task(String? task) => _$this._task = task;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _jabatan;
  String? get jabatan => _$this._jabatan;
  set jabatan(String? jabatan) => _$this._jabatan = jabatan;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TaskRecordBuilder() {
    TaskRecord._initializeBuilder(this);
  }

  TaskRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task;
      _timestamp = $v.timestamp;
      _name = $v.name;
      _jabatan = $v.jabatan;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskRecord;
  }

  @override
  void update(void Function(TaskRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskRecord build() => _build();

  _$TaskRecord _build() {
    final _$result = _$v ??
        new _$TaskRecord._(
            task: task,
            timestamp: timestamp,
            name: name,
            jabatan: jabatan,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
