# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/code.proto

require 'google/protobuf'


descriptor_data = "\n\x15google/rpc/code.proto\x12\ngoogle.rpc*\xb7\x02\n\x04\x43ode\x12\x06\n\x02OK\x10\x00\x12\r\n\tCANCELLED\x10\x01\x12\x0b\n\x07UNKNOWN\x10\x02\x12\x14\n\x10INVALID_ARGUMENT\x10\x03\x12\x15\n\x11\x44\x45\x41\x44LINE_EXCEEDED\x10\x04\x12\r\n\tNOT_FOUND\x10\x05\x12\x12\n\x0e\x41LREADY_EXISTS\x10\x06\x12\x15\n\x11PERMISSION_DENIED\x10\x07\x12\x13\n\x0fUNAUTHENTICATED\x10\x10\x12\x16\n\x12RESOURCE_EXHAUSTED\x10\x08\x12\x17\n\x13\x46\x41ILED_PRECONDITION\x10\t\x12\x0b\n\x07\x41\x42ORTED\x10\n\x12\x10\n\x0cOUT_OF_RANGE\x10\x0b\x12\x11\n\rUNIMPLEMENTED\x10\x0c\x12\x0c\n\x08INTERNAL\x10\r\x12\x0f\n\x0bUNAVAILABLE\x10\x0e\x12\r\n\tDATA_LOSS\x10\x0f\x42X\n\x0e\x63om.google.rpcB\tCodeProtoP\x01Z3google.golang.org/genproto/googleapis/rpc/code;code\xa2\x02\x03RPCb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Rpc
    Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.Code").enummodule
  end
end

#### Source proto file: google/rpc/code.proto ####
#
# // Copyright 2025 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# syntax = "proto3";
#
# package google.rpc;
#
# option go_package = "google.golang.org/genproto/googleapis/rpc/code;code";
# option java_multiple_files = true;
# option java_outer_classname = "CodeProto";
# option java_package = "com.google.rpc";
# option objc_class_prefix = "RPC";
#
# // The canonical error codes for gRPC APIs.
# //
# //
# // Sometimes multiple error codes may apply.  Services should return
# // the most specific error code that applies.  For example, prefer
# // `OUT_OF_RANGE` over `FAILED_PRECONDITION` if both codes apply.
# // Similarly prefer `NOT_FOUND` or `ALREADY_EXISTS` over `FAILED_PRECONDITION`.
# enum Code {
#   // Not an error; returned on success.
#   //
#   // HTTP Mapping: 200 OK
#   OK = 0;
#
#   // The operation was cancelled, typically by the caller.
#   //
#   // HTTP Mapping: 499 Client Closed Request
#   CANCELLED = 1;
#
#   // Unknown error.  For example, this error may be returned when
#   // a `Status` value received from another address space belongs to
#   // an error space that is not known in this address space.  Also
#   // errors raised by APIs that do not return enough error information
#   // may be converted to this error.
#   //
#   // HTTP Mapping: 500 Internal Server Error
#   UNKNOWN = 2;
#
#   // The client specified an invalid argument.  Note that this differs
#   // from `FAILED_PRECONDITION`.  `INVALID_ARGUMENT` indicates arguments
#   // that are problematic regardless of the state of the system
#   // (e.g., a malformed file name).
#   //
#   // HTTP Mapping: 400 Bad Request
#   INVALID_ARGUMENT = 3;
#
#   // The deadline expired before the operation could complete. For operations
#   // that change the state of the system, this error may be returned
#   // even if the operation has completed successfully.  For example, a
#   // successful response from a server could have been delayed long
#   // enough for the deadline to expire.
#   //
#   // HTTP Mapping: 504 Gateway Timeout
#   DEADLINE_EXCEEDED = 4;
#
#   // Some requested entity (e.g., file or directory) was not found.
#   //
#   // Note to server developers: if a request is denied for an entire class
#   // of users, such as gradual feature rollout or undocumented allowlist,
#   // `NOT_FOUND` may be used. If a request is denied for some users within
#   // a class of users, such as user-based access control, `PERMISSION_DENIED`
#   // must be used.
#   //
#   // HTTP Mapping: 404 Not Found
#   NOT_FOUND = 5;
#
#   // The entity that a client attempted to create (e.g., file or directory)
#   // already exists.
#   //
#   // HTTP Mapping: 409 Conflict
#   ALREADY_EXISTS = 6;
#
#   // The caller does not have permission to execute the specified
#   // operation. `PERMISSION_DENIED` must not be used for rejections
#   // caused by exhausting some resource (use `RESOURCE_EXHAUSTED`
#   // instead for those errors). `PERMISSION_DENIED` must not be
#   // used if the caller can not be identified (use `UNAUTHENTICATED`
#   // instead for those errors). This error code does not imply the
#   // request is valid or the requested entity exists or satisfies
#   // other pre-conditions.
#   //
#   // HTTP Mapping: 403 Forbidden
#   PERMISSION_DENIED = 7;
#
#   // The request does not have valid authentication credentials for the
#   // operation.
#   //
#   // HTTP Mapping: 401 Unauthorized
#   UNAUTHENTICATED = 16;
#
#   // Some resource has been exhausted, perhaps a per-user quota, or
#   // perhaps the entire file system is out of space.
#   //
#   // HTTP Mapping: 429 Too Many Requests
#   RESOURCE_EXHAUSTED = 8;
#
#   // The operation was rejected because the system is not in a state
#   // required for the operation's execution.  For example, the directory
#   // to be deleted is non-empty, an rmdir operation is applied to
#   // a non-directory, etc.
#   //
#   // Service implementors can use the following guidelines to decide
#   // between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`:
#   //  (a) Use `UNAVAILABLE` if the client can retry just the failing call.
#   //  (b) Use `ABORTED` if the client should retry at a higher level. For
#   //      example, when a client-specified test-and-set fails, indicating the
#   //      client should restart a read-modify-write sequence.
#   //  (c) Use `FAILED_PRECONDITION` if the client should not retry until
#   //      the system state has been explicitly fixed. For example, if an "rmdir"
#   //      fails because the directory is non-empty, `FAILED_PRECONDITION`
#   //      should be returned since the client should not retry unless
#   //      the files are deleted from the directory.
#   //
#   // HTTP Mapping: 400 Bad Request
#   FAILED_PRECONDITION = 9;
#
#   // The operation was aborted, typically due to a concurrency issue such as
#   // a sequencer check failure or transaction abort.
#   //
#   // See the guidelines above for deciding between `FAILED_PRECONDITION`,
#   // `ABORTED`, and `UNAVAILABLE`.
#   //
#   // HTTP Mapping: 409 Conflict
#   ABORTED = 10;
#
#   // The operation was attempted past the valid range.  E.g., seeking or
#   // reading past end-of-file.
#   //
#   // Unlike `INVALID_ARGUMENT`, this error indicates a problem that may
#   // be fixed if the system state changes. For example, a 32-bit file
#   // system will generate `INVALID_ARGUMENT` if asked to read at an
#   // offset that is not in the range [0,2^32-1], but it will generate
#   // `OUT_OF_RANGE` if asked to read from an offset past the current
#   // file size.
#   //
#   // There is a fair bit of overlap between `FAILED_PRECONDITION` and
#   // `OUT_OF_RANGE`.  We recommend using `OUT_OF_RANGE` (the more specific
#   // error) when it applies so that callers who are iterating through
#   // a space can easily look for an `OUT_OF_RANGE` error to detect when
#   // they are done.
#   //
#   // HTTP Mapping: 400 Bad Request
#   OUT_OF_RANGE = 11;
#
#   // The operation is not implemented or is not supported/enabled in this
#   // service.
#   //
#   // HTTP Mapping: 501 Not Implemented
#   UNIMPLEMENTED = 12;
#
#   // Internal errors.  This means that some invariants expected by the
#   // underlying system have been broken.  This error code is reserved
#   // for serious errors.
#   //
#   // HTTP Mapping: 500 Internal Server Error
#   INTERNAL = 13;
#
#   // The service is currently unavailable.  This is most likely a
#   // transient condition, which can be corrected by retrying with
#   // a backoff. Note that it is not always safe to retry
#   // non-idempotent operations.
#   //
#   // See the guidelines above for deciding between `FAILED_PRECONDITION`,
#   // `ABORTED`, and `UNAVAILABLE`.
#   //
#   // HTTP Mapping: 503 Service Unavailable
#   UNAVAILABLE = 14;
#
#   // Unrecoverable data loss or corruption.
#   //
#   // HTTP Mapping: 500 Internal Server Error
#   DATA_LOSS = 15;
# }
