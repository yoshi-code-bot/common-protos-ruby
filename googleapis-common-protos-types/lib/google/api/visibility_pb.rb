# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/visibility.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\n\x1bgoogle/api/visibility.proto\x12\ngoogle.api\x1a google/protobuf/descriptor.proto\"7\n\nVisibility\x12)\n\x05rules\x18\x01 \x03(\x0b\x32\x1a.google.api.VisibilityRule\"7\n\x0eVisibilityRule\x12\x10\n\x08selector\x18\x01 \x01(\t\x12\x13\n\x0brestriction\x18\x02 \x01(\t:T\n\x0f\x65num_visibility\x12\x1c.google.protobuf.EnumOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRule:Z\n\x10value_visibility\x12!.google.protobuf.EnumValueOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRule:V\n\x10\x66ield_visibility\x12\x1d.google.protobuf.FieldOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRule:Z\n\x12message_visibility\x12\x1f.google.protobuf.MessageOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRule:X\n\x11method_visibility\x12\x1e.google.protobuf.MethodOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRule:V\n\x0e\x61pi_visibility\x12\x1f.google.protobuf.ServiceOptions\x18\xaf\xca\xbc\" \x01(\x0b\x32\x1a.google.api.VisibilityRuleBn\n\x0e\x63om.google.apiB\x0fVisibilityProtoP\x01Z?google.golang.org/genproto/googleapis/api/visibility;visibility\xf8\x01\x01\xa2\x02\x04GAPIb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Api
    Visibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Visibility").msgclass
    VisibilityRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.VisibilityRule").msgclass
  end
end

#### Source proto file: google/api/visibility.proto ####
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
# import "google/protobuf/descriptor.proto";
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/api/visibility;visibility";
# option java_multiple_files = true;
# option java_outer_classname = "VisibilityProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# extend google.protobuf.EnumOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule enum_visibility = 72295727;
# }
#
# extend google.protobuf.EnumValueOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule value_visibility = 72295727;
# }
#
# extend google.protobuf.FieldOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule field_visibility = 72295727;
# }
#
# extend google.protobuf.MessageOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule message_visibility = 72295727;
# }
#
# extend google.protobuf.MethodOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule method_visibility = 72295727;
# }
#
# extend google.protobuf.ServiceOptions {
#   // See `VisibilityRule`.
#   google.api.VisibilityRule api_visibility = 72295727;
# }
#
# // `Visibility` restricts service consumer's access to service elements,
# // such as whether an application can call a visibility-restricted method.
# // The restriction is expressed by applying visibility labels on service
# // elements. The visibility labels are elsewhere linked to service consumers.
# //
# // A service can define multiple visibility labels, but a service consumer
# // should be granted at most one visibility label. Multiple visibility
# // labels for a single service consumer are not supported.
# //
# // If an element and all its parents have no visibility label, its visibility
# // is unconditionally granted.
# //
# // Example:
# //
# //     visibility:
# //       rules:
# //       - selector: google.calendar.Calendar.EnhancedSearch
# //         restriction: PREVIEW
# //       - selector: google.calendar.Calendar.Delegate
# //         restriction: INTERNAL
# //
# // Here, all methods are publicly visible except for the restricted methods
# // EnhancedSearch and Delegate.
# message Visibility {
#   // A list of visibility rules that apply to individual API elements.
#   //
#   // **NOTE:** All service configuration rules follow "last one wins" order.
#   repeated VisibilityRule rules = 1;
# }
#
# // A visibility rule provides visibility configuration for an individual API
# // element.
# message VisibilityRule {
#   // Selects methods, messages, fields, enums, etc. to which this rule applies.
#   //
#   // Refer to [selector][google.api.DocumentationRule.selector] for syntax
#   // details.
#   string selector = 1;
#
#   // A comma-separated list of visibility labels that apply to the `selector`.
#   // Any of the listed labels can be used to grant the visibility.
#   //
#   // If a rule has multiple labels, removing one of the labels but not all of
#   // them can break clients.
#   //
#   // Example:
#   //
#   //     visibility:
#   //       rules:
#   //       - selector: google.calendar.Calendar.EnhancedSearch
#   //         restriction: INTERNAL, PREVIEW
#   //
#   // Removing INTERNAL from this restriction will break clients that rely on
#   // this method and only had access to it through INTERNAL.
#   string restriction = 2;
# }
