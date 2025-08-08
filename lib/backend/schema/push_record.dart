import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PushRecord extends FirestoreRecord {
  PushRecord._(
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

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "push_name" field.
  String? _pushName;
  String get pushName => _pushName ?? '';
  bool hasPushName() => _pushName != null;

  // "push_goal" field.
  String? _pushGoal;
  String get pushGoal => _pushGoal ?? '';
  bool hasPushGoal() => _pushGoal != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "publish_time" field.
  DateTime? _publishTime;
  DateTime? get publishTime => _publishTime;
  bool hasPublishTime() => _publishTime != null;

  // "article" field.
  String? _article;
  String get article => _article ?? '';
  bool hasArticle() => _article != null;

  // "featured_image" field.
  String? _featuredImage;
  String get featuredImage => _featuredImage ?? '';
  bool hasFeaturedImage() => _featuredImage != null;

  // "creatives" field.
  String? _creatives;
  String get creatives => _creatives ?? '';
  bool hasCreatives() => _creatives != null;

  // "Note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  bool hasOrderId() => _orderId != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "writeForMe" field.
  List<double>? _writeForMe;
  List<double> get writeForMe => _writeForMe ?? const [];
  bool hasWriteForMe() => _writeForMe != null;

  // "order" field.
  List<DocumentReference>? _order;
  List<DocumentReference> get order => _order ?? const [];
  bool hasOrder() => _order != null;

  // "ref_id" field.
  String? _refId;
  String get refId => _refId ?? '';
  bool hasRefId() => _refId != null;

  // "reffered_id" field.
  String? _refferedId;
  String get refferedId => _refferedId ?? '';
  bool hasRefferedId() => _refferedId != null;

  // "reffered_email" field.
  String? _refferedEmail;
  String get refferedEmail => _refferedEmail ?? '';
  bool hasRefferedEmail() => _refferedEmail != null;

  // "display_status" field.
  String? _displayStatus;
  String get displayStatus => _displayStatus ?? '';
  bool hasDisplayStatus() => _displayStatus != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _pushName = snapshotData['push_name'] as String?;
    _pushGoal = snapshotData['push_goal'] as String?;
    _industry = snapshotData['industry'] as String?;
    _publishTime = snapshotData['publish_time'] as DateTime?;
    _article = snapshotData['article'] as String?;
    _featuredImage = snapshotData['featured_image'] as String?;
    _creatives = snapshotData['creatives'] as String?;
    _note = snapshotData['Note'] as String?;
    _orderId = castToType<int>(snapshotData['order_id']);
    _cost = castToType<double>(snapshotData['cost']);
    _status = snapshotData['status'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _writeForMe = getDataList(snapshotData['writeForMe']);
    _order = getDataList(snapshotData['order']);
    _refId = snapshotData['ref_id'] as String?;
    _refferedId = snapshotData['reffered_id'] as String?;
    _refferedEmail = snapshotData['reffered_email'] as String?;
    _displayStatus = snapshotData['display_status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('push');

  static Stream<PushRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PushRecord.fromSnapshot(s));

  static Future<PushRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PushRecord.fromSnapshot(s));

  static PushRecord fromSnapshot(DocumentSnapshot snapshot) => PushRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PushRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PushRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PushRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PushRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPushRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  DateTime? editedTime,
  String? pushName,
  String? pushGoal,
  String? industry,
  DateTime? publishTime,
  String? article,
  String? featuredImage,
  String? creatives,
  String? note,
  int? orderId,
  double? cost,
  String? status,
  String? userId,
  String? refId,
  String? refferedId,
  String? refferedEmail,
  String? displayStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'edited_time': editedTime,
      'push_name': pushName,
      'push_goal': pushGoal,
      'industry': industry,
      'publish_time': publishTime,
      'article': article,
      'featured_image': featuredImage,
      'creatives': creatives,
      'Note': note,
      'order_id': orderId,
      'cost': cost,
      'status': status,
      'user_id': userId,
      'ref_id': refId,
      'reffered_id': refferedId,
      'reffered_email': refferedEmail,
      'display_status': displayStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class PushRecordDocumentEquality implements Equality<PushRecord> {
  const PushRecordDocumentEquality();

  @override
  bool equals(PushRecord? e1, PushRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.pushName == e2?.pushName &&
        e1?.pushGoal == e2?.pushGoal &&
        e1?.industry == e2?.industry &&
        e1?.publishTime == e2?.publishTime &&
        e1?.article == e2?.article &&
        e1?.featuredImage == e2?.featuredImage &&
        e1?.creatives == e2?.creatives &&
        e1?.note == e2?.note &&
        e1?.orderId == e2?.orderId &&
        e1?.cost == e2?.cost &&
        e1?.status == e2?.status &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.writeForMe, e2?.writeForMe) &&
        listEquality.equals(e1?.order, e2?.order) &&
        e1?.refId == e2?.refId &&
        e1?.refferedId == e2?.refferedId &&
        e1?.refferedEmail == e2?.refferedEmail &&
        e1?.displayStatus == e2?.displayStatus;
  }

  @override
  int hash(PushRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.editedTime,
        e?.pushName,
        e?.pushGoal,
        e?.industry,
        e?.publishTime,
        e?.article,
        e?.featuredImage,
        e?.creatives,
        e?.note,
        e?.orderId,
        e?.cost,
        e?.status,
        e?.userId,
        e?.writeForMe,
        e?.order,
        e?.refId,
        e?.refferedId,
        e?.refferedEmail,
        e?.displayStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is PushRecord;
}
