import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReferralsRecord extends FirestoreRecord {
  ReferralsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "ref_id" field.
  String? _refId;
  String get refId => _refId ?? '';
  bool hasRefId() => _refId != null;

  // "referred_id" field.
  String? _referredId;
  String get referredId => _referredId ?? '';
  bool hasReferredId() => _referredId != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "referred_email" field.
  String? _referredEmail;
  String get referredEmail => _referredEmail ?? '';
  bool hasReferredEmail() => _referredEmail != null;

  // "earnings" field.
  double? _earnings;
  double get earnings => _earnings ?? 0.0;
  bool hasEarnings() => _earnings != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _refId = snapshotData['ref_id'] as String?;
    _referredId = snapshotData['referred_id'] as String?;
    _userEmail = snapshotData['user_email'] as String?;
    _referredEmail = snapshotData['referred_email'] as String?;
    _earnings = castToType<double>(snapshotData['earnings']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _cost = castToType<double>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('referrals');

  static Stream<ReferralsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReferralsRecord.fromSnapshot(s));

  static Future<ReferralsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReferralsRecord.fromSnapshot(s));

  static ReferralsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReferralsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReferralsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReferralsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReferralsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReferralsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReferralsRecordData({
  String? id,
  String? refId,
  String? referredId,
  String? userEmail,
  String? referredEmail,
  double? earnings,
  DateTime? createdTime,
  double? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'ref_id': refId,
      'referred_id': referredId,
      'user_email': userEmail,
      'referred_email': referredEmail,
      'earnings': earnings,
      'created_time': createdTime,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReferralsRecordDocumentEquality implements Equality<ReferralsRecord> {
  const ReferralsRecordDocumentEquality();

  @override
  bool equals(ReferralsRecord? e1, ReferralsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.refId == e2?.refId &&
        e1?.referredId == e2?.referredId &&
        e1?.userEmail == e2?.userEmail &&
        e1?.referredEmail == e2?.referredEmail &&
        e1?.earnings == e2?.earnings &&
        e1?.createdTime == e2?.createdTime &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(ReferralsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.refId,
        e?.referredId,
        e?.userEmail,
        e?.referredEmail,
        e?.earnings,
        e?.createdTime,
        e?.cost
      ]);

  @override
  bool isValidKey(Object? o) => o is ReferralsRecord;
}
