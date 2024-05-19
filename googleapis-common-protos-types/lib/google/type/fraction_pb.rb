# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/fraction.proto

require 'google/protobuf'


descriptor_data = "\n\x1agoogle/type/fraction.proto\x12\x0bgoogle.type\"2\n\x08\x46raction\x12\x11\n\tnumerator\x18\x01 \x01(\x03\x12\x13\n\x0b\x64\x65nominator\x18\x02 \x01(\x03\x42\x66\n\x0f\x63om.google.typeB\rFractionProtoP\x01Z<google.golang.org/genproto/googleapis/type/fraction;fraction\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Type
    Fraction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Fraction").msgclass
  end
end

#### Source proto file: google/type/fraction.proto ####
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
# package google.type;
#
# option go_package = "google.golang.org/genproto/googleapis/type/fraction;fraction";
# option java_multiple_files = true;
# option java_outer_classname = "FractionProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents a fraction in terms of a numerator divided by a denominator.
# message Fraction {
#   // The numerator in the fraction, e.g. 2 in 2/3.
#   int64 numerator = 1;
#
#   // The value by which the numerator is divided, e.g. 3 in 2/3. Must be
#   // positive.
#   int64 denominator = 2;
# }
