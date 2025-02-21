import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobPostingRecord extends FirestoreRecord {
  JobPostingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postedby" field.
  DocumentReference? _postedby;
  DocumentReference? get postedby => _postedby;
  bool hasPostedby() => _postedby != null;

  // "applications" field.
  List<DocumentReference>? _applications;
  List<DocumentReference> get applications => _applications ?? const [];
  bool hasApplications() => _applications != null;

  // "jobtitle" field.
  String? _jobtitle;
  String get jobtitle => _jobtitle ?? '';
  bool hasJobtitle() => _jobtitle != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "vehicletype" field.
  String? _vehicletype;
  String get vehicletype => _vehicletype ?? '';
  bool hasVehicletype() => _vehicletype != null;

  // "pay" field.
  double? _pay;
  double get pay => _pay ?? 0.0;
  bool hasPay() => _pay != null;

  // "contracttype" field.
  String? _contracttype;
  String get contracttype => _contracttype ?? '';
  bool hasContracttype() => _contracttype != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "JobDescription" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "companyname" field.
  String? _companyname;
  String get companyname => _companyname ?? '';
  bool hasCompanyname() => _companyname != null;

  // "company" field.
  DocumentReference? _company;
  DocumentReference? get company => _company;
  bool hasCompany() => _company != null;

  void _initializeFields() {
    _postedby = snapshotData['postedby'] as DocumentReference?;
    _applications = getDataList(snapshotData['applications']);
    _jobtitle = snapshotData['jobtitle'] as String?;
    _location = snapshotData['location'] as String?;
    _vehicletype = snapshotData['vehicletype'] as String?;
    _pay = castToType<double>(snapshotData['pay']);
    _contracttype = snapshotData['contracttype'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _jobDescription = snapshotData['JobDescription'] as String?;
    _companyname = snapshotData['companyname'] as String?;
    _company = snapshotData['company'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JobPosting');

  static Stream<JobPostingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobPostingRecord.fromSnapshot(s));

  static Future<JobPostingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobPostingRecord.fromSnapshot(s));

  static JobPostingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobPostingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobPostingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobPostingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobPostingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobPostingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobPostingRecordData({
  DocumentReference? postedby,
  String? jobtitle,
  String? location,
  String? vehicletype,
  double? pay,
  String? contracttype,
  String? duration,
  String? jobDescription,
  String? companyname,
  DocumentReference? company,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postedby': postedby,
      'jobtitle': jobtitle,
      'location': location,
      'vehicletype': vehicletype,
      'pay': pay,
      'contracttype': contracttype,
      'Duration': duration,
      'JobDescription': jobDescription,
      'companyname': companyname,
      'company': company,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobPostingRecordDocumentEquality implements Equality<JobPostingRecord> {
  const JobPostingRecordDocumentEquality();

  @override
  bool equals(JobPostingRecord? e1, JobPostingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postedby == e2?.postedby &&
        listEquality.equals(e1?.applications, e2?.applications) &&
        e1?.jobtitle == e2?.jobtitle &&
        e1?.location == e2?.location &&
        e1?.vehicletype == e2?.vehicletype &&
        e1?.pay == e2?.pay &&
        e1?.contracttype == e2?.contracttype &&
        e1?.duration == e2?.duration &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.companyname == e2?.companyname &&
        e1?.company == e2?.company;
  }

  @override
  int hash(JobPostingRecord? e) => const ListEquality().hash([
        e?.postedby,
        e?.applications,
        e?.jobtitle,
        e?.location,
        e?.vehicletype,
        e?.pay,
        e?.contracttype,
        e?.duration,
        e?.jobDescription,
        e?.companyname,
        e?.company
      ]);

  @override
  bool isValidKey(Object? o) => o is JobPostingRecord;
}
