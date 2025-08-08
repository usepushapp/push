import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaRecord extends FirestoreRecord {
  MediaRecord._(
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

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  bool hasRegion() => _region != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "dollarPrice" field.
  double? _dollarPrice;
  double get dollarPrice => _dollarPrice ?? 0.0;
  bool hasDollarPrice() => _dollarPrice != null;

  // "package1_name" field.
  String? _package1Name;
  String get package1Name => _package1Name ?? '';
  bool hasPackage1Name() => _package1Name != null;

  // "package1_logo" field.
  String? _package1Logo;
  String get package1Logo => _package1Logo ?? '';
  bool hasPackage1Logo() => _package1Logo != null;

  // "package2_name" field.
  String? _package2Name;
  String get package2Name => _package2Name ?? '';
  bool hasPackage2Name() => _package2Name != null;

  // "package2_logo" field.
  String? _package2Logo;
  String get package2Logo => _package2Logo ?? '';
  bool hasPackage2Logo() => _package2Logo != null;

  // "package3_name" field.
  String? _package3Name;
  String get package3Name => _package3Name ?? '';
  bool hasPackage3Name() => _package3Name != null;

  // "package3_logo" field.
  String? _package3Logo;
  String get package3Logo => _package3Logo ?? '';
  bool hasPackage3Logo() => _package3Logo != null;

  // "package4_name" field.
  String? _package4Name;
  String get package4Name => _package4Name ?? '';
  bool hasPackage4Name() => _package4Name != null;

  // "package4_logo" field.
  String? _package4Logo;
  String get package4Logo => _package4Logo ?? '';
  bool hasPackage4Logo() => _package4Logo != null;

  // "isPackage" field.
  bool? _isPackage;
  bool get isPackage => _isPackage ?? false;
  bool hasIsPackage() => _isPackage != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  bool hasFeatured() => _featured != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "packageTag" field.
  List<String>? _packageTag;
  List<String> get packageTag => _packageTag ?? const [];
  bool hasPackageTag() => _packageTag != null;

  // "packageHasMoreThan4List" field.
  bool? _packageHasMoreThan4List;
  bool get packageHasMoreThan4List => _packageHasMoreThan4List ?? false;
  bool hasPackageHasMoreThan4List() => _packageHasMoreThan4List != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _createdBy = snapshotData['created_by'] as String?;
    _url = snapshotData['url'] as String?;
    _region = snapshotData['region'] as String?;
    _status = snapshotData['status'] as bool?;
    _logo = snapshotData['logo'] as String?;
    _dollarPrice = castToType<double>(snapshotData['dollarPrice']);
    _package1Name = snapshotData['package1_name'] as String?;
    _package1Logo = snapshotData['package1_logo'] as String?;
    _package2Name = snapshotData['package2_name'] as String?;
    _package2Logo = snapshotData['package2_logo'] as String?;
    _package3Name = snapshotData['package3_name'] as String?;
    _package3Logo = snapshotData['package3_logo'] as String?;
    _package4Name = snapshotData['package4_name'] as String?;
    _package4Logo = snapshotData['package4_logo'] as String?;
    _isPackage = snapshotData['isPackage'] as bool?;
    _featured = snapshotData['featured'] as bool?;
    _tags = getDataList(snapshotData['tags']);
    _packageTag = getDataList(snapshotData['packageTag']);
    _packageHasMoreThan4List = snapshotData['packageHasMoreThan4List'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('media');

  static Stream<MediaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MediaRecord.fromSnapshot(s));

  static Future<MediaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MediaRecord.fromSnapshot(s));

  static MediaRecord fromSnapshot(DocumentSnapshot snapshot) => MediaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MediaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MediaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MediaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MediaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMediaRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? createdBy,
  String? url,
  String? region,
  bool? status,
  String? logo,
  double? dollarPrice,
  String? package1Name,
  String? package1Logo,
  String? package2Name,
  String? package2Logo,
  String? package3Name,
  String? package3Logo,
  String? package4Name,
  String? package4Logo,
  bool? isPackage,
  bool? featured,
  bool? packageHasMoreThan4List,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'created_by': createdBy,
      'url': url,
      'region': region,
      'status': status,
      'logo': logo,
      'dollarPrice': dollarPrice,
      'package1_name': package1Name,
      'package1_logo': package1Logo,
      'package2_name': package2Name,
      'package2_logo': package2Logo,
      'package3_name': package3Name,
      'package3_logo': package3Logo,
      'package4_name': package4Name,
      'package4_logo': package4Logo,
      'isPackage': isPackage,
      'featured': featured,
      'packageHasMoreThan4List': packageHasMoreThan4List,
    }.withoutNulls,
  );

  return firestoreData;
}

class MediaRecordDocumentEquality implements Equality<MediaRecord> {
  const MediaRecordDocumentEquality();

  @override
  bool equals(MediaRecord? e1, MediaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.createdBy == e2?.createdBy &&
        e1?.url == e2?.url &&
        e1?.region == e2?.region &&
        e1?.status == e2?.status &&
        e1?.logo == e2?.logo &&
        e1?.dollarPrice == e2?.dollarPrice &&
        e1?.package1Name == e2?.package1Name &&
        e1?.package1Logo == e2?.package1Logo &&
        e1?.package2Name == e2?.package2Name &&
        e1?.package2Logo == e2?.package2Logo &&
        e1?.package3Name == e2?.package3Name &&
        e1?.package3Logo == e2?.package3Logo &&
        e1?.package4Name == e2?.package4Name &&
        e1?.package4Logo == e2?.package4Logo &&
        e1?.isPackage == e2?.isPackage &&
        e1?.featured == e2?.featured &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        listEquality.equals(e1?.packageTag, e2?.packageTag) &&
        e1?.packageHasMoreThan4List == e2?.packageHasMoreThan4List;
  }

  @override
  int hash(MediaRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.createdBy,
        e?.url,
        e?.region,
        e?.status,
        e?.logo,
        e?.dollarPrice,
        e?.package1Name,
        e?.package1Logo,
        e?.package2Name,
        e?.package2Logo,
        e?.package3Name,
        e?.package3Logo,
        e?.package4Name,
        e?.package4Logo,
        e?.isPackage,
        e?.featured,
        e?.tags,
        e?.packageTag,
        e?.packageHasMoreThan4List
      ]);

  @override
  bool isValidKey(Object? o) => o is MediaRecord;
}
