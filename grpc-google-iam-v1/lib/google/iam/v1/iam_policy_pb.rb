# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/v1/iam_policy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/options_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n\x1egoogle/iam/v1/iam_policy.proto\x12\rgoogle.iam.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/iam/v1/options.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a google/protobuf/field_mask.proto\"\x91\x01\n\x13SetIamPolicyRequest\x12\x1c\n\x08resource\x18\x01 \x01(\tB\n\xe2\x41\x01\x02\xfa\x41\x03\n\x01*\x12+\n\x06policy\x18\x02 \x01(\x0b\x32\x15.google.iam.v1.PolicyB\x04\xe2\x41\x01\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"e\n\x13GetIamPolicyRequest\x12\x1c\n\x08resource\x18\x01 \x01(\tB\n\xe2\x41\x01\x02\xfa\x41\x03\n\x01*\x12\x30\n\x07options\x18\x02 \x01(\x0b\x32\x1f.google.iam.v1.GetPolicyOptions\"T\n\x19TestIamPermissionsRequest\x12\x1c\n\x08resource\x18\x01 \x01(\tB\n\xe2\x41\x01\x02\xfa\x41\x03\n\x01*\x12\x19\n\x0bpermissions\x18\x02 \x03(\tB\x04\xe2\x41\x01\x02\"1\n\x1aTestIamPermissionsResponse\x12\x13\n\x0bpermissions\x18\x01 \x03(\t2\xb4\x03\n\tIAMPolicy\x12t\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\")\x82\xd3\xe4\x93\x02#\"\x1e/v1/{resource=**}:setIamPolicy:\x01*\x12t\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\")\x82\xd3\xe4\x93\x02#\"\x1e/v1/{resource=**}:getIamPolicy:\x01*\x12\x9a\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"/\x82\xd3\xe4\x93\x02)\"$/v1/{resource=**}:testIamPermissions:\x01*\x1a\x1e\xca\x41\x1biam-meta-api.googleapis.comB\x7f\n\x11\x63om.google.iam.v1B\x0eIamPolicyProtoP\x01Z)cloud.google.com/go/iam/apiv1/iampb;iampb\xf8\x01\x01\xaa\x02\x13Google.Cloud.Iam.V1\xca\x02\x13Google\\Cloud\\Iam\\V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.iam.v1.Policy", "google/iam/v1/policy.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.iam.v1.GetPolicyOptions", "google/iam/v1/options.proto"],
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
  module Iam
    module V1
      SetIamPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.SetIamPolicyRequest").msgclass
      GetIamPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.GetIamPolicyRequest").msgclass
      TestIamPermissionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.TestIamPermissionsRequest").msgclass
      TestIamPermissionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.v1.TestIamPermissionsResponse").msgclass
    end
  end
end

#### Source proto file: google/iam/v1/iam_policy.proto ####
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
# package google.iam.v1;
#
# import "google/api/annotations.proto";
# import "google/api/client.proto";
# import "google/api/field_behavior.proto";
# import "google/api/resource.proto";
# import "google/iam/v1/options.proto";
# import "google/iam/v1/policy.proto";
# import "google/protobuf/field_mask.proto";
#
# option cc_enable_arenas = true;
# option csharp_namespace = "Google.Cloud.Iam.V1";
# option go_package = "cloud.google.com/go/iam/apiv1/iampb;iampb";
# option java_multiple_files = true;
# option java_outer_classname = "IamPolicyProto";
# option java_package = "com.google.iam.v1";
# option php_namespace = "Google\\Cloud\\Iam\\V1";
#
# // API Overview
# //
# //
# // Manages Identity and Access Management (IAM) policies.
# //
# // Any implementation of an API that offers access control features
# // implements the google.iam.v1.IAMPolicy interface.
# //
# // ## Data model
# //
# // Access control is applied when a principal (user or service account), takes
# // some action on a resource exposed by a service. Resources, identified by
# // URI-like names, are the unit of access control specification. Service
# // implementations can choose the granularity of access control and the
# // supported permissions for their resources.
# // For example one database service may allow access control to be
# // specified only at the Table level, whereas another might allow access control
# // to also be specified at the Column level.
# //
# // ## Policy Structure
# //
# // See google.iam.v1.Policy
# //
# // This is intentionally not a CRUD style API because access control policies
# // are created and deleted implicitly with the resources to which they are
# // attached.
# service IAMPolicy {
#   option (google.api.default_host) = "iam-meta-api.googleapis.com";
#
#   // Sets the access control policy on the specified resource. Replaces any
#   // existing policy.
#   //
#   // Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.
#   rpc SetIamPolicy(SetIamPolicyRequest) returns (Policy) {
#     option (google.api.http) = {
#       post: "/v1/{resource=**}:setIamPolicy"
#       body: "*"
#     };
#   }
#
#   // Gets the access control policy for a resource.
#   // Returns an empty policy if the resource exists and does not have a policy
#   // set.
#   rpc GetIamPolicy(GetIamPolicyRequest) returns (Policy) {
#     option (google.api.http) = {
#       post: "/v1/{resource=**}:getIamPolicy"
#       body: "*"
#     };
#   }
#
#   // Returns permissions that a caller has on the specified resource.
#   // If the resource does not exist, this will return an empty set of
#   // permissions, not a `NOT_FOUND` error.
#   //
#   // Note: This operation is designed to be used for building permission-aware
#   // UIs and command-line tools, not for authorization checking. This operation
#   // may "fail open" without warning.
#   rpc TestIamPermissions(TestIamPermissionsRequest) returns (TestIamPermissionsResponse) {
#     option (google.api.http) = {
#       post: "/v1/{resource=**}:testIamPermissions"
#       body: "*"
#     };
#   }
# }
#
# // Request message for `SetIamPolicy` method.
# message SetIamPolicyRequest {
#   // REQUIRED: The resource for which the policy is being specified.
#   // See the operation documentation for the appropriate value for this field.
#   string resource = 1 [
#     (google.api.field_behavior) = REQUIRED,
#     (google.api.resource_reference).type = "*"];
#
#   // REQUIRED: The complete policy to be applied to the `resource`. The size of
#   // the policy is limited to a few 10s of KB. An empty policy is a
#   // valid policy but certain Cloud Platform services (such as Projects)
#   // might reject them.
#   Policy policy = 2 [(google.api.field_behavior) = REQUIRED];
#
#   // OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
#   // the fields in the mask will be modified. If no mask is provided, the
#   // following default mask is used:
#   //
#   // `paths: "bindings, etag"`
#   google.protobuf.FieldMask update_mask = 3;
# }
#
# // Request message for `GetIamPolicy` method.
# message GetIamPolicyRequest {
#   // REQUIRED: The resource for which the policy is being requested.
#   // See the operation documentation for the appropriate value for this field.
#   string resource = 1 [
#     (google.api.field_behavior) = REQUIRED,
#     (google.api.resource_reference).type = "*"];
#
#   // OPTIONAL: A `GetPolicyOptions` object for specifying options to
#   // `GetIamPolicy`.
#   GetPolicyOptions options = 2;
# }
#
# // Request message for `TestIamPermissions` method.
# message TestIamPermissionsRequest {
#   // REQUIRED: The resource for which the policy detail is being requested.
#   // See the operation documentation for the appropriate value for this field.
#   string resource = 1[
#     (google.api.field_behavior) = REQUIRED,
#     (google.api.resource_reference).type = "*"];
#
#   // The set of permissions to check for the `resource`. Permissions with
#   // wildcards (such as '*' or 'storage.*') are not allowed. For more
#   // information see
#   // [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
#   repeated string permissions = 2 [(google.api.field_behavior) = REQUIRED];
# }
#
# // Response message for `TestIamPermissions` method.
# message TestIamPermissionsResponse {
#   // A subset of `TestPermissionsRequest.permissions` that the caller is
#   // allowed.
#   repeated string permissions = 1;
# }
