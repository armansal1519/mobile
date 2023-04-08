///
//  Generated code. Do not modify.
//  source: upload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'upload.pb.dart' as $11;
export 'upload.pb.dart';

class FileServiceClient extends $grpc.Client {
  static final _$upload =
      $grpc.ClientMethod<$11.FileUploadRequest, $11.FileUploadResponse>(
          '/pb.FileService/Upload',
          ($11.FileUploadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.FileUploadResponse.fromBuffer(value));

  FileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.FileUploadResponse> upload(
      $async.Stream<$11.FileUploadRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload, request, options: options).single;
  }
}

abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.FileService';

  FileServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$11.FileUploadRequest, $11.FileUploadResponse>(
            'Upload',
            upload,
            true,
            false,
            ($core.List<$core.int> value) =>
                $11.FileUploadRequest.fromBuffer(value),
            ($11.FileUploadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.FileUploadResponse> upload(
      $grpc.ServiceCall call, $async.Stream<$11.FileUploadRequest> request);
}
