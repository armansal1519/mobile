///
//  Generated code. Do not modify.
//  source: lesson.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GetLessonRequest_View extends $pb.ProtobufEnum {
  static const GetLessonRequest_View VIEW_UNSPECIFIED = GetLessonRequest_View._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_UNSPECIFIED');
  static const GetLessonRequest_View BASIC = GetLessonRequest_View._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASIC');
  static const GetLessonRequest_View WITH_EDGE_IDS = GetLessonRequest_View._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITH_EDGE_IDS');

  static const $core.List<GetLessonRequest_View> values = <GetLessonRequest_View> [
    VIEW_UNSPECIFIED,
    BASIC,
    WITH_EDGE_IDS,
  ];

  static final $core.Map<$core.int, GetLessonRequest_View> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetLessonRequest_View? valueOf($core.int value) => _byValue[value];

  const GetLessonRequest_View._($core.int v, $core.String n) : super(v, n);
}

class ListLessonRequest_View extends $pb.ProtobufEnum {
  static const ListLessonRequest_View VIEW_UNSPECIFIED = ListLessonRequest_View._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_UNSPECIFIED');
  static const ListLessonRequest_View BASIC = ListLessonRequest_View._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASIC');
  static const ListLessonRequest_View WITH_EDGE_IDS = ListLessonRequest_View._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITH_EDGE_IDS');

  static const $core.List<ListLessonRequest_View> values = <ListLessonRequest_View> [
    VIEW_UNSPECIFIED,
    BASIC,
    WITH_EDGE_IDS,
  ];

  static final $core.Map<$core.int, ListLessonRequest_View> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListLessonRequest_View? valueOf($core.int value) => _byValue[value];

  const ListLessonRequest_View._($core.int v, $core.String n) : super(v, n);
}

