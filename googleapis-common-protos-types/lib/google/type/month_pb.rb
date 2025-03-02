# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/month.proto

require 'google/protobuf'


descriptor_data = "\n\x17google/type/month.proto\x12\x0bgoogle.type*\xb0\x01\n\x05Month\x12\x15\n\x11MONTH_UNSPECIFIED\x10\x00\x12\x0b\n\x07JANUARY\x10\x01\x12\x0c\n\x08\x46\x45\x42RUARY\x10\x02\x12\t\n\x05MARCH\x10\x03\x12\t\n\x05\x41PRIL\x10\x04\x12\x07\n\x03MAY\x10\x05\x12\x08\n\x04JUNE\x10\x06\x12\x08\n\x04JULY\x10\x07\x12\n\n\x06\x41UGUST\x10\x08\x12\r\n\tSEPTEMBER\x10\t\x12\x0b\n\x07OCTOBER\x10\n\x12\x0c\n\x08NOVEMBER\x10\x0b\x12\x0c\n\x08\x44\x45\x43\x45MBER\x10\x0c\x42]\n\x0f\x63om.google.typeB\nMonthProtoP\x01Z6google.golang.org/genproto/googleapis/type/month;month\xa2\x02\x03GTPb\x06proto3"

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
    Month = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Month").enummodule
  end
end

#### Source proto file: google/type/month.proto ####
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
# option go_package = "google.golang.org/genproto/googleapis/type/month;month";
# option java_multiple_files = true;
# option java_outer_classname = "MonthProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents a month in the Gregorian calendar.
# enum Month {
#   // The unspecified month.
#   MONTH_UNSPECIFIED = 0;
#
#   // The month of January.
#   JANUARY = 1;
#
#   // The month of February.
#   FEBRUARY = 2;
#
#   // The month of March.
#   MARCH = 3;
#
#   // The month of April.
#   APRIL = 4;
#
#   // The month of May.
#   MAY = 5;
#
#   // The month of June.
#   JUNE = 6;
#
#   // The month of July.
#   JULY = 7;
#
#   // The month of August.
#   AUGUST = 8;
#
#   // The month of September.
#   SEPTEMBER = 9;
#
#   // The month of October.
#   OCTOBER = 10;
#
#   // The month of November.
#   NOVEMBER = 11;
#
#   // The month of December.
#   DECEMBER = 12;
# }
