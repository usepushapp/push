import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillboardOrdersRecord extends FirestoreRecord {
  BillboardOrdersRecord._(
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

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "campaign_title" field.
  String? _campaignTitle;
  String get campaignTitle => _campaignTitle ?? '';
  bool hasCampaignTitle() => _campaignTitle != null;

  // "campaign_description" field.
  String? _campaignDescription;
  String get campaignDescription => _campaignDescription ?? '';
  bool hasCampaignDescription() => _campaignDescription != null;

  // "campaign_objective" field.
  String? _campaignObjective;
  String get campaignObjective => _campaignObjective ?? '';
  bool hasCampaignObjective() => _campaignObjective != null;

  // "campaign_duration" field.
  DateTime? _campaignDuration;
  DateTime? get campaignDuration => _campaignDuration;
  bool hasCampaignDuration() => _campaignDuration != null;

  // "campaign_end" field.
  DateTime? _campaignEnd;
  DateTime? get campaignEnd => _campaignEnd;
  bool hasCampaignEnd() => _campaignEnd != null;

  // "order" field.
  List<DocumentReference>? _order;
  List<DocumentReference> get order => _order ?? const [];
  bool hasOrder() => _order != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _campaignTitle = snapshotData['campaign_title'] as String?;
    _campaignDescription = snapshotData['campaign_description'] as String?;
    _campaignObjective = snapshotData['campaign_objective'] as String?;
    _campaignDuration = snapshotData['campaign_duration'] as DateTime?;
    _campaignEnd = snapshotData['campaign_end'] as DateTime?;
    _order = getDataList(snapshotData['order']);
    _cost = castToType<int>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('billboard_orders');

  static Stream<BillboardOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BillboardOrdersRecord.fromSnapshot(s));

  static Future<BillboardOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BillboardOrdersRecord.fromSnapshot(s));

  static BillboardOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BillboardOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BillboardOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BillboardOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BillboardOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BillboardOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBillboardOrdersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  String? campaignTitle,
  String? campaignDescription,
  String? campaignObjective,
  DateTime? campaignDuration,
  DateTime? campaignEnd,
  int? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'campaign_title': campaignTitle,
      'campaign_description': campaignDescription,
      'campaign_objective': campaignObjective,
      'campaign_duration': campaignDuration,
      'campaign_end': campaignEnd,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class BillboardOrdersRecordDocumentEquality
    implements Equality<BillboardOrdersRecord> {
  const BillboardOrdersRecordDocumentEquality();

  @override
  bool equals(BillboardOrdersRecord? e1, BillboardOrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.campaignTitle == e2?.campaignTitle &&
        e1?.campaignDescription == e2?.campaignDescription &&
        e1?.campaignObjective == e2?.campaignObjective &&
        e1?.campaignDuration == e2?.campaignDuration &&
        e1?.campaignEnd == e2?.campaignEnd &&
        listEquality.equals(e1?.order, e2?.order) &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(BillboardOrdersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.campaignTitle,
        e?.campaignDescription,
        e?.campaignObjective,
        e?.campaignDuration,
        e?.campaignEnd,
        e?.order,
        e?.cost
      ]);

  @override
  bool isValidKey(Object? o) => o is BillboardOrdersRecord;
}
