import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillboardsRecord extends FirestoreRecord {
  BillboardsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  bool hasWidth() => _width != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  bool hasHeight() => _height != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "landmark" field.
  String? _landmark;
  String get landmark => _landmark ?? '';
  bool hasLandmark() => _landmark != null;

  // "facing" field.
  String? _facing;
  String get facing => _facing ?? '';
  bool hasFacing() => _facing != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  // "audience" field.
  List<String>? _audience;
  List<String> get audience => _audience ?? const [];
  bool hasAudience() => _audience != null;

  // "peak_times" field.
  List<String>? _peakTimes;
  List<String> get peakTimes => _peakTimes ?? const [];
  bool hasPeakTimes() => _peakTimes != null;

  // "recommended_for" field.
  List<String>? _recommendedFor;
  List<String> get recommendedFor => _recommendedFor ?? const [];
  bool hasRecommendedFor() => _recommendedFor != null;

  // "daily_reach" field.
  int? _dailyReach;
  int get dailyReach => _dailyReach ?? 0;
  bool hasDailyReach() => _dailyReach != null;

  // "pricing_term" field.
  String? _pricingTerm;
  String get pricingTerm => _pricingTerm ?? '';
  bool hasPricingTerm() => _pricingTerm != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  bool hasFeatures() => _features != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "videos" field.
  List<String>? _videos;
  List<String> get videos => _videos ?? const [];
  bool hasVideos() => _videos != null;

  // "operator_name" field.
  String? _operatorName;
  String get operatorName => _operatorName ?? '';
  bool hasOperatorName() => _operatorName != null;

  // "operator_email" field.
  String? _operatorEmail;
  String get operatorEmail => _operatorEmail ?? '';
  bool hasOperatorEmail() => _operatorEmail != null;

  // "operator_phone" field.
  int? _operatorPhone;
  int get operatorPhone => _operatorPhone ?? 0;
  bool hasOperatorPhone() => _operatorPhone != null;

  // "operator_phone2" field.
  int? _operatorPhone2;
  int get operatorPhone2 => _operatorPhone2 ?? 0;
  bool hasOperatorPhone2() => _operatorPhone2 != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "available_from" field.
  DateTime? _availableFrom;
  DateTime? get availableFrom => _availableFrom;
  bool hasAvailableFrom() => _availableFrom != null;

  // "available_until" field.
  DateTime? _availableUntil;
  DateTime? get availableUntil => _availableUntil;
  bool hasAvailableUntil() => _availableUntil != null;

  // "rotation_available" field.
  bool? _rotationAvailable;
  bool get rotationAvailable => _rotationAvailable ?? false;
  bool hasRotationAvailable() => _rotationAvailable != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "featured_image" field.
  String? _featuredImage;
  String get featuredImage => _featuredImage ?? '';
  bool hasFeaturedImage() => _featuredImage != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "booked_status" field.
  bool? _bookedStatus;
  bool get bookedStatus => _bookedStatus ?? false;
  bool hasBookedStatus() => _bookedStatus != null;

  // "lighting" field.
  bool? _lighting;
  bool get lighting => _lighting ?? false;
  bool hasLighting() => _lighting != null;

  // "min_duration" field.
  int? _minDuration;
  int get minDuration => _minDuration ?? 0;
  bool hasMinDuration() => _minDuration != null;

  // "installation_timeframe" field.
  String? _installationTimeframe;
  String get installationTimeframe => _installationTimeframe ?? '';
  bool hasInstallationTimeframe() => _installationTimeframe != null;

  // "deadline_to_installation" field.
  String? _deadlineToInstallation;
  String get deadlineToInstallation => _deadlineToInstallation ?? '';
  bool hasDeadlineToInstallation() => _deadlineToInstallation != null;

  // "target_demography" field.
  String? _targetDemography;
  String get targetDemography => _targetDemography ?? '';
  bool hasTargetDemography() => _targetDemography != null;

  // "traffic_type" field.
  List<String>? _trafficType;
  List<String> get trafficType => _trafficType ?? const [];
  bool hasTrafficType() => _trafficType != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _type = snapshotData['type'] as String?;
    _format = snapshotData['format'] as String?;
    _width = castToType<double>(snapshotData['width']);
    _height = castToType<double>(snapshotData['height']);
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _street = snapshotData['street'] as String?;
    _landmark = snapshotData['landmark'] as String?;
    _facing = snapshotData['facing'] as String?;
    _latitude = castToType<double>(snapshotData['latitude']);
    _longitude = castToType<double>(snapshotData['longitude']);
    _audience = getDataList(snapshotData['audience']);
    _peakTimes = getDataList(snapshotData['peak_times']);
    _recommendedFor = getDataList(snapshotData['recommended_for']);
    _dailyReach = castToType<int>(snapshotData['daily_reach']);
    _pricingTerm = snapshotData['pricing_term'] as String?;
    _features = getDataList(snapshotData['features']);
    _images = getDataList(snapshotData['images']);
    _videos = getDataList(snapshotData['videos']);
    _operatorName = snapshotData['operator_name'] as String?;
    _operatorEmail = snapshotData['operator_email'] as String?;
    _operatorPhone = castToType<int>(snapshotData['operator_phone']);
    _operatorPhone2 = castToType<int>(snapshotData['operator_phone2']);
    _tags = getDataList(snapshotData['tags']);
    _availableFrom = snapshotData['available_from'] as DateTime?;
    _availableUntil = snapshotData['available_until'] as DateTime?;
    _rotationAvailable = snapshotData['rotation_available'] as bool?;
    _isActive = snapshotData['is_active'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _featuredImage = snapshotData['featured_image'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _bookedStatus = snapshotData['booked_status'] as bool?;
    _lighting = snapshotData['lighting'] as bool?;
    _minDuration = castToType<int>(snapshotData['min_duration']);
    _installationTimeframe = snapshotData['installation_timeframe'] as String?;
    _deadlineToInstallation =
        snapshotData['deadline_to_installation'] as String?;
    _targetDemography = snapshotData['target_demography'] as String?;
    _trafficType = getDataList(snapshotData['traffic_type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('billboards');

  static Stream<BillboardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BillboardsRecord.fromSnapshot(s));

  static Future<BillboardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BillboardsRecord.fromSnapshot(s));

  static BillboardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BillboardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BillboardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BillboardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BillboardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BillboardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBillboardsRecordData({
  String? title,
  String? type,
  String? format,
  double? width,
  double? height,
  String? city,
  String? state,
  String? street,
  String? landmark,
  String? facing,
  double? latitude,
  double? longitude,
  int? dailyReach,
  String? pricingTerm,
  String? operatorName,
  String? operatorEmail,
  int? operatorPhone,
  int? operatorPhone2,
  DateTime? availableFrom,
  DateTime? availableUntil,
  bool? rotationAvailable,
  bool? isActive,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? featuredImage,
  int? price,
  bool? bookedStatus,
  bool? lighting,
  int? minDuration,
  String? installationTimeframe,
  String? deadlineToInstallation,
  String? targetDemography,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'type': type,
      'format': format,
      'width': width,
      'height': height,
      'city': city,
      'state': state,
      'street': street,
      'landmark': landmark,
      'facing': facing,
      'latitude': latitude,
      'longitude': longitude,
      'daily_reach': dailyReach,
      'pricing_term': pricingTerm,
      'operator_name': operatorName,
      'operator_email': operatorEmail,
      'operator_phone': operatorPhone,
      'operator_phone2': operatorPhone2,
      'available_from': availableFrom,
      'available_until': availableUntil,
      'rotation_available': rotationAvailable,
      'is_active': isActive,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'featured_image': featuredImage,
      'price': price,
      'booked_status': bookedStatus,
      'lighting': lighting,
      'min_duration': minDuration,
      'installation_timeframe': installationTimeframe,
      'deadline_to_installation': deadlineToInstallation,
      'target_demography': targetDemography,
    }.withoutNulls,
  );

  return firestoreData;
}

class BillboardsRecordDocumentEquality implements Equality<BillboardsRecord> {
  const BillboardsRecordDocumentEquality();

  @override
  bool equals(BillboardsRecord? e1, BillboardsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.type == e2?.type &&
        e1?.format == e2?.format &&
        e1?.width == e2?.width &&
        e1?.height == e2?.height &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.street == e2?.street &&
        e1?.landmark == e2?.landmark &&
        e1?.facing == e2?.facing &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        listEquality.equals(e1?.audience, e2?.audience) &&
        listEquality.equals(e1?.peakTimes, e2?.peakTimes) &&
        listEquality.equals(e1?.recommendedFor, e2?.recommendedFor) &&
        e1?.dailyReach == e2?.dailyReach &&
        e1?.pricingTerm == e2?.pricingTerm &&
        listEquality.equals(e1?.features, e2?.features) &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.videos, e2?.videos) &&
        e1?.operatorName == e2?.operatorName &&
        e1?.operatorEmail == e2?.operatorEmail &&
        e1?.operatorPhone == e2?.operatorPhone &&
        e1?.operatorPhone2 == e2?.operatorPhone2 &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.availableFrom == e2?.availableFrom &&
        e1?.availableUntil == e2?.availableUntil &&
        e1?.rotationAvailable == e2?.rotationAvailable &&
        e1?.isActive == e2?.isActive &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.featuredImage == e2?.featuredImage &&
        e1?.price == e2?.price &&
        e1?.bookedStatus == e2?.bookedStatus &&
        e1?.lighting == e2?.lighting &&
        e1?.minDuration == e2?.minDuration &&
        e1?.installationTimeframe == e2?.installationTimeframe &&
        e1?.deadlineToInstallation == e2?.deadlineToInstallation &&
        e1?.targetDemography == e2?.targetDemography &&
        listEquality.equals(e1?.trafficType, e2?.trafficType);
  }

  @override
  int hash(BillboardsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.type,
        e?.format,
        e?.width,
        e?.height,
        e?.city,
        e?.state,
        e?.street,
        e?.landmark,
        e?.facing,
        e?.latitude,
        e?.longitude,
        e?.audience,
        e?.peakTimes,
        e?.recommendedFor,
        e?.dailyReach,
        e?.pricingTerm,
        e?.features,
        e?.images,
        e?.videos,
        e?.operatorName,
        e?.operatorEmail,
        e?.operatorPhone,
        e?.operatorPhone2,
        e?.tags,
        e?.availableFrom,
        e?.availableUntil,
        e?.rotationAvailable,
        e?.isActive,
        e?.createdAt,
        e?.updatedAt,
        e?.featuredImage,
        e?.price,
        e?.bookedStatus,
        e?.lighting,
        e?.minDuration,
        e?.installationTimeframe,
        e?.deadlineToInstallation,
        e?.targetDemography,
        e?.trafficType
      ]);

  @override
  bool isValidKey(Object? o) => o is BillboardsRecord;
}
