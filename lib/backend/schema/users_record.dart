import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "balance" field.
  int? _balance;
  int get balance => _balance ?? 0;
  bool hasBalance() => _balance != null;

  // "dollarActive" field.
  bool? _dollarActive;
  bool get dollarActive => _dollarActive ?? false;
  bool hasDollarActive() => _dollarActive != null;

  // "ref_code" field.
  String? _refCode;
  String get refCode => _refCode ?? '';
  bool hasRefCode() => _refCode != null;

  // "referred_by" field.
  String? _referredBy;
  String get referredBy => _referredBy ?? '';
  bool hasReferredBy() => _referredBy != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "currency_symbol" field.
  String? _currencySymbol;
  String get currencySymbol => _currencySymbol ?? '';
  bool hasCurrencySymbol() => _currencySymbol != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _admin = snapshotData['admin'] as bool?;
    _balance = castToType<int>(snapshotData['balance']);
    _dollarActive = snapshotData['dollarActive'] as bool?;
    _refCode = snapshotData['ref_code'] as String?;
    _referredBy = snapshotData['referred_by'] as String?;
    _country = snapshotData['country'] as String?;
    _currency = snapshotData['currency'] as String?;
    _currencySymbol = snapshotData['currency_symbol'] as String?;
    _language = snapshotData['language'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? admin,
  int? balance,
  bool? dollarActive,
  String? refCode,
  String? referredBy,
  String? country,
  String? currency,
  String? currencySymbol,
  String? language,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'admin': admin,
      'balance': balance,
      'dollarActive': dollarActive,
      'ref_code': refCode,
      'referred_by': referredBy,
      'country': country,
      'currency': currency,
      'currency_symbol': currencySymbol,
      'language': language,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.admin == e2?.admin &&
        e1?.balance == e2?.balance &&
        e1?.dollarActive == e2?.dollarActive &&
        e1?.refCode == e2?.refCode &&
        e1?.referredBy == e2?.referredBy &&
        e1?.country == e2?.country &&
        e1?.currency == e2?.currency &&
        e1?.currencySymbol == e2?.currencySymbol &&
        e1?.language == e2?.language;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.admin,
        e?.balance,
        e?.dollarActive,
        e?.refCode,
        e?.referredBy,
        e?.country,
        e?.currency,
        e?.currencySymbol,
        e?.language
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
