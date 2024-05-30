import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MentorListRecord extends FirestoreRecord {
  MentorListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mentorID" field.
  String? _mentorID;
  String get mentorID => _mentorID ?? '';
  bool hasMentorID() => _mentorID != null;

  // "currentDesignation" field.
  String? _currentDesignation;
  String get currentDesignation => _currentDesignation ?? '';
  bool hasCurrentDesignation() => _currentDesignation != null;

  // "aboutMentor" field.
  String? _aboutMentor;
  String get aboutMentor => _aboutMentor ?? '';
  bool hasAboutMentor() => _aboutMentor != null;

  // "mentorSkills" field.
  List<String>? _mentorSkills;
  List<String> get mentorSkills => _mentorSkills ?? const [];
  bool hasMentorSkills() => _mentorSkills != null;

  // "mentorExperience" field.
  String? _mentorExperience;
  String get mentorExperience => _mentorExperience ?? '';
  bool hasMentorExperience() => _mentorExperience != null;

  // "mentorRating" field.
  double? _mentorRating;
  double get mentorRating => _mentorRating ?? 0.0;
  bool hasMentorRating() => _mentorRating != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "industryBackground" field.
  String? _industryBackground;
  String get industryBackground => _industryBackground ?? '';
  bool hasIndustryBackground() => _industryBackground != null;

  // "recentEmployer" field.
  String? _recentEmployer;
  String get recentEmployer => _recentEmployer ?? '';
  bool hasRecentEmployer() => _recentEmployer != null;

  // "mentoringPhilosophy" field.
  String? _mentoringPhilosophy;
  String get mentoringPhilosophy => _mentoringPhilosophy ?? '';
  bool hasMentoringPhilosophy() => _mentoringPhilosophy != null;

  void _initializeFields() {
    _mentorID = snapshotData['mentorID'] as String?;
    _currentDesignation = snapshotData['currentDesignation'] as String?;
    _aboutMentor = snapshotData['aboutMentor'] as String?;
    _mentorSkills = getDataList(snapshotData['mentorSkills']);
    _mentorExperience = snapshotData['mentorExperience'] as String?;
    _mentorRating = castToType<double>(snapshotData['mentorRating']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _industryBackground = snapshotData['industryBackground'] as String?;
    _recentEmployer = snapshotData['recentEmployer'] as String?;
    _mentoringPhilosophy = snapshotData['mentoringPhilosophy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mentorList');

  static Stream<MentorListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MentorListRecord.fromSnapshot(s));

  static Future<MentorListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MentorListRecord.fromSnapshot(s));

  static MentorListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MentorListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MentorListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MentorListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MentorListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MentorListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMentorListRecordData({
  String? mentorID,
  String? currentDesignation,
  String? aboutMentor,
  String? mentorExperience,
  double? mentorRating,
  DocumentReference? userRef,
  String? industryBackground,
  String? recentEmployer,
  String? mentoringPhilosophy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mentorID': mentorID,
      'currentDesignation': currentDesignation,
      'aboutMentor': aboutMentor,
      'mentorExperience': mentorExperience,
      'mentorRating': mentorRating,
      'userRef': userRef,
      'industryBackground': industryBackground,
      'recentEmployer': recentEmployer,
      'mentoringPhilosophy': mentoringPhilosophy,
    }.withoutNulls,
  );

  return firestoreData;
}

class MentorListRecordDocumentEquality implements Equality<MentorListRecord> {
  const MentorListRecordDocumentEquality();

  @override
  bool equals(MentorListRecord? e1, MentorListRecord? e2) {
    const listEquality = ListEquality();
    return e1?.mentorID == e2?.mentorID &&
        e1?.currentDesignation == e2?.currentDesignation &&
        e1?.aboutMentor == e2?.aboutMentor &&
        listEquality.equals(e1?.mentorSkills, e2?.mentorSkills) &&
        e1?.mentorExperience == e2?.mentorExperience &&
        e1?.mentorRating == e2?.mentorRating &&
        e1?.userRef == e2?.userRef &&
        e1?.industryBackground == e2?.industryBackground &&
        e1?.recentEmployer == e2?.recentEmployer &&
        e1?.mentoringPhilosophy == e2?.mentoringPhilosophy;
  }

  @override
  int hash(MentorListRecord? e) => const ListEquality().hash([
        e?.mentorID,
        e?.currentDesignation,
        e?.aboutMentor,
        e?.mentorSkills,
        e?.mentorExperience,
        e?.mentorRating,
        e?.userRef,
        e?.industryBackground,
        e?.recentEmployer,
        e?.mentoringPhilosophy
      ]);

  @override
  bool isValidKey(Object? o) => o is MentorListRecord;
}
