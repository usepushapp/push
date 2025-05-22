import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WriteForMeRecord extends FirestoreRecord {
  WriteForMeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "dollar_price" field.
  double? _dollarPrice;
  double get dollarPrice => _dollarPrice ?? 0.0;
  bool hasDollarPrice() => _dollarPrice != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _dollarPrice = castToType<double>(snapshotData['dollar_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('writeForMe');

  static Stream<WriteForMeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WriteForMeRecord.fromSnapshot(s));

  static Future<WriteForMeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WriteForMeRecord.fromSnapshot(s));

  static WriteForMeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WriteForMeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WriteForMeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WriteForMeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WriteForMeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WriteForMeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWriteForMeRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  double? dollarPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'dollar_price': dollarPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class WriteForMeRecordDocumentEquality implements Equality<WriteForMeRecord> {
  const WriteForMeRecordDocumentEquality();

  @override
  bool equals(WriteForMeRecord? e1, WriteForMeRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.dollarPrice == e2?.dollarPrice;
  }

  @override
  int hash(WriteForMeRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.dollarPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is WriteForMeRecord;
}
