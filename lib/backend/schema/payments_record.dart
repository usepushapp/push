import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  bool hasTransactionType() => _transactionType != null;

  // "transaction_reference" field.
  String? _transactionReference;
  String get transactionReference => _transactionReference ?? '';
  bool hasTransactionReference() => _transactionReference != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "channel" field.
  String? _channel;
  String get channel => _channel ?? '';
  bool hasChannel() => _channel != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "payment_gateway_response" field.
  String? _paymentGatewayResponse;
  String get paymentGatewayResponse => _paymentGatewayResponse ?? '';
  bool hasPaymentGatewayResponse() => _paymentGatewayResponse != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _transactionId = snapshotData['transaction_id'] as String?;
    _transactionType = snapshotData['transaction_type'] as String?;
    _transactionReference = snapshotData['transaction_reference'] as String?;
    _email = snapshotData['email'] as String?;
    _url = snapshotData['url'] as String?;
    _channel = snapshotData['channel'] as String?;
    _currency = snapshotData['currency'] as String?;
    _paymentGatewayResponse =
        snapshotData['payment_gateway_response'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? name,
  double? amount,
  String? status,
  DateTime? createdAt,
  String? transactionId,
  String? transactionType,
  String? transactionReference,
  String? email,
  String? url,
  String? channel,
  String? currency,
  String? paymentGatewayResponse,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'status': status,
      'created_at': createdAt,
      'transaction_id': transactionId,
      'transaction_type': transactionType,
      'transaction_reference': transactionReference,
      'email': email,
      'url': url,
      'channel': channel,
      'currency': currency,
      'payment_gateway_response': paymentGatewayResponse,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt &&
        e1?.transactionId == e2?.transactionId &&
        e1?.transactionType == e2?.transactionType &&
        e1?.transactionReference == e2?.transactionReference &&
        e1?.email == e2?.email &&
        e1?.url == e2?.url &&
        e1?.channel == e2?.channel &&
        e1?.currency == e2?.currency &&
        e1?.paymentGatewayResponse == e2?.paymentGatewayResponse &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.status,
        e?.createdAt,
        e?.transactionId,
        e?.transactionType,
        e?.transactionReference,
        e?.email,
        e?.url,
        e?.channel,
        e?.currency,
        e?.paymentGatewayResponse,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
