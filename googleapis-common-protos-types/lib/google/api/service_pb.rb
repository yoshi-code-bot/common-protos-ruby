# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/service.proto

require 'google/protobuf'

require 'google/api/auth_pb'
require 'google/api/backend_pb'
require 'google/api/billing_pb'
require 'google/api/client_pb'
require 'google/api/context_pb'
require 'google/api/control_pb'
require 'google/api/documentation_pb'
require 'google/api/endpoint_pb'
require 'google/api/http_pb'
require 'google/api/log_pb'
require 'google/api/logging_pb'
require 'google/api/metric_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/monitoring_pb'
require 'google/api/quota_pb'
require 'google/api/source_info_pb'
require 'google/api/system_parameter_pb'
require 'google/api/usage_pb'
require 'google/protobuf/api_pb'
require 'google/protobuf/type_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n\x18google/api/service.proto\x12\ngoogle.api\x1a\x15google/api/auth.proto\x1a\x18google/api/backend.proto\x1a\x18google/api/billing.proto\x1a\x17google/api/client.proto\x1a\x18google/api/context.proto\x1a\x18google/api/control.proto\x1a\x1egoogle/api/documentation.proto\x1a\x19google/api/endpoint.proto\x1a\x15google/api/http.proto\x1a\x14google/api/log.proto\x1a\x18google/api/logging.proto\x1a\x17google/api/metric.proto\x1a#google/api/monitored_resource.proto\x1a\x1bgoogle/api/monitoring.proto\x1a\x16google/api/quota.proto\x1a\x1cgoogle/api/source_info.proto\x1a!google/api/system_parameter.proto\x1a\x16google/api/usage.proto\x1a\x19google/protobuf/api.proto\x1a\x1agoogle/protobuf/type.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\x82\x08\n\x07Service\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\r\n\x05title\x18\x02 \x01(\t\x12\x1b\n\x13producer_project_id\x18\x16 \x01(\t\x12\n\n\x02id\x18! \x01(\t\x12\"\n\x04\x61pis\x18\x03 \x03(\x0b\x32\x14.google.protobuf.Api\x12$\n\x05types\x18\x04 \x03(\x0b\x32\x15.google.protobuf.Type\x12$\n\x05\x65nums\x18\x05 \x03(\x0b\x32\x15.google.protobuf.Enum\x12\x30\n\rdocumentation\x18\x06 \x01(\x0b\x32\x19.google.api.Documentation\x12$\n\x07\x62\x61\x63kend\x18\x08 \x01(\x0b\x32\x13.google.api.Backend\x12\x1e\n\x04http\x18\t \x01(\x0b\x32\x10.google.api.Http\x12 \n\x05quota\x18\n \x01(\x0b\x32\x11.google.api.Quota\x12\x32\n\x0e\x61uthentication\x18\x0b \x01(\x0b\x32\x1a.google.api.Authentication\x12$\n\x07\x63ontext\x18\x0c \x01(\x0b\x32\x13.google.api.Context\x12 \n\x05usage\x18\x0f \x01(\x0b\x32\x11.google.api.Usage\x12\'\n\tendpoints\x18\x12 \x03(\x0b\x32\x14.google.api.Endpoint\x12$\n\x07\x63ontrol\x18\x15 \x01(\x0b\x32\x13.google.api.Control\x12\'\n\x04logs\x18\x17 \x03(\x0b\x32\x19.google.api.LogDescriptor\x12-\n\x07metrics\x18\x18 \x03(\x0b\x32\x1c.google.api.MetricDescriptor\x12\x44\n\x13monitored_resources\x18\x19 \x03(\x0b\x32\'.google.api.MonitoredResourceDescriptor\x12$\n\x07\x62illing\x18\x1a \x01(\x0b\x32\x13.google.api.Billing\x12$\n\x07logging\x18\x1b \x01(\x0b\x32\x13.google.api.Logging\x12*\n\nmonitoring\x18\x1c \x01(\x0b\x32\x16.google.api.Monitoring\x12\x37\n\x11system_parameters\x18\x1d \x01(\x0b\x32\x1c.google.api.SystemParameters\x12+\n\x0bsource_info\x18% \x01(\x0b\x32\x16.google.api.SourceInfo\x12*\n\npublishing\x18- \x01(\x0b\x32\x16.google.api.Publishing\x12\x34\n\x0e\x63onfig_version\x18\x14 \x01(\x0b\x32\x1c.google.protobuf.UInt32ValueBn\n\x0e\x63om.google.apiB\x0cServiceProtoP\x01ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\xa2\x02\x04GAPIb\x06proto3"

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
    ["google.protobuf.Api", "google/protobuf/api.proto"],
    ["google.protobuf.Type", "google/protobuf/type.proto"],
    ["google.api.Documentation", "google/api/documentation.proto"],
    ["google.api.Backend", "google/api/backend.proto"],
    ["google.api.Http", "google/api/http.proto"],
    ["google.api.Quota", "google/api/quota.proto"],
    ["google.api.Authentication", "google/api/auth.proto"],
    ["google.api.Context", "google/api/context.proto"],
    ["google.api.Usage", "google/api/usage.proto"],
    ["google.api.Endpoint", "google/api/endpoint.proto"],
    ["google.api.Control", "google/api/control.proto"],
    ["google.api.LogDescriptor", "google/api/log.proto"],
    ["google.api.MetricDescriptor", "google/api/metric.proto"],
    ["google.api.MonitoredResourceDescriptor", "google/api/monitored_resource.proto"],
    ["google.api.Billing", "google/api/billing.proto"],
    ["google.api.Logging", "google/api/logging.proto"],
    ["google.api.Monitoring", "google/api/monitoring.proto"],
    ["google.api.SystemParameters", "google/api/system_parameter.proto"],
    ["google.api.SourceInfo", "google/api/source_info.proto"],
    ["google.api.Publishing", "google/api/client.proto"],
    ["google.protobuf.UInt32Value", "google/protobuf/wrappers.proto"],
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
    Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Service").msgclass
  end
end

#### Source proto file: google/api/service.proto ####
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
# import "google/api/auth.proto";
# import "google/api/backend.proto";
# import "google/api/billing.proto";
# import "google/api/client.proto";
# import "google/api/context.proto";
# import "google/api/control.proto";
# import "google/api/documentation.proto";
# import "google/api/endpoint.proto";
# import "google/api/http.proto";
# import "google/api/log.proto";
# import "google/api/logging.proto";
# import "google/api/metric.proto";
# import "google/api/monitored_resource.proto";
# import "google/api/monitoring.proto";
# import "google/api/quota.proto";
# import "google/api/source_info.proto";
# import "google/api/system_parameter.proto";
# import "google/api/usage.proto";
# import "google/protobuf/api.proto";
# import "google/protobuf/type.proto";
# import "google/protobuf/wrappers.proto";
#
# option go_package = "google.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig";
# option java_multiple_files = true;
# option java_outer_classname = "ServiceProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# // `Service` is the root object of Google API service configuration (service
# // config). It describes the basic information about a logical service,
# // such as the service name and the user-facing title, and delegates other
# // aspects to sub-sections. Each sub-section is either a proto message or a
# // repeated proto message that configures a specific aspect, such as auth.
# // For more information, see each proto message definition.
# //
# // Example:
# //
# //     type: google.api.Service
# //     name: calendar.googleapis.com
# //     title: Google Calendar API
# //     apis:
# //     - name: google.calendar.v3.Calendar
# //
# //     visibility:
# //       rules:
# //       - selector: "google.calendar.v3.*"
# //         restriction: PREVIEW
# //     backend:
# //       rules:
# //       - selector: "google.calendar.v3.*"
# //         address: calendar.example.com
# //
# //     authentication:
# //       providers:
# //       - id: google_calendar_auth
# //         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
# //         issuer: https://securetoken.google.com
# //       rules:
# //       - selector: "*"
# //         requirements:
# //           provider_id: google_calendar_auth
# message Service {
#   // The service name, which is a DNS-like logical identifier for the
#   // service, such as `calendar.googleapis.com`. The service name
#   // typically goes through DNS verification to make sure the owner
#   // of the service also owns the DNS name.
#   string name = 1;
#
#   // The product title for this service, it is the name displayed in Google
#   // Cloud Console.
#   string title = 2;
#
#   // The Google project that owns this service.
#   string producer_project_id = 22;
#
#   // A unique ID for a specific instance of this message, typically assigned
#   // by the client for tracking purpose. Must be no longer than 63 characters
#   // and only lower case letters, digits, '.', '_' and '-' are allowed. If
#   // empty, the server may choose to generate one instead.
#   string id = 33;
#
#   // A list of API interfaces exported by this service. Only the `name` field
#   // of the [google.protobuf.Api][google.protobuf.Api] needs to be provided by
#   // the configuration author, as the remaining fields will be derived from the
#   // IDL during the normalization process. It is an error to specify an API
#   // interface here which cannot be resolved against the associated IDL files.
#   repeated google.protobuf.Api apis = 3;
#
#   // A list of all proto message types included in this API service.
#   // Types referenced directly or indirectly by the `apis` are automatically
#   // included.  Messages which are not referenced but shall be included, such as
#   // types used by the `google.protobuf.Any` type, should be listed here by
#   // name by the configuration author. Example:
#   //
#   //     types:
#   //     - name: google.protobuf.Int32
#   repeated google.protobuf.Type types = 4;
#
#   // A list of all enum types included in this API service.  Enums referenced
#   // directly or indirectly by the `apis` are automatically included.  Enums
#   // which are not referenced but shall be included should be listed here by
#   // name by the configuration author. Example:
#   //
#   //     enums:
#   //     - name: google.someapi.v1.SomeEnum
#   repeated google.protobuf.Enum enums = 5;
#
#   // Additional API documentation.
#   Documentation documentation = 6;
#
#   // API backend configuration.
#   Backend backend = 8;
#
#   // HTTP configuration.
#   Http http = 9;
#
#   // Quota configuration.
#   Quota quota = 10;
#
#   // Auth configuration.
#   Authentication authentication = 11;
#
#   // Context configuration.
#   Context context = 12;
#
#   // Configuration controlling usage of this service.
#   Usage usage = 15;
#
#   // Configuration for network endpoints.  If this is empty, then an endpoint
#   // with the same name as the service is automatically generated to service all
#   // defined APIs.
#   repeated Endpoint endpoints = 18;
#
#   // Configuration for the service control plane.
#   Control control = 21;
#
#   // Defines the logs used by this service.
#   repeated LogDescriptor logs = 23;
#
#   // Defines the metrics used by this service.
#   repeated MetricDescriptor metrics = 24;
#
#   // Defines the monitored resources used by this service. This is required
#   // by the [Service.monitoring][google.api.Service.monitoring] and
#   // [Service.logging][google.api.Service.logging] configurations.
#   repeated MonitoredResourceDescriptor monitored_resources = 25;
#
#   // Billing configuration.
#   Billing billing = 26;
#
#   // Logging configuration.
#   Logging logging = 27;
#
#   // Monitoring configuration.
#   Monitoring monitoring = 28;
#
#   // System parameter configuration.
#   SystemParameters system_parameters = 29;
#
#   // Output only. The source information for this configuration if available.
#   SourceInfo source_info = 37;
#
#   // Settings for [Google Cloud Client
#   // libraries](https://cloud.google.com/apis/docs/cloud-client-libraries)
#   // generated from APIs defined as protocol buffers.
#   Publishing publishing = 45;
#
#   // Obsolete. Do not use.
#   //
#   // This field has no semantic meaning. The service config compiler always
#   // sets this field to `3`.
#   google.protobuf.UInt32Value config_version = 20;
# }
