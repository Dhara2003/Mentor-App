import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "isMentor" field.
  bool? _isMentor;
  bool get isMentor => _isMentor ?? false;
  bool hasIsMentor() => _isMentor != null;

  // "isEntrepreneur" field.
  bool? _isEntrepreneur;
  bool get isEntrepreneur => _isEntrepreneur ?? false;
  bool hasIsEntrepreneur() => _isEntrepreneur != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "DateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "startupStage" field.
  String? _startupStage;
  String get startupStage => _startupStage ?? '';
  bool hasStartupStage() => _startupStage != null;

  // "startupName" field.
  String? _startupName;
  String get startupName => _startupName ?? '';
  bool hasStartupName() => _startupName != null;

  // "startupRegDate" field.
  DateTime? _startupRegDate;
  DateTime? get startupRegDate => _startupRegDate;
  bool hasStartupRegDate() => _startupRegDate != null;

  // "industryBackground" field.
  String? _industryBackground;
  String get industryBackground => _industryBackground ?? '';
  bool hasIndustryBackground() => _industryBackground != null;

  // "previousEmployer" field.
  String? _previousEmployer;
  String get previousEmployer => _previousEmployer ?? '';
  bool hasPreviousEmployer() => _previousEmployer != null;

  // "previousExperience" field.
  int? _previousExperience;
  int get previousExperience => _previousExperience ?? 0;
  bool hasPreviousExperience() => _previousExperience != null;

  // "previousDesignation" field.
  String? _previousDesignation;
  String get previousDesignation => _previousDesignation ?? '';
  bool hasPreviousDesignation() => _previousDesignation != null;

  // "userPhilosophy" field.
  String? _userPhilosophy;
  String get userPhilosophy => _userPhilosophy ?? '';
  bool hasUserPhilosophy() => _userPhilosophy != null;

  // "goalSetterSwitch" field.
  List<String>? _goalSetterSwitch;
  List<String> get goalSetterSwitch => _goalSetterSwitch ?? const [];
  bool hasGoalSetterSwitch() => _goalSetterSwitch != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _password = snapshotData['password'] as String?;
    _isMentor = snapshotData['isMentor'] as bool?;
    _isEntrepreneur = snapshotData['isEntrepreneur'] as bool?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dateOfBirth = snapshotData['DateOfBirth'] as DateTime?;
    _startupStage = snapshotData['startupStage'] as String?;
    _startupName = snapshotData['startupName'] as String?;
    _startupRegDate = snapshotData['startupRegDate'] as DateTime?;
    _industryBackground = snapshotData['industryBackground'] as String?;
    _previousEmployer = snapshotData['previousEmployer'] as String?;
    _previousExperience = castToType<int>(snapshotData['previousExperience']);
    _previousDesignation = snapshotData['previousDesignation'] as String?;
    _userPhilosophy = snapshotData['userPhilosophy'] as String?;
    _goalSetterSwitch = getDataList(snapshotData['goalSetterSwitch']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? password,
  bool? isMentor,
  bool? isEntrepreneur,
  bool? isAdmin,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? gender,
  DateTime? dateOfBirth,
  String? startupStage,
  String? startupName,
  DateTime? startupRegDate,
  String? industryBackground,
  String? previousEmployer,
  int? previousExperience,
  String? previousDesignation,
  String? userPhilosophy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'password': password,
      'isMentor': isMentor,
      'isEntrepreneur': isEntrepreneur,
      'isAdmin': isAdmin,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'gender': gender,
      'DateOfBirth': dateOfBirth,
      'startupStage': startupStage,
      'startupName': startupName,
      'startupRegDate': startupRegDate,
      'industryBackground': industryBackground,
      'previousEmployer': previousEmployer,
      'previousExperience': previousExperience,
      'previousDesignation': previousDesignation,
      'userPhilosophy': userPhilosophy,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.password == e2?.password &&
        e1?.isMentor == e2?.isMentor &&
        e1?.isEntrepreneur == e2?.isEntrepreneur &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.startupStage == e2?.startupStage &&
        e1?.startupName == e2?.startupName &&
        e1?.startupRegDate == e2?.startupRegDate &&
        e1?.industryBackground == e2?.industryBackground &&
        e1?.previousEmployer == e2?.previousEmployer &&
        e1?.previousExperience == e2?.previousExperience &&
        e1?.previousDesignation == e2?.previousDesignation &&
        e1?.userPhilosophy == e2?.userPhilosophy &&
        listEquality.equals(e1?.goalSetterSwitch, e2?.goalSetterSwitch);
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.password,
        e?.isMentor,
        e?.isEntrepreneur,
        e?.isAdmin,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.gender,
        e?.dateOfBirth,
        e?.startupStage,
        e?.startupName,
        e?.startupRegDate,
        e?.industryBackground,
        e?.previousEmployer,
        e?.previousExperience,
        e?.previousDesignation,
        e?.userPhilosophy,
        e?.goalSetterSwitch
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
