///
//  Generated code. Do not modify.
//  source: submit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'submit.pb.dart' as $10;
export 'submit.pb.dart';

class SubmitServiceClient extends $grpc.Client {
  static final _$submitQuestion =
      $grpc.ClientMethod<$10.SubmitQuestionRequest, $10.SubmitQuestionResponse>(
          '/pb.SubmitService/SubmitQuestion',
          ($10.SubmitQuestionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.SubmitQuestionResponse.fromBuffer(value));
  static final _$finishLesson =
      $grpc.ClientMethod<$10.FinishLessonRequest, $10.FinishLessonResponse>(
          '/pb.SubmitService/FinishLesson',
          ($10.FinishLessonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.FinishLessonResponse.fromBuffer(value));

  SubmitServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.SubmitQuestionResponse> submitQuestion(
      $10.SubmitQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$submitQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$10.FinishLessonResponse> finishLesson(
      $10.FinishLessonRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$finishLesson, request, options: options);
  }
}

abstract class SubmitServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.SubmitService';

  SubmitServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.SubmitQuestionRequest,
            $10.SubmitQuestionResponse>(
        'SubmitQuestion',
        submitQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SubmitQuestionRequest.fromBuffer(value),
        ($10.SubmitQuestionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$10.FinishLessonRequest, $10.FinishLessonResponse>(
            'FinishLesson',
            finishLesson_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $10.FinishLessonRequest.fromBuffer(value),
            ($10.FinishLessonResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.SubmitQuestionResponse> submitQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.SubmitQuestionRequest> request) async {
    return submitQuestion(call, await request);
  }

  $async.Future<$10.FinishLessonResponse> finishLesson_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.FinishLessonRequest> request) async {
    return finishLesson(call, await request);
  }

  $async.Future<$10.SubmitQuestionResponse> submitQuestion(
      $grpc.ServiceCall call, $10.SubmitQuestionRequest request);
  $async.Future<$10.FinishLessonResponse> finishLesson(
      $grpc.ServiceCall call, $10.FinishLessonRequest request);
}
