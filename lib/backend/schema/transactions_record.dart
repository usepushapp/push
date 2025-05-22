import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "transaction_id" field.
  int? _transactionId;
  int get transactionId => _transactionId ?? 0;
  bool hasTransactionId() => _transactionId != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  bool hasTransactionType() => _transactionType != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "transaction_status" field.
  String? _transactionStatus;
  String get transactionStatus => _transactionStatus ?? '';
  bool hasTransactionStatus() => _transactionStatus != null;

  // "transaction_date" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  bool hasTransactionDate() => _transactionDate != null;

  // "ref_earning" field.
  double? _refEarning;
  double get refEarning => _refEarning ?? 0.0;
  bool hasRefEarning() => _refEarning != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "payment_method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "depositor" field.
  String? _depositor;
  String get depositor => _depositor ?? '';
  bool hasDepositor() => _depositor != null;

  // "transacton_ref" field.
  String? _transactonRef;
  String get transactonRef => _transactonRef ?? '';
  bool hasTransactonRef() => _transactonRef != null;

  // "depositor_name" field.
  String? _depositorName;
  String get depositorName => _depositorName ?? '';
  bool hasDepositorName() => _depositorName != null;

  // "depositor_account" field.
  int? _depositorAccount;
  int get depositorAccount => _depositorAccount ?? 0;
  bool hasDepositorAccount() => _depositorAccount != null;

  void _initializeFields() {
    _transactionId = castToType<int>(snapshotData['transaction_id']);
    _transactionType = snapshotData['transaction_type'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _transactionStatus = snapshotData['transaction_status'] as String?;
    _transactionDate = snapshotData['transaction_date'] as DateTime?;
    _refEarning = castToType<double>(snapshotData['ref_earning']);
    _userEmail = snapshotData['user_email'] as String?;
    _paymentMethod = snapshotData['payment_method'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _depositor = snapshotData['depositor'] as String?;
    _transactonRef = snapshotData['transacton_ref'] as String?;
    _depositorName = snapshotData['depositor_name'] as String?;
    _depositorAccount = castToType<int>(snapshotData['depositor_account']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  int? transactionId,
  String? transactionType,
  double? amount,
  String? transactionStatus,
  DateTime? transactionDate,
  double? refEarning,
  String? userEmail,
  String? paymentMethod,
  String? userId,
  String? depositor,
  String? transactonRef,
  String? depositorName,
  int? depositorAccount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transaction_id': transactionId,
      'transaction_type': transactionType,
      'amount': amount,
      'transaction_status': transactionStatus,
      'transaction_date': transactionDate,
      'ref_earning': refEarning,
      'user_email': userEmail,
      'payment_method': paymentMethod,
      'user_id': userId,
      'depositor': depositor,
      'transacton_ref': transactonRef,
      'depositor_name': depositorName,
      'depositor_account': depositorAccount,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.transactionId == e2?.transactionId &&
        e1?.transactionType == e2?.transactionType &&
        e1?.amount == e2?.amount &&
        e1?.transactionStatus == e2?.transactionStatus &&
        e1?.transactionDate == e2?.transactionDate &&
        e1?.refEarning == e2?.refEarning &&
        e1?.userEmail == e2?.userEmail &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.userId == e2?.userId &&
        e1?.depositor == e2?.depositor &&
        e1?.transactonRef == e2?.transactonRef &&
        e1?.depositorName == e2?.depositorName &&
        e1?.depositorAccount == e2?.depositorAccount;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.transactionId,
        e?.transactionType,
        e?.amount,
        e?.transactionStatus,
        e?.transactionDate,
        e?.refEarning,
        e?.userEmail,
        e?.paymentMethod,
        e?.userId,
        e?.depositor,
        e?.transactonRef,
        e?.depositorName,
        e?.depositorAccount
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
