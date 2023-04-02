import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task_record.g.dart';

abstract class TaskRecord implements Built<TaskRecord, TaskRecordBuilder> {
  static Serializer<TaskRecord> get serializer => _$taskRecordSerializer;

  String? get task;

  DateTime? get timestamp;

  String? get name;

  String? get jabatan;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TaskRecordBuilder builder) => builder
    ..task = ''
    ..name = ''
    ..jabatan = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TaskRecord._();
  factory TaskRecord([void Function(TaskRecordBuilder) updates]) = _$TaskRecord;

  static TaskRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTaskRecordData({
  String? task,
  DateTime? timestamp,
  String? name,
  String? jabatan,
}) {
  final firestoreData = serializers.toFirestore(
    TaskRecord.serializer,
    TaskRecord(
      (t) => t
        ..task = task
        ..timestamp = timestamp
        ..name = name
        ..jabatan = jabatan,
    ),
  );

  return firestoreData;
}
