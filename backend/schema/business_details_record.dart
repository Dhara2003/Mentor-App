import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BusinessDetailsRecord extends FirestoreRecord {
  BusinessDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "startupStage" field.
  String? _startupStage;
  String get startupStage => _startupStage ?? '';
  bool hasStartupStage() => _startupStage != null;

  // "industryBackground" field.
  String? _industryBackground;
  String get industryBackground => _industryBackground ?? '';
  bool hasIndustryBackground() => _industryBackground != null;

  // "startupName" field.
  String? _startupName;
  String get startupName => _startupName ?? '';
  bool hasStartupName() => _startupName != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "previousEmployer" field.
  String? _previousEmployer;
  String get previousEmployer => _previousEmployer ?? '';
  bool hasPreviousEmployer() => _previousEmployer != null;

  // "previousExperience" field.
  String? _previousExperience;
  String get previousExperience => _previousExperience ?? '';
  bool hasPreviousExperience() => _previousExperience != null;

  // "startupRegDate" field.
  DateTime? _startupRegDate;
  DateTime? get startupRegDate => _startupRegDate;
  bool hasStartupRegDate() => _startupRegDate != null;

  // "previousDesignation" field.
  String? _previousDesignation;
  String get previousDesignation => _previousDesignation ?? '';
  bool hasPreviousDesignation() => _previousDesignation != null;

  // "userPhilosophy" field.
  String? _userPhilosophy;
  String get userPhilosophy => _userPhilosophy ?? '';
  bool hasUserPhilosophy() => _userPhilosophy != null;

  // "BusinessDetailsId" field.
  String? _businessDetailsId;
  String get businessDetailsId => _businessDetailsId ?? '';
  bool hasBusinessDetailsId() => _businessDetailsId != null;

  void _initializeFields() {
    _startupStage = snapshotData['startupStage'] as String?;
    _industryBackground = snapshotData['industryBackground'] as String?;
    _startupName = snapshotData['startupName'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _previousEmployer = snapshotData['previousEmployer'] as String?;
    _previousExperience = snapshotData['previousExperience'] as String?;
    _startupRegDate = snapshotData['startupRegDate'] as DateTime?;
    _previousDesignation = snapshotData['previousDesignation'] as String?;
    _userPhilosophy = snapshotData['userPhilosophy'] as String?;
    _businessDetailsId = snapshotData['BusinessDetailsId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businessDetails');

  static Stream<BusinessDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessDetailsRecord.fromSnapshot(s));

  static Future<BusinessDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessDetailsRecord.fromSnapshot(s));

  static BusinessDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessDetailsRecordData({
  String? startupStage,
  String? industryBackground,
  String? startupName,
  DocumentReference? userRef,
  String? previousEmployer,
  String? previousExperience,
  DateTime? startupRegDate,
  String? previousDesignation,
  String? userPhilosophy,
  String? businessDetailsId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startupStage': startupStage,
      'industryBackground': industryBackground,
      'startupName': startupName,
      'userRef': userRef,
      'previousEmployer': previousEmployer,
      'previousExperience': previousExperience,
      'startupRegDate': startupRegDate,
      'previousDesignation': previousDesignation,
      'userPhilosophy': userPhilosophy,
      'BusinessDetailsId': businessDetailsId,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessDetailsRecordDocumentEquality
    implements Equality<BusinessDetailsRecord> {
  const BusinessDetailsRecordDocumentEquality();

  @override
  bool equals(BusinessDetailsRecord? e1, BusinessDetailsRecord? e2) {
    return e1?.startupStage == e2?.startupStage &&
        e1?.industryBackground == e2?.industryBackground &&
        e1?.startupName == e2?.startupName &&
        e1?.userRef == e2?.userRef &&
        e1?.previousEmployer == e2?.previousEmployer &&
        e1?.previousExperience == e2?.previousExperience &&
        e1?.startupRegDate == e2?.startupRegDate &&
        e1?.previousDesignation == e2?.previousDesignation &&
        e1?.userPhilosophy == e2?.userPhilosophy &&
        e1?.businessDetailsId == e2?.businessDetailsId;
  }

  @override
  int hash(BusinessDetailsRecord? e) => const ListEquality().hash([
        e?.startupStage,
        e?.industryBackground,
        e?.startupName,
        e?.userRef,
        e?.previousEmployer,
        e?.previousExperience,
        e?.startupRegDate,
        e?.previousDesignation,
        e?.userPhilosophy,
        e?.businessDetailsId
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessDetailsRecord;
}
