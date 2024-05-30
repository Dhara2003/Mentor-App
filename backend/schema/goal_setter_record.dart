import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GoalSetterRecord extends FirestoreRecord {
  GoalSetterRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ideaValidation" field.
  List<String>? _ideaValidation;
  List<String> get ideaValidation => _ideaValidation ?? const [];
  bool hasIdeaValidation() => _ideaValidation != null;

  // "marketResearch" field.
  List<String>? _marketResearch;
  List<String> get marketResearch => _marketResearch ?? const [];
  bool hasMarketResearch() => _marketResearch != null;

  // "productOrServiceDev" field.
  List<String>? _productOrServiceDev;
  List<String> get productOrServiceDev => _productOrServiceDev ?? const [];
  bool hasProductOrServiceDev() => _productOrServiceDev != null;

  // "marketingOrSales" field.
  List<String>? _marketingOrSales;
  List<String> get marketingOrSales => _marketingOrSales ?? const [];
  bool hasMarketingOrSales() => _marketingOrSales != null;

  // "businessOperations" field.
  List<String>? _businessOperations;
  List<String> get businessOperations => _businessOperations ?? const [];
  bool hasBusinessOperations() => _businessOperations != null;

  // "ideaValSwitchValue" field.
  bool? _ideaValSwitchValue;
  bool get ideaValSwitchValue => _ideaValSwitchValue ?? false;
  bool hasIdeaValSwitchValue() => _ideaValSwitchValue != null;

  // "marketRsrchSwitchVal" field.
  bool? _marketRsrchSwitchVal;
  bool get marketRsrchSwitchVal => _marketRsrchSwitchVal ?? false;
  bool hasMarketRsrchSwitchVal() => _marketRsrchSwitchVal != null;

  // "productServiceSwitchVal" field.
  bool? _productServiceSwitchVal;
  bool get productServiceSwitchVal => _productServiceSwitchVal ?? false;
  bool hasProductServiceSwitchVal() => _productServiceSwitchVal != null;

  // "marketingSalesSwitchVal" field.
  bool? _marketingSalesSwitchVal;
  bool get marketingSalesSwitchVal => _marketingSalesSwitchVal ?? false;
  bool hasMarketingSalesSwitchVal() => _marketingSalesSwitchVal != null;

  // "bizOpsSwitchVal" field.
  bool? _bizOpsSwitchVal;
  bool get bizOpsSwitchVal => _bizOpsSwitchVal ?? false;
  bool hasBizOpsSwitchVal() => _bizOpsSwitchVal != null;

  // "goalSetterId" field.
  String? _goalSetterId;
  String get goalSetterId => _goalSetterId ?? '';
  bool hasGoalSetterId() => _goalSetterId != null;

  // "goalSetterRef" field.
  DocumentReference? _goalSetterRef;
  DocumentReference? get goalSetterRef => _goalSetterRef;
  bool hasGoalSetterRef() => _goalSetterRef != null;

  void _initializeFields() {
    _ideaValidation = getDataList(snapshotData['ideaValidation']);
    _marketResearch = getDataList(snapshotData['marketResearch']);
    _productOrServiceDev = getDataList(snapshotData['productOrServiceDev']);
    _marketingOrSales = getDataList(snapshotData['marketingOrSales']);
    _businessOperations = getDataList(snapshotData['businessOperations']);
    _ideaValSwitchValue = snapshotData['ideaValSwitchValue'] as bool?;
    _marketRsrchSwitchVal = snapshotData['marketRsrchSwitchVal'] as bool?;
    _productServiceSwitchVal = snapshotData['productServiceSwitchVal'] as bool?;
    _marketingSalesSwitchVal = snapshotData['marketingSalesSwitchVal'] as bool?;
    _bizOpsSwitchVal = snapshotData['bizOpsSwitchVal'] as bool?;
    _goalSetterId = snapshotData['goalSetterId'] as String?;
    _goalSetterRef = snapshotData['goalSetterRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goalSetter');

  static Stream<GoalSetterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalSetterRecord.fromSnapshot(s));

  static Future<GoalSetterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalSetterRecord.fromSnapshot(s));

  static GoalSetterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GoalSetterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalSetterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalSetterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalSetterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalSetterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalSetterRecordData({
  bool? ideaValSwitchValue,
  bool? marketRsrchSwitchVal,
  bool? productServiceSwitchVal,
  bool? marketingSalesSwitchVal,
  bool? bizOpsSwitchVal,
  String? goalSetterId,
  DocumentReference? goalSetterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ideaValSwitchValue': ideaValSwitchValue,
      'marketRsrchSwitchVal': marketRsrchSwitchVal,
      'productServiceSwitchVal': productServiceSwitchVal,
      'marketingSalesSwitchVal': marketingSalesSwitchVal,
      'bizOpsSwitchVal': bizOpsSwitchVal,
      'goalSetterId': goalSetterId,
      'goalSetterRef': goalSetterRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalSetterRecordDocumentEquality implements Equality<GoalSetterRecord> {
  const GoalSetterRecordDocumentEquality();

  @override
  bool equals(GoalSetterRecord? e1, GoalSetterRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.ideaValidation, e2?.ideaValidation) &&
        listEquality.equals(e1?.marketResearch, e2?.marketResearch) &&
        listEquality.equals(e1?.productOrServiceDev, e2?.productOrServiceDev) &&
        listEquality.equals(e1?.marketingOrSales, e2?.marketingOrSales) &&
        listEquality.equals(e1?.businessOperations, e2?.businessOperations) &&
        e1?.ideaValSwitchValue == e2?.ideaValSwitchValue &&
        e1?.marketRsrchSwitchVal == e2?.marketRsrchSwitchVal &&
        e1?.productServiceSwitchVal == e2?.productServiceSwitchVal &&
        e1?.marketingSalesSwitchVal == e2?.marketingSalesSwitchVal &&
        e1?.bizOpsSwitchVal == e2?.bizOpsSwitchVal &&
        e1?.goalSetterId == e2?.goalSetterId &&
        e1?.goalSetterRef == e2?.goalSetterRef;
  }

  @override
  int hash(GoalSetterRecord? e) => const ListEquality().hash([
        e?.ideaValidation,
        e?.marketResearch,
        e?.productOrServiceDev,
        e?.marketingOrSales,
        e?.businessOperations,
        e?.ideaValSwitchValue,
        e?.marketRsrchSwitchVal,
        e?.productServiceSwitchVal,
        e?.marketingSalesSwitchVal,
        e?.bizOpsSwitchVal,
        e?.goalSetterId,
        e?.goalSetterRef
      ]);

  @override
  bool isValidKey(Object? o) => o is GoalSetterRecord;
}
