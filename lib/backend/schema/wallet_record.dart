import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WalletRecord extends FirestoreRecord {
  WalletRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "wallet_status" field.
  String? _walletStatus;
  String get walletStatus => _walletStatus ?? '';
  bool hasWalletStatus() => _walletStatus != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "wallet_id" field.
  String? _walletId;
  String get walletId => _walletId ?? '';
  bool hasWalletId() => _walletId != null;

  void _initializeFields() {
    _balance = castToType<double>(snapshotData['balance']);
    _currency = snapshotData['currency'] as String?;
    _walletStatus = snapshotData['wallet_status'] as String?;
    _uid = snapshotData['uid'] as String?;
    _userEmail = snapshotData['user_email'] as String?;
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
    _walletId = snapshotData['wallet_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wallet');

  static Stream<WalletRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WalletRecord.fromSnapshot(s));

  static Future<WalletRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WalletRecord.fromSnapshot(s));

  static WalletRecord fromSnapshot(DocumentSnapshot snapshot) => WalletRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WalletRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WalletRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WalletRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WalletRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWalletRecordData({
  double? balance,
  String? currency,
  String? walletStatus,
  String? uid,
  String? userEmail,
  DateTime? lastUpdated,
  String? walletId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'balance': balance,
      'currency': currency,
      'wallet_status': walletStatus,
      'uid': uid,
      'user_email': userEmail,
      'last_updated': lastUpdated,
      'wallet_id': walletId,
    }.withoutNulls,
  );

  return firestoreData;
}

class WalletRecordDocumentEquality implements Equality<WalletRecord> {
  const WalletRecordDocumentEquality();

  @override
  bool equals(WalletRecord? e1, WalletRecord? e2) {
    return e1?.balance == e2?.balance &&
        e1?.currency == e2?.currency &&
        e1?.walletStatus == e2?.walletStatus &&
        e1?.uid == e2?.uid &&
        e1?.userEmail == e2?.userEmail &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.walletId == e2?.walletId;
  }

  @override
  int hash(WalletRecord? e) => const ListEquality().hash([
        e?.balance,
        e?.currency,
        e?.walletStatus,
        e?.uid,
        e?.userEmail,
        e?.lastUpdated,
        e?.walletId
      ]);

  @override
  bool isValidKey(Object? o) => o is WalletRecord;
}
