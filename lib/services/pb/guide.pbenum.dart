///
//  Generated code. Do not modify.
//  source: guide.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GetGuideRequest_View extends $pb.ProtobufEnum {
  static const GetGuideRequest_View VIEW_UNSPECIFIED = GetGuideRequest_View._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_UNSPECIFIED');
  static const GetGuideRequest_View BASIC = GetGuideRequest_View._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASIC');
  static const GetGuideRequest_View WITH_EDGE_IDS = GetGuideRequest_View._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITH_EDGE_IDS');

  static const $core.List<GetGuideRequest_View> values = <GetGuideRequest_View> [
    VIEW_UNSPECIFIED,
    BASIC,
    WITH_EDGE_IDS,
  ];

  static final $core.Map<$core.int, GetGuideRequest_View> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetGuideRequest_View? valueOf($core.int value) => _byValue[value];

  const GetGuideRequest_View._($core.int v, $core.String n) : super(v, n);
}

class ListGuideRequest_View extends $pb.ProtobufEnum {
  static const ListGuideRequest_View VIEW_UNSPECIFIED = ListGuideRequest_View._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VIEW_UNSPECIFIED');
  static const ListGuideRequest_View BASIC = ListGuideRequest_View._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASIC');
  static const ListGuideRequest_View WITH_EDGE_IDS = ListGuideRequest_View._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITH_EDGE_IDS');

  static const $core.List<ListGuideRequest_View> values = <ListGuideRequest_View> [
    VIEW_UNSPECIFIED,
    BASIC,
    WITH_EDGE_IDS,
  ];

  static final $core.Map<$core.int, ListGuideRequest_View> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ListGuideRequest_View? valueOf($core.int value) => _byValue[value];

  const ListGuideRequest_View._($core.int v, $core.String n) : super(v, n);
}

