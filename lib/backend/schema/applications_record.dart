import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationsRecord extends FirestoreRecord {
  ApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appliedby" field.
  DocumentReference? _appliedby;
  DocumentReference? get appliedby => _appliedby;
  bool hasAppliedby() => _appliedby != null;

  // "compatibility" field.
  int? _compatibility;
  int get compatibility => _compatibility ?? 0;
  bool hasCompatibility() => _compatibility != null;

  // "Matches" field.
  int? _matches;
  int get matches => _matches ?? 0;
  bool hasMatches() => _matches != null;

  // "Interviews" field.
  int? _interviews;
  int get interviews => _interviews ?? 0;
  bool hasInterviews() => _interviews != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  // "jobposting" field.
  DocumentReference? _jobposting;
  DocumentReference? get jobposting => _jobposting;
  bool hasJobposting() => _jobposting != null;

  // "jobpostedby" field.
  DocumentReference? _jobpostedby;
  DocumentReference? get jobpostedby => _jobpostedby;
  bool hasJobpostedby() => _jobpostedby != null;

  // "interviewDate" field.
  DateTime? _interviewDate;
  DateTime? get interviewDate => _interviewDate;
  bool hasInterviewDate() => _interviewDate != null;

  // "InterviewTime" field.
  DateTime? _interviewTime;
  DateTime? get interviewTime => _interviewTime;
  bool hasInterviewTime() => _interviewTime != null;

  // "Mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  bool hasMode() => _mode != null;

  // "MeetingLink" field.
  String? _meetingLink;
  String get meetingLink => _meetingLink ?? '';
  bool hasMeetingLink() => _meetingLink != null;

  void _initializeFields() {
    _appliedby = snapshotData['appliedby'] as DocumentReference?;
    _compatibility = castToType<int>(snapshotData['compatibility']);
    _matches = castToType<int>(snapshotData['Matches']);
    _interviews = castToType<int>(snapshotData['Interviews']);
    _status = snapshotData['status'] as String?;
    _company = snapshotData['company'] as DocumentReference?;
    _jobposting = snapshotData['jobposting'] as DocumentReference?;
    _jobpostedby = snapshotData['jobpostedby'] as DocumentReference?;
    _interviewDate = snapshotData['interviewDate'] as DateTime?;
    _interviewTime = snapshotData['InterviewTime'] as DateTime?;
    _mode = snapshotData['Mode'] as String?;
    _meetingLink = snapshotData['MeetingLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Applications');

  static Stream<ApplicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationsRecord.fromSnapshot(s));

  static Future<ApplicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationsRecord.fromSnapshot(s));

  static ApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationsRecordData({
  DocumentReference? appliedby,
  int? compatibility,
  int? matches,
  int? interviews,
  String? status,
  DocumentReference? company,
  DocumentReference? jobposting,
  DocumentReference? jobpostedby,
  DateTime? interviewDate,
  DateTime? interviewTime,
  String? mode,
  String? meetingLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appliedby': appliedby,
      'compatibility': compatibility,
      'Matches': matches,
      'Interviews': interviews,
      'status': status,
      'company': company,
      'jobposting': jobposting,
      'jobpostedby': jobpostedby,
      'interviewDate': interviewDate,
      'InterviewTime': interviewTime,
      'Mode': mode,
      'MeetingLink': meetingLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicationsRecordDocumentEquality
    implements Equality<ApplicationsRecord> {
  const ApplicationsRecordDocumentEquality();

  @override
  bool equals(ApplicationsRecord? e1, ApplicationsRecord? e2) {
    return e1?.appliedby == e2?.appliedby &&
        e1?.compatibility == e2?.compatibility &&
        e1?.matches == e2?.matches &&
        e1?.interviews == e2?.interviews &&
        e1?.status == e2?.status &&
        e1?.company == e2?.company &&
        e1?.jobposting == e2?.jobposting &&
        e1?.jobpostedby == e2?.jobpostedby &&
        e1?.interviewDate == e2?.interviewDate &&
        e1?.interviewTime == e2?.interviewTime &&
        e1?.mode == e2?.mode &&
        e1?.meetingLink == e2?.meetingLink;
  }

  @override
  int hash(ApplicationsRecord? e) => const ListEquality().hash([
        e?.appliedby,
        e?.compatibility,
        e?.matches,
        e?.interviews,
        e?.status,
        e?.company,
        e?.jobposting,
        e?.jobpostedby,
        e?.interviewDate,
        e?.interviewTime,
        e?.mode,
        e?.meetingLink
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicationsRecord;
}
