# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/control.proto

require 'google/protobuf'

require 'google/api/policy_pb'


descriptor_data = "\n\x18google/api/control.proto\x12\ngoogle.api\x1a\x17google/api/policy.proto\"Q\n\x07\x43ontrol\x12\x13\n\x0b\x65nvironment\x18\x01 \x01(\t\x12\x31\n\x0fmethod_policies\x18\x04 \x03(\x0b\x32\x18.google.api.MethodPolicyBn\n\x0e\x63om.google.apiB\x0c\x43ontrolProtoP\x01ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\xa2\x02\x04GAPIb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Api
    Control = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Control").msgclass
  end
end

#### Source proto file: google/api/control.proto ####
#
# // Copyright 2024 Google LLC
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
# package google.api;
#
# import "google/api/policy.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig";
# option java_multiple_files = true;
# option java_outer_classname = "ControlProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# // Selects and configures the service controller used by the service.
# //
# // Example:
# //
# //     control:
# //       environment: servicecontrol.googleapis.com
# message Control {
#   // The service controller environment to use. If empty, no control plane
#   // feature (like quota and billing) will be enabled. The recommended value for
#   // most services is servicecontrol.googleapis.com
#   string environment = 1;
#
#   // Defines policies applying to the API methods of the service.
#   repeated MethodPolicy method_policies = 4;
# }
