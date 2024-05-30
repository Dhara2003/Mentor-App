import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BMCKeyActivitiesQ2Record extends FirestoreRecord {
  BMCKeyActivitiesQ2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "keyActivitiesList" field.
  List<String>? _keyActivitiesList;
  List<String> get keyActivitiesList => _keyActivitiesList ?? const [];
  bool hasKeyActivitiesList() => _keyActivitiesList != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _keyActivitiesList = getDataList(snapshotData['keyActivitiesList']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BMCKeyActivitiesQ2');

  static Stream<BMCKeyActivitiesQ2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BMCKeyActivitiesQ2Record.fromSnapshot(s));

  static Future<BMCKeyActivitiesQ2Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BMCKeyActivitiesQ2Record.fromSnapshot(s));

  static BMCKeyActivitiesQ2Record fromSnapshot(DocumentSnapshot snapshot) =>
      BMCKeyActivitiesQ2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BMCKeyActivitiesQ2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BMCKeyActivitiesQ2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BMCKeyActivitiesQ2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BMCKeyActivitiesQ2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBMCKeyActivitiesQ2RecordData({
  String? description,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class BMCKeyActivitiesQ2RecordDocumentEquality
    implements Equality<BMCKeyActivitiesQ2Record> {
  const BMCKeyActivitiesQ2RecordDocumentEquality();

  @override
  bool equals(BMCKeyActivitiesQ2Record? e1, BMCKeyActivitiesQ2Record? e2) {
    const listEquality = ListEquality();
    return e1?.description == e2?.description &&
        listEquality.equals(e1?.keyActivitiesList, e2?.keyActivitiesList) &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(BMCKeyActivitiesQ2Record? e) => const ListEquality()
      .hash([e?.description, e?.keyActivitiesList, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is BMCKeyActivitiesQ2Record;
}
