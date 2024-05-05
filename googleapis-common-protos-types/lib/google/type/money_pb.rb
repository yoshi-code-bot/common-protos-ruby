# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/money.proto

require 'google/protobuf'


descriptor_data = "\n\x17google/type/money.proto\x12\x0bgoogle.type\"<\n\x05Money\x12\x15\n\rcurrency_code\x18\x01 \x01(\t\x12\r\n\x05units\x18\x02 \x01(\x03\x12\r\n\x05nanos\x18\x03 \x01(\x05\x42`\n\x0f\x63om.google.typeB\nMoneyProtoP\x01Z6google.golang.org/genproto/googleapis/type/money;money\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Type
    Money = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Money").msgclass
  end
end

#### Source proto file: google/type/money.proto ####
#
# // Copyright 2021 Google LLC
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
# option go_package = "google.golang.org/genproto/googleapis/type/money;money";
# option java_multiple_files = true;
# option java_outer_classname = "MoneyProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents an amount of money with its currency type.
# message Money {
#   // The three-letter currency code defined in ISO 4217.
#   string currency_code = 1;
#
#   // The whole units of the amount.
#   // For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
#   int64 units = 2;
#
#   // Number of nano (10^-9) units of the amount.
#   // The value must be between -999,999,999 and +999,999,999 inclusive.
#   // If `units` is positive, `nanos` must be positive or zero.
#   // If `units` is zero, `nanos` can be positive, zero, or negative.
#   // If `units` is negative, `nanos` must be negative or zero.
#   // For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
#   int32 nanos = 3;
# }
