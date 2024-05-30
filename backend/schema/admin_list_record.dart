import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminListRecord extends FirestoreRecord {
  AdminListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adminID" field.
  String? _adminID;
  String get adminID => _adminID ?? '';
  bool hasAdminID() => _adminID != null;

  // "AdminName" field.
  String? _adminName;
  String get adminName => _adminName ?? '';
  bool hasAdminName() => _adminName != null;

  // "AdminProfileImage" field.
  String? _adminProfileImage;
  String get adminProfileImage => _adminProfileImage ?? '';
  bool hasAdminProfileImage() => _adminProfileImage != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "adminDOB" field.
  DateTime? _adminDOB;
  DateTime? get adminDOB => _adminDOB;
  bool hasAdminDOB() => _adminDOB != null;

  // "adminPhone" field.
  int? _adminPhone;
  int get adminPhone => _adminPhone ?? 0;
  bool hasAdminPhone() => _adminPhone != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  void _initializeFields() {
    _adminID = snapshotData['adminID'] as String?;
    _adminName = snapshotData['AdminName'] as String?;
    _adminProfileImage = snapshotData['AdminProfileImage'] as String?;
    _gender = snapshotData['gender'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _adminDOB = snapshotData['adminDOB'] as DateTime?;
    _adminPhone = castToType<int>(snapshotData['adminPhone']);
    _isAdmin = snapshotData['isAdmin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminList');

  static Stream<AdminListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminListRecord.fromSnapshot(s));

  static Future<AdminListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminListRecord.fromSnapshot(s));

  static AdminListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminListRecordData({
  String? adminID,
  String? adminName,
  String? adminProfileImage,
  String? gender,
  DocumentReference? userRef,
  DateTime? adminDOB,
  int? adminPhone,
  bool? isAdmin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adminID': adminID,
      'AdminName': adminName,
      'AdminProfileImage': adminProfileImage,
      'gender': gender,
      'userRef': userRef,
      'adminDOB': adminDOB,
      'adminPhone': adminPhone,
      'isAdmin': isAdmin,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminListRecordDocumentEquality implements Equality<AdminListRecord> {
  const AdminListRecordDocumentEquality();

  @override
  bool equals(AdminListRecord? e1, AdminListRecord? e2) {
    return e1?.adminID == e2?.adminID &&
        e1?.adminName == e2?.adminName &&
        e1?.adminProfileImage == e2?.adminProfileImage &&
        e1?.gender == e2?.gender &&
        e1?.userRef == e2?.userRef &&
        e1?.adminDOB == e2?.adminDOB &&
        e1?.adminPhone == e2?.adminPhone &&
        e1?.isAdmin == e2?.isAdmin;
  }

  @override
  int hash(AdminListRecord? e) => const ListEquality().hash([
        e?.adminID,
        e?.adminName,
        e?.adminProfileImage,
        e?.gender,
        e?.userRef,
        e?.adminDOB,
        e?.adminPhone,
        e?.isAdmin
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminListRecord;
}
