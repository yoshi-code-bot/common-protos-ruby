# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/rpc/context/audit_context.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'


descriptor_data = "\n&google/rpc/context/audit_context.proto\x12\x12google.rpc.context\x1a\x1cgoogle/protobuf/struct.proto\"\xc7\x01\n\x0c\x41uditContext\x12\x11\n\taudit_log\x18\x01 \x01(\x0c\x12\x31\n\x10scrubbed_request\x18\x02 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x32\n\x11scrubbed_response\x18\x03 \x01(\x0b\x32\x17.google.protobuf.Struct\x12$\n\x1cscrubbed_response_item_count\x18\x04 \x01(\x05\x12\x17\n\x0ftarget_resource\x18\x05 \x01(\tBk\n\x16\x63om.google.rpc.contextB\x11\x41uditContextProtoP\x01Z9google.golang.org/genproto/googleapis/rpc/context;context\xf8\x01\x01\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Rpc
    module Context
      AuditContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.rpc.context.AuditContext").msgclass
    end
  end
end

#### Source proto file: google/rpc/context/audit_context.proto ####
#
# // Copyright 2022 Google LLC
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
# package google.rpc.context;
#
# import "google/protobuf/struct.proto";
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/rpc/context;context";
# option java_multiple_files = true;
# option java_outer_classname = "AuditContextProto";
# option java_package = "com.google.rpc.context";
#
# // `AuditContext` provides information that is needed for audit logging.
# message AuditContext {
#   // Serialized audit log.
#   bytes audit_log = 1;
#
#   // An API request message that is scrubbed based on the method annotation.
#   // This field should only be filled if audit_log field is present.
#   // Service Control will use this to assemble a complete log for Cloud Audit
#   // Logs and Google internal audit logs.
#   google.protobuf.Struct scrubbed_request = 2;
#
#   // An API response message that is scrubbed based on the method annotation.
#   // This field should only be filled if audit_log field is present.
#   // Service Control will use this to assemble a complete log for Cloud Audit
#   // Logs and Google internal audit logs.
#   google.protobuf.Struct scrubbed_response = 3;
#
#   // Number of scrubbed response items.
#   int32 scrubbed_response_item_count = 4;
#
#   // Audit resource name which is scrubbed.
#   string target_resource = 5;
# }
