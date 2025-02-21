import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "companyname" field.
  String? _companyname;
  String get companyname => _companyname ?? '';
  bool hasCompanyname() => _companyname != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "teammembers" field.
  List<DocumentReference>? _teammembers;
  List<DocumentReference> get teammembers => _teammembers ?? const [];
  bool hasTeammembers() => _teammembers != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Employeenumber" field.
  String? _employeenumber;
  String get employeenumber => _employeenumber ?? '';
  bool hasEmployeenumber() => _employeenumber != null;

  void _initializeFields() {
    _companyname = snapshotData['companyname'] as String?;
    _logo = snapshotData['logo'] as String?;
    _teammembers = getDataList(snapshotData['teammembers']);
    _city = snapshotData['City'] as String?;
    _address = snapshotData['Address'] as String?;
    _employeenumber = snapshotData['Employeenumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  String? companyname,
  String? logo,
  String? city,
  String? address,
  String? employeenumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyname': companyname,
      'logo': logo,
      'City': city,
      'Address': address,
      'Employeenumber': employeenumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyname == e2?.companyname &&
        e1?.logo == e2?.logo &&
        listEquality.equals(e1?.teammembers, e2?.teammembers) &&
        e1?.city == e2?.city &&
        e1?.address == e2?.address &&
        e1?.employeenumber == e2?.employeenumber;
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality().hash([
        e?.companyname,
        e?.logo,
        e?.teammembers,
        e?.city,
        e?.address,
        e?.employeenumber
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
