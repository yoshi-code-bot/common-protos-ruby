# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/gmail/gmail_addon_manifest.proto

require 'google/protobuf'

require 'google/apps/script/type/addon_widget_set_pb'
require 'google/apps/script/type/extension_point_pb'


descriptor_data = "\n8google/apps/script/type/gmail/gmail_addon_manifest.proto\x12\x1dgoogle.apps.script.type.gmail\x1a.google/apps/script/type/addon_widget_set.proto\x1a-google/apps/script/type/extension_point.proto\"\xe7\x02\n\x12GmailAddOnManifest\x12I\n\x10homepage_trigger\x18\x0e \x01(\x0b\x32/.google.apps.script.type.HomepageExtensionPoint\x12M\n\x13\x63ontextual_triggers\x18\x03 \x03(\x0b\x32\x30.google.apps.script.type.gmail.ContextualTrigger\x12I\n\x11universal_actions\x18\x04 \x03(\x0b\x32..google.apps.script.type.gmail.UniversalAction\x12\x46\n\x0f\x63ompose_trigger\x18\x0c \x01(\x0b\x32-.google.apps.script.type.gmail.ComposeTrigger\x12$\n\x1c\x61uthorization_check_function\x18\x07 \x01(\t\"[\n\x0fUniversalAction\x12\x0c\n\x04text\x18\x01 \x01(\t\x12\x13\n\topen_link\x18\x02 \x01(\tH\x00\x12\x16\n\x0crun_function\x18\x03 \x01(\tH\x00\x42\r\n\x0b\x61\x63tion_type\"\xdb\x01\n\x0e\x43omposeTrigger\x12@\n\x07\x61\x63tions\x18\x05 \x03(\x0b\x32/.google.apps.script.type.MenuItemExtensionPoint\x12O\n\x0c\x64raft_access\x18\x04 \x01(\x0e\x32\x39.google.apps.script.type.gmail.ComposeTrigger.DraftAccess\"6\n\x0b\x44raftAccess\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\x0c\n\x08METADATA\x10\x02\"\x89\x01\n\x11\x43ontextualTrigger\x12L\n\runconditional\x18\x01 \x01(\x0b\x32\x33.google.apps.script.type.gmail.UnconditionalTriggerH\x00\x12\x1b\n\x13on_trigger_function\x18\x04 \x01(\tB\t\n\x07trigger\"\x16\n\x14UnconditionalTriggerB\xe0\x01\n!com.google.apps.script.type.gmailB\x17GmailAddOnManifestProtoP\x01Z<google.golang.org/genproto/googleapis/apps/script/type/gmail\xaa\x02\x1dGoogle.Apps.Script.Type.Gmail\xca\x02\x1dGoogle\\Apps\\Script\\Type\\Gmail\xea\x02!Google::Apps::Script::Type::Gmailb\x06proto3"

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
    ["google.apps.script.type.HomepageExtensionPoint", "google/apps/script/type/extension_point.proto"],
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
  module Apps
    module Script
      module Type
        module Gmail
          GmailAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.GmailAddOnManifest").msgclass
          UniversalAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.UniversalAction").msgclass
          ComposeTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.ComposeTrigger").msgclass
          ComposeTrigger::DraftAccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.ComposeTrigger.DraftAccess").enummodule
          ContextualTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.ContextualTrigger").msgclass
          UnconditionalTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.gmail.UnconditionalTrigger").msgclass
        end
      end
    end
  end
end

#### Source proto file: google/apps/script/type/gmail/gmail_addon_manifest.proto ####
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
# package google.apps.script.type.gmail;
#
# import "google/apps/script/type/addon_widget_set.proto";
# import "google/apps/script/type/extension_point.proto";
#
# option csharp_namespace = "Google.Apps.Script.Type.Gmail";
# option go_package = "google.golang.org/genproto/googleapis/apps/script/type/gmail";
# option java_multiple_files = true;
# option java_outer_classname = "GmailAddOnManifestProto";
# option java_package = "com.google.apps.script.type.gmail";
# option php_namespace = "Google\\Apps\\Script\\Type\\Gmail";
# option ruby_package = "Google::Apps::Script::Type::Gmail";
#
# // Properties customizing the appearance and execution of a Gmail add-on.
# message GmailAddOnManifest {
#   // Defines an endpoint that will be executed in contexts that don't
#   // match a declared contextual trigger. Any cards generated by this function
#   // will always be available to the user, but may be eclipsed by contextual
#   // content when this add-on declares more targeted triggers.
#   //
#   // If present, this overrides the configuration from
#   // `addOns.common.homepageTrigger`.
#   google.apps.script.type.HomepageExtensionPoint homepage_trigger = 14;
#
#   // Defines the set of conditions that trigger the add-on.
#   repeated ContextualTrigger contextual_triggers = 3;
#
#   // Defines set of [universal
#   // actions](/gmail/add-ons/how-tos/universal-actions) for the add-on. The user
#   // triggers universal actions from the add-on toolbar menu.
#   repeated UniversalAction universal_actions = 4;
#
#   // Defines the compose time trigger for a compose time add-on. This is the
#   // trigger that causes an add-on to take action when the user is composing an
#   // email.
#   // All compose time addons are required to have the
#   // gmail.addons.current.action.compose scope even though it might not edit the
#   // draft.
#   ComposeTrigger compose_trigger = 12;
#
#   // The name of an endpoint that verifies that the add-on has
#   // all the required third-party authorizations, by probing the third-party
#   // APIs. If the probe fails, the function should throw an exception to
#   // initiate the authorization flow. This function is called before each
#   // invocation of the add-on, in order to ensure a smooth user experience.
#   string authorization_check_function = 7;
# }
#
# // An action that is always available in the add-on toolbar menu regardless of
# // message context.
# message UniversalAction {
#   // Required. User-visible text describing the action, for example, "Add a new
#   // contact."
#   string text = 1;
#
#   // The type of the action determines the behavior of Gmail when the user
#   // invokes the action.
#   oneof action_type {
#     // A link that is opened by Gmail when the user triggers the action.
#     string open_link = 2;
#
#     // An endpoint that is called when the user triggers the
#     // action. See the [universal actions
#     // guide](/gmail/add-ons/how-tos/universal-actions) for details.
#     string run_function = 3;
#   }
# }
#
# // A trigger that activates when user is composing an email.
# message ComposeTrigger {
#   // An enum defining the level of data access this compose trigger requires.
#   enum DraftAccess {
#     // Default value when nothing is set for DraftAccess.
#     UNSPECIFIED = 0;
#
#     // NONE means compose trigger won't be able to access any data of the draft
#     // when a compose addon is triggered.
#     NONE = 1;
#
#     // METADATA gives compose trigger the permission to access the metadata of
#     // the draft when a compose addon is triggered. This includes the audience
#     // list (To/cc list) of a draft message.
#     METADATA = 2;
#   }
#
#   // Defines the set of actions for compose time add-on. These are actions
#   // that user can trigger on a compose time addon.
#   repeated google.apps.script.type.MenuItemExtensionPoint actions = 5;
#
#   // Define the level of data access when a compose time addon is triggered.
#   DraftAccess draft_access = 4;
# }
#
# // Defines a trigger that fires when the open email meets a specific criteria.
# // When the trigger fires, it executes a specific endpoint, usually
# // in order to create new cards and update the UI.
# message ContextualTrigger {
#   // The type of trigger determines the conditions Gmail uses to show the
#   // add-on.
#   oneof trigger {
#     // UnconditionalTriggers are executed when any mail message is opened.
#     UnconditionalTrigger unconditional = 1;
#   }
#
#   // Required. The name of the endpoint to call when a message matches the
#   // trigger.
#   string on_trigger_function = 4;
# }
#
# // A trigger that fires when any email message is opened.
# message UnconditionalTrigger {}
