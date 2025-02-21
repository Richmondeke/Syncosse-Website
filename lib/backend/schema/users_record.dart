import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  bool hasExperience() => _experience != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "othername" field.
  String? _othername;
  String get othername => _othername ?? '';
  bool hasOthername() => _othername != null;

  // "DOB" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "Personalphone" field.
  double? _personalphone;
  double get personalphone => _personalphone ?? 0.0;
  bool hasPersonalphone() => _personalphone != null;

  // "emergencyphone" field.
  double? _emergencyphone;
  double get emergencyphone => _emergencyphone ?? 0.0;
  bool hasEmergencyphone() => _emergencyphone != null;

  // "Postalcode" field.
  double? _postalcode;
  double get postalcode => _postalcode ?? 0.0;
  bool hasPostalcode() => _postalcode != null;

  // "LicenseNumber" field.
  double? _licenseNumber;
  double get licenseNumber => _licenseNumber ?? 0.0;
  bool hasLicenseNumber() => _licenseNumber != null;

  // "LicenseExpdate" field.
  DateTime? _licenseExpdate;
  DateTime? get licenseExpdate => _licenseExpdate;
  bool hasLicenseExpdate() => _licenseExpdate != null;

  // "Permittype" field.
  String? _permittype;
  String get permittype => _permittype ?? '';
  bool hasPermittype() => _permittype != null;

  // "countryofissuance" field.
  String? _countryofissuance;
  String get countryofissuance => _countryofissuance ?? '';
  bool hasCountryofissuance() => _countryofissuance != null;

  // "Yearsofexp" field.
  int? _yearsofexp;
  int get yearsofexp => _yearsofexp ?? 0;
  bool hasYearsofexp() => _yearsofexp != null;

  // "languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  bool hasLanguages() => _languages != null;

  // "typesofvehicles" field.
  List<String>? _typesofvehicles;
  List<String> get typesofvehicles => _typesofvehicles ?? const [];
  bool hasTypesofvehicles() => _typesofvehicles != null;

  // "contractpref" field.
  List<String>? _contractpref;
  List<String> get contractpref => _contractpref ?? const [];
  bool hasContractpref() => _contractpref != null;

  // "approvals" field.
  List<String>? _approvals;
  List<String> get approvals => _approvals ?? const [];
  bool hasApprovals() => _approvals != null;

  // "prefvehicle" field.
  List<String>? _prefvehicle;
  List<String> get prefvehicle => _prefvehicle ?? const [];
  bool hasPrefvehicle() => _prefvehicle != null;

  // "additionalcert" field.
  List<String>? _additionalcert;
  List<String> get additionalcert => _additionalcert ?? const [];
  bool hasAdditionalcert() => _additionalcert != null;

  // "prefworkhours" field.
  List<String>? _prefworkhours;
  List<String> get prefworkhours => _prefworkhours ?? const [];
  bool hasPrefworkhours() => _prefworkhours != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _bio = snapshotData['bio'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _admin = snapshotData['admin'] as bool?;
    _experience = castToType<int>(snapshotData['experience']);
    _city = snapshotData['City'] as String?;
    _surname = snapshotData['surname'] as String?;
    _firstname = snapshotData['firstname'] as String?;
    _othername = snapshotData['othername'] as String?;
    _dob = snapshotData['DOB'] as DateTime?;
    _personalphone = castToType<double>(snapshotData['Personalphone']);
    _emergencyphone = castToType<double>(snapshotData['emergencyphone']);
    _postalcode = castToType<double>(snapshotData['Postalcode']);
    _licenseNumber = castToType<double>(snapshotData['LicenseNumber']);
    _licenseExpdate = snapshotData['LicenseExpdate'] as DateTime?;
    _permittype = snapshotData['Permittype'] as String?;
    _countryofissuance = snapshotData['countryofissuance'] as String?;
    _yearsofexp = castToType<int>(snapshotData['Yearsofexp']);
    _languages = getDataList(snapshotData['languages']);
    _typesofvehicles = getDataList(snapshotData['typesofvehicles']);
    _contractpref = getDataList(snapshotData['contractpref']);
    _approvals = getDataList(snapshotData['approvals']);
    _prefvehicle = getDataList(snapshotData['prefvehicle']);
    _additionalcert = getDataList(snapshotData['additionalcert']);
    _prefworkhours = getDataList(snapshotData['prefworkhours']);
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _address = snapshotData['address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActive,
  String? status,
  String? bio,
  DateTime? createdAt,
  bool? admin,
  int? experience,
  String? city,
  String? surname,
  String? firstname,
  String? othername,
  DateTime? dob,
  double? personalphone,
  double? emergencyphone,
  double? postalcode,
  double? licenseNumber,
  DateTime? licenseExpdate,
  String? permittype,
  String? countryofissuance,
  int? yearsofexp,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lastActive': lastActive,
      'status': status,
      'bio': bio,
      'createdAt': createdAt,
      'admin': admin,
      'experience': experience,
      'City': city,
      'surname': surname,
      'firstname': firstname,
      'othername': othername,
      'DOB': dob,
      'Personalphone': personalphone,
      'emergencyphone': emergencyphone,
      'Postalcode': postalcode,
      'LicenseNumber': licenseNumber,
      'LicenseExpdate': licenseExpdate,
      'Permittype': permittype,
      'countryofissuance': countryofissuance,
      'Yearsofexp': yearsofexp,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActive == e2?.lastActive &&
        e1?.status == e2?.status &&
        e1?.bio == e2?.bio &&
        e1?.createdAt == e2?.createdAt &&
        e1?.admin == e2?.admin &&
        e1?.experience == e2?.experience &&
        e1?.city == e2?.city &&
        e1?.surname == e2?.surname &&
        e1?.firstname == e2?.firstname &&
        e1?.othername == e2?.othername &&
        e1?.dob == e2?.dob &&
        e1?.personalphone == e2?.personalphone &&
        e1?.emergencyphone == e2?.emergencyphone &&
        e1?.postalcode == e2?.postalcode &&
        e1?.licenseNumber == e2?.licenseNumber &&
        e1?.licenseExpdate == e2?.licenseExpdate &&
        e1?.permittype == e2?.permittype &&
        e1?.countryofissuance == e2?.countryofissuance &&
        e1?.yearsofexp == e2?.yearsofexp &&
        listEquality.equals(e1?.languages, e2?.languages) &&
        listEquality.equals(e1?.typesofvehicles, e2?.typesofvehicles) &&
        listEquality.equals(e1?.contractpref, e2?.contractpref) &&
        listEquality.equals(e1?.approvals, e2?.approvals) &&
        listEquality.equals(e1?.prefvehicle, e2?.prefvehicle) &&
        listEquality.equals(e1?.additionalcert, e2?.additionalcert) &&
        listEquality.equals(e1?.prefworkhours, e2?.prefworkhours) &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.address == e2?.address;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActive,
        e?.status,
        e?.bio,
        e?.createdAt,
        e?.admin,
        e?.experience,
        e?.city,
        e?.surname,
        e?.firstname,
        e?.othername,
        e?.dob,
        e?.personalphone,
        e?.emergencyphone,
        e?.postalcode,
        e?.licenseNumber,
        e?.licenseExpdate,
        e?.permittype,
        e?.countryofissuance,
        e?.yearsofexp,
        e?.languages,
        e?.typesofvehicles,
        e?.contractpref,
        e?.approvals,
        e?.prefvehicle,
        e?.additionalcert,
        e?.prefworkhours,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
