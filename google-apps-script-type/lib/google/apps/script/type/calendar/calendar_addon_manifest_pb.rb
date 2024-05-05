# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/calendar/calendar_addon_manifest.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/apps/script/type/extension_point_pb'


descriptor_data = "\n>google/apps/script/type/calendar/calendar_addon_manifest.proto\x12 google.apps.script.type.calendar\x1a\x1fgoogle/api/field_behavior.proto\x1a-google/apps/script/type/extension_point.proto\"\xbf\x04\n\x15\x43\x61lendarAddOnManifest\x12I\n\x10homepage_trigger\x18\x06 \x01(\x0b\x32/.google.apps.script.type.HomepageExtensionPoint\x12Q\n\x13\x63onference_solution\x18\x03 \x03(\x0b\x32\x34.google.apps.script.type.calendar.ConferenceSolution\x12$\n\x1c\x63reate_settings_url_function\x18\x05 \x01(\t\x12T\n\x12\x65vent_open_trigger\x18\n \x01(\x0b\x32\x38.google.apps.script.type.calendar.CalendarExtensionPoint\x12V\n\x14\x65vent_update_trigger\x18\x0b \x01(\x0b\x32\x38.google.apps.script.type.calendar.CalendarExtensionPoint\x12\x61\n\x14\x63urrent_event_access\x18\x0c \x01(\x0e\x32\x43.google.apps.script.type.calendar.CalendarAddOnManifest.EventAccess\"Q\n\x0b\x45ventAccess\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0c\n\x08METADATA\x10\x01\x12\x08\n\x04READ\x10\x03\x12\t\n\x05WRITE\x10\x04\x12\x0e\n\nREAD_WRITE\x10\x05\"p\n\x12\x43onferenceSolution\x12\x1f\n\x12on_create_function\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0f\n\x02id\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x11\n\x04name\x18\x05 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08logo_url\x18\x06 \x01(\tB\x03\xe0\x41\x02\"3\n\x16\x43\x61lendarExtensionPoint\x12\x19\n\x0crun_function\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\xf2\x01\n$com.google.apps.script.type.calendarB\x1a\x43\x61lendarAddOnManifestProtoP\x01Z?google.golang.org/genproto/googleapis/apps/script/type/calendar\xaa\x02 Google.Apps.Script.Type.Calendar\xca\x02 Google\\Apps\\Script\\Type\\Calendar\xea\x02$Google::Apps::Script::Type::Calendarb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Apps
    module Script
      module Type
        module Calendar
          CalendarAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.calendar.CalendarAddOnManifest").msgclass
          CalendarAddOnManifest::EventAccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.calendar.CalendarAddOnManifest.EventAccess").enummodule
          ConferenceSolution = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.calendar.ConferenceSolution").msgclass
          CalendarExtensionPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.calendar.CalendarExtensionPoint").msgclass
        end
      end
    end
  end
end

#### Source proto file: google/apps/script/type/calendar/calendar_addon_manifest.proto ####
#
# // Copyright 2020 Google LLC
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
# package google.apps.script.type.calendar;
#
# import "google/api/field_behavior.proto";
# import "google/apps/script/type/extension_point.proto";
#
# option csharp_namespace = "Google.Apps.Script.Type.Calendar";
# option go_package = "google.golang.org/genproto/googleapis/apps/script/type/calendar";
# option java_multiple_files = true;
# option java_outer_classname = "CalendarAddOnManifestProto";
# option java_package = "com.google.apps.script.type.calendar";
# option php_namespace = "Google\\Apps\\Script\\Type\\Calendar";
# option ruby_package = "Google::Apps::Script::Type::Calendar";
#
# // Manifest section specific to Calendar Add-ons.
#
# // Calendar add-on manifest.
# message CalendarAddOnManifest {
#   // An enum defining the level of data access event triggers require.
#   enum EventAccess {
#     // Default value when nothing is set for EventAccess.
#     UNSPECIFIED = 0;
#
#     // METADATA gives event triggers the permission to access the metadata of
#     // events such as event id and calendar id.
#     METADATA = 1;
#
#     // READ gives event triggers access to all provided event fields including
#     // the metadata, attendees, and conference data.
#     READ = 3;
#
#     // WRITE gives event triggers access to the metadata of events and the
#     // ability to perform all actions, including adding attendees and setting
#     // conference data.
#     WRITE = 4;
#
#     // READ_WRITE gives event triggers access to all provided event fields
#     // including the metadata, attendees, and conference data and the ability to
#     // perform all actions.
#     READ_WRITE = 5;
#   }
#
#   // Defines an endpoint that will be executed contexts that don't
#   // match a declared contextual trigger. Any cards generated by this function
#   // will always be available to the user, but may be eclipsed by contextual
#   // content when this add-on declares more targeted triggers.
#   //
#   // If present, this overrides the configuration from
#   // `addOns.common.homepageTrigger`.
#   google.apps.script.type.HomepageExtensionPoint homepage_trigger = 6;
#
#   // Defines conference solutions provided by this add-on.
#   repeated ConferenceSolution conference_solution = 3;
#
#   // An endpoint to execute that creates a URL to the add-on's settings page.
#   string create_settings_url_function = 5;
#
#   // An endpoint to trigger when an event is opened (viewed/edited).
#   CalendarExtensionPoint event_open_trigger = 10;
#
#   // An endpoint to trigger when the open event is updated.
#   CalendarExtensionPoint event_update_trigger = 11;
#
#   // Define the level of data access when an event addon is triggered.
#   EventAccess current_event_access = 12;
# }
#
# // Defines conference related values.
# message ConferenceSolution {
#   // Required. The endpoint to call when ConferenceData should be created.
#   string on_create_function = 1 [(google.api.field_behavior) = REQUIRED];
#
#   // Required. IDs should be unique across ConferenceSolutions within one
#   // add-on, but this is not strictly enforced. It is up to the add-on developer
#   // to assign them uniquely, otherwise the wrong ConferenceSolution may be
#   // used when the add-on is triggered. While the developer may change the
#   // display name of an add-on, the ID should not be changed.
#   string id = 4 [(google.api.field_behavior) = REQUIRED];
#
#   // Required. The display name of the ConferenceSolution.
#   string name = 5 [(google.api.field_behavior) = REQUIRED];
#
#   // Required. The URL for the logo image of the ConferenceSolution.
#   string logo_url = 6 [(google.api.field_behavior) = REQUIRED];
# }
#
# // Common format for declaring a calendar add-on's triggers.
# message CalendarExtensionPoint {
#   // Required. The endpoint to execute when this extension point is
#   // activated.
#   string run_function = 1 [(google.api.field_behavior) = REQUIRED];
# }
