import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BMCKeyActivitiesQ1Record extends FirestoreRecord {
  BMCKeyActivitiesQ1Record._(
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
      FirebaseFirestore.instance.collection('BMCKeyActivitiesQ1');

  static Stream<BMCKeyActivitiesQ1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BMCKeyActivitiesQ1Record.fromSnapshot(s));

  static Future<BMCKeyActivitiesQ1Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BMCKeyActivitiesQ1Record.fromSnapshot(s));

  static BMCKeyActivitiesQ1Record fromSnapshot(DocumentSnapshot snapshot) =>
      BMCKeyActivitiesQ1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BMCKeyActivitiesQ1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BMCKeyActivitiesQ1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BMCKeyActivitiesQ1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BMCKeyActivitiesQ1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBMCKeyActivitiesQ1RecordData({
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

class BMCKeyActivitiesQ1RecordDocumentEquality
    implements Equality<BMCKeyActivitiesQ1Record> {
  const BMCKeyActivitiesQ1RecordDocumentEquality();

  @override
  bool equals(BMCKeyActivitiesQ1Record? e1, BMCKeyActivitiesQ1Record? e2) {
    const listEquality = ListEquality();
    return e1?.description == e2?.description &&
        listEquality.equals(e1?.keyActivitiesList, e2?.keyActivitiesList) &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(BMCKeyActivitiesQ1Record? e) => const ListEquality()
      .hash([e?.description, e?.keyActivitiesList, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is BMCKeyActivitiesQ1Record;
}
