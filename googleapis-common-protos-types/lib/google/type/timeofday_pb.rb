# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/timeofday.proto

require 'google/protobuf'


descriptor_data = "\n\x1bgoogle/type/timeofday.proto\x12\x0bgoogle.type\"K\n\tTimeOfDay\x12\r\n\x05hours\x18\x01 \x01(\x05\x12\x0f\n\x07minutes\x18\x02 \x01(\x05\x12\x0f\n\x07seconds\x18\x03 \x01(\x05\x12\r\n\x05nanos\x18\x04 \x01(\x05\x42l\n\x0f\x63om.google.typeB\x0eTimeOfDayProtoP\x01Z>google.golang.org/genproto/googleapis/type/timeofday;timeofday\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

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
  module Type
    TimeOfDay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.TimeOfDay").msgclass
  end
end

#### Source proto file: google/type/timeofday.proto ####
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
# package google.type;
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/type/timeofday;timeofday";
# option java_multiple_files = true;
# option java_outer_classname = "TimeOfDayProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents a time of day. The date and time zone are either not significant
# // or are specified elsewhere. An API may choose to allow leap seconds. Related
# // types are [google.type.Date][google.type.Date] and
# // `google.protobuf.Timestamp`.
# message TimeOfDay {
#   // Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
#   // to allow the value "24:00:00" for scenarios like business closing time.
#   int32 hours = 1;
#
#   // Minutes of hour of day. Must be from 0 to 59.
#   int32 minutes = 2;
#
#   // Seconds of minutes of the time. Must normally be from 0 to 59. An API may
#   // allow the value 60 if it allows leap-seconds.
#   int32 seconds = 3;
#
#   // Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
#   int32 nanos = 4;
# }
