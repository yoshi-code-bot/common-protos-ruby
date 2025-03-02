# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/resource.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\n\x19google/api/resource.proto\x12\ngoogle.api\x1a google/protobuf/descriptor.proto\"\xee\x02\n\x12ResourceDescriptor\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x0f\n\x07pattern\x18\x02 \x03(\t\x12\x12\n\nname_field\x18\x03 \x01(\t\x12\x37\n\x07history\x18\x04 \x01(\x0e\x32&.google.api.ResourceDescriptor.History\x12\x0e\n\x06plural\x18\x05 \x01(\t\x12\x10\n\x08singular\x18\x06 \x01(\t\x12\x33\n\x05style\x18\n \x03(\x0e\x32$.google.api.ResourceDescriptor.Style\"[\n\x07History\x12\x17\n\x13HISTORY_UNSPECIFIED\x10\x00\x12\x1d\n\x19ORIGINALLY_SINGLE_PATTERN\x10\x01\x12\x18\n\x14\x46UTURE_MULTI_PATTERN\x10\x02\"8\n\x05Style\x12\x15\n\x11STYLE_UNSPECIFIED\x10\x00\x12\x18\n\x14\x44\x45\x43LARATIVE_FRIENDLY\x10\x01\"5\n\x11ResourceReference\x12\x0c\n\x04type\x18\x01 \x01(\t\x12\x12\n\nchild_type\x18\x02 \x01(\t:Y\n\x12resource_reference\x12\x1d.google.protobuf.FieldOptions\x18\x9f\x08 \x01(\x0b\x32\x1d.google.api.ResourceReference:Z\n\x13resource_definition\x12\x1c.google.protobuf.FileOptions\x18\x9d\x08 \x03(\x0b\x32\x1e.google.api.ResourceDescriptor:R\n\x08resource\x12\x1f.google.protobuf.MessageOptions\x18\x9d\x08 \x01(\x0b\x32\x1e.google.api.ResourceDescriptorBk\n\x0e\x63om.google.apiB\rResourceProtoP\x01ZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\xa2\x02\x04GAPIb\x06proto3"

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
  module Api
    ResourceDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ResourceDescriptor").msgclass
    ResourceDescriptor::History = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ResourceDescriptor.History").enummodule
    ResourceDescriptor::Style = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ResourceDescriptor.Style").enummodule
    ResourceReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.ResourceReference").msgclass
  end
end

#### Source proto file: google/api/resource.proto ####
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
# package google.api;
#
# import "google/protobuf/descriptor.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/api/annotations;annotations";
# option java_multiple_files = true;
# option java_outer_classname = "ResourceProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# extend google.protobuf.FieldOptions {
#   // An annotation that describes a resource reference, see
#   // [ResourceReference][].
#   google.api.ResourceReference resource_reference = 1055;
# }
#
# extend google.protobuf.FileOptions {
#   // An annotation that describes a resource definition without a corresponding
#   // message; see [ResourceDescriptor][].
#   repeated google.api.ResourceDescriptor resource_definition = 1053;
# }
#
# extend google.protobuf.MessageOptions {
#   // An annotation that describes a resource definition, see
#   // [ResourceDescriptor][].
#   google.api.ResourceDescriptor resource = 1053;
# }
#
# // A simple descriptor of a resource type.
# //
# // ResourceDescriptor annotates a resource message (either by means of a
# // protobuf annotation or use in the service config), and associates the
# // resource's schema, the resource type, and the pattern of the resource name.
# //
# // Example:
# //
# //     message Topic {
# //       // Indicates this message defines a resource schema.
# //       // Declares the resource type in the format of {service}/{kind}.
# //       // For Kubernetes resources, the format is {api group}/{kind}.
# //       option (google.api.resource) = {
# //         type: "pubsub.googleapis.com/Topic"
# //         pattern: "projects/{project}/topics/{topic}"
# //       };
# //     }
# //
# // The ResourceDescriptor Yaml config will look like:
# //
# //     resources:
# //     - type: "pubsub.googleapis.com/Topic"
# //       pattern: "projects/{project}/topics/{topic}"
# //
# // Sometimes, resources have multiple patterns, typically because they can
# // live under multiple parents.
# //
# // Example:
# //
# //     message LogEntry {
# //       option (google.api.resource) = {
# //         type: "logging.googleapis.com/LogEntry"
# //         pattern: "projects/{project}/logs/{log}"
# //         pattern: "folders/{folder}/logs/{log}"
# //         pattern: "organizations/{organization}/logs/{log}"
# //         pattern: "billingAccounts/{billing_account}/logs/{log}"
# //       };
# //     }
# //
# // The ResourceDescriptor Yaml config will look like:
# //
# //     resources:
# //     - type: 'logging.googleapis.com/LogEntry'
# //       pattern: "projects/{project}/logs/{log}"
# //       pattern: "folders/{folder}/logs/{log}"
# //       pattern: "organizations/{organization}/logs/{log}"
# //       pattern: "billingAccounts/{billing_account}/logs/{log}"
# message ResourceDescriptor {
#   // A description of the historical or future-looking state of the
#   // resource pattern.
#   enum History {
#     // The "unset" value.
#     HISTORY_UNSPECIFIED = 0;
#
#     // The resource originally had one pattern and launched as such, and
#     // additional patterns were added later.
#     ORIGINALLY_SINGLE_PATTERN = 1;
#
#     // The resource has one pattern, but the API owner expects to add more
#     // later. (This is the inverse of ORIGINALLY_SINGLE_PATTERN, and prevents
#     // that from being necessary once there are multiple patterns.)
#     FUTURE_MULTI_PATTERN = 2;
#   }
#
#   // A flag representing a specific style that a resource claims to conform to.
#   enum Style {
#     // The unspecified value. Do not use.
#     STYLE_UNSPECIFIED = 0;
#
#     // This resource is intended to be "declarative-friendly".
#     //
#     // Declarative-friendly resources must be more strictly consistent, and
#     // setting this to true communicates to tools that this resource should
#     // adhere to declarative-friendly expectations.
#     //
#     // Note: This is used by the API linter (linter.aip.dev) to enable
#     // additional checks.
#     DECLARATIVE_FRIENDLY = 1;
#   }
#
#   // The resource type. It must be in the format of
#   // {service_name}/{resource_type_kind}. The `resource_type_kind` must be
#   // singular and must not include version numbers.
#   //
#   // Example: `storage.googleapis.com/Bucket`
#   //
#   // The value of the resource_type_kind must follow the regular expression
#   // /[A-Za-z][a-zA-Z0-9]+/. It should start with an upper case character and
#   // should use PascalCase (UpperCamelCase). The maximum number of
#   // characters allowed for the `resource_type_kind` is 100.
#   string type = 1;
#
#   // Optional. The relative resource name pattern associated with this resource
#   // type. The DNS prefix of the full resource name shouldn't be specified here.
#   //
#   // The path pattern must follow the syntax, which aligns with HTTP binding
#   // syntax:
#   //
#   //     Template = Segment { "/" Segment } ;
#   //     Segment = LITERAL | Variable ;
#   //     Variable = "{" LITERAL "}" ;
#   //
#   // Examples:
#   //
#   //     - "projects/{project}/topics/{topic}"
#   //     - "projects/{project}/knowledgeBases/{knowledge_base}"
#   //
#   // The components in braces correspond to the IDs for each resource in the
#   // hierarchy. It is expected that, if multiple patterns are provided,
#   // the same component name (e.g. "project") refers to IDs of the same
#   // type of resource.
#   repeated string pattern = 2;
#
#   // Optional. The field on the resource that designates the resource name
#   // field. If omitted, this is assumed to be "name".
#   string name_field = 3;
#
#   // Optional. The historical or future-looking state of the resource pattern.
#   //
#   // Example:
#   //
#   //     // The InspectTemplate message originally only supported resource
#   //     // names with organization, and project was added later.
#   //     message InspectTemplate {
#   //       option (google.api.resource) = {
#   //         type: "dlp.googleapis.com/InspectTemplate"
#   //         pattern:
#   //         "organizations/{organization}/inspectTemplates/{inspect_template}"
#   //         pattern: "projects/{project}/inspectTemplates/{inspect_template}"
#   //         history: ORIGINALLY_SINGLE_PATTERN
#   //       };
#   //     }
#   History history = 4;
#
#   // The plural name used in the resource name and permission names, such as
#   // 'projects' for the resource name of 'projects/{project}' and the permission
#   // name of 'cloudresourcemanager.googleapis.com/projects.get'. One exception
#   // to this is for Nested Collections that have stuttering names, as defined
#   // in [AIP-122](https://google.aip.dev/122#nested-collections), where the
#   // collection ID in the resource name pattern does not necessarily directly
#   // match the `plural` value.
#   //
#   // It is the same concept of the `plural` field in k8s CRD spec
#   // https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
#   //
#   // Note: The plural form is required even for singleton resources. See
#   // https://aip.dev/156
#   string plural = 5;
#
#   // The same concept of the `singular` field in k8s CRD spec
#   // https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/
#   // Such as "project" for the `resourcemanager.googleapis.com/Project` type.
#   string singular = 6;
#
#   // Style flag(s) for this resource.
#   // These indicate that a resource is expected to conform to a given
#   // style. See the specific style flags for additional information.
#   repeated Style style = 10;
# }
#
# // Defines a proto annotation that describes a string field that refers to
# // an API resource.
# message ResourceReference {
#   // The resource type that the annotated field references.
#   //
#   // Example:
#   //
#   //     message Subscription {
#   //       string topic = 2 [(google.api.resource_reference) = {
#   //         type: "pubsub.googleapis.com/Topic"
#   //       }];
#   //     }
#   //
#   // Occasionally, a field may reference an arbitrary resource. In this case,
#   // APIs use the special value * in their resource reference.
#   //
#   // Example:
#   //
#   //     message GetIamPolicyRequest {
#   //       string resource = 2 [(google.api.resource_reference) = {
#   //         type: "*"
#   //       }];
#   //     }
#   string type = 1;
#
#   // The resource type of a child collection that the annotated field
#   // references. This is useful for annotating the `parent` field that
#   // doesn't have a fixed resource type.
#   //
#   // Example:
#   //
#   //     message ListLogEntriesRequest {
#   //       string parent = 1 [(google.api.resource_reference) = {
#   //         child_type: "logging.googleapis.com/LogEntry"
#   //       };
#   //     }
#   string child_type = 2;
# }
