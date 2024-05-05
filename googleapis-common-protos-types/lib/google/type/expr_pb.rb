# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/expr.proto

require 'google/protobuf'


descriptor_data = "\n\x16google/type/expr.proto\x12\x0bgoogle.type\"P\n\x04\x45xpr\x12\x12\n\nexpression\x18\x01 \x01(\t\x12\r\n\x05title\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x10\n\x08location\x18\x04 \x01(\tBZ\n\x0f\x63om.google.typeB\tExprProtoP\x01Z4google.golang.org/genproto/googleapis/type/expr;expr\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Type
    Expr = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.Expr").msgclass
  end
end

#### Source proto file: google/type/expr.proto ####
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
# option go_package = "google.golang.org/genproto/googleapis/type/expr;expr";
# option java_multiple_files = true;
# option java_outer_classname = "ExprProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Represents a textual expression in the Common Expression Language (CEL)
# // syntax. CEL is a C-like expression language. The syntax and semantics of CEL
# // are documented at https://github.com/google/cel-spec.
# //
# // Example (Comparison):
# //
# //     title: "Summary size limit"
# //     description: "Determines if a summary is less than 100 chars"
# //     expression: "document.summary.size() < 100"
# //
# // Example (Equality):
# //
# //     title: "Requestor is owner"
# //     description: "Determines if requestor is the document owner"
# //     expression: "document.owner == request.auth.claims.email"
# //
# // Example (Logic):
# //
# //     title: "Public documents"
# //     description: "Determine whether the document should be publicly visible"
# //     expression: "document.type != 'private' && document.type != 'internal'"
# //
# // Example (Data Manipulation):
# //
# //     title: "Notification string"
# //     description: "Create a notification string with a timestamp."
# //     expression: "'New message received at ' + string(document.create_time)"
# //
# // The exact variables and functions that may be referenced within an expression
# // are determined by the service that evaluates it. See the service
# // documentation for additional information.
# message Expr {
#   // Textual representation of an expression in Common Expression Language
#   // syntax.
#   string expression = 1;
#
#   // Optional. Title for the expression, i.e. a short string describing
#   // its purpose. This can be used e.g. in UIs which allow to enter the
#   // expression.
#   string title = 2;
#
#   // Optional. Description of the expression. This is a longer text which
#   // describes the expression, e.g. when hovered over it in a UI.
#   string description = 3;
#
#   // Optional. String indicating the location of the expression for error
#   // reporting, e.g. a file name and a position in the file.
#   string location = 4;
# }
