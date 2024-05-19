# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/logging/type/http_request.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n&google/logging/type/http_request.proto\x12\x13google.logging.type\x1a\x1egoogle/protobuf/duration.proto\"\xef\x02\n\x0bHttpRequest\x12\x16\n\x0erequest_method\x18\x01 \x01(\t\x12\x13\n\x0brequest_url\x18\x02 \x01(\t\x12\x14\n\x0crequest_size\x18\x03 \x01(\x03\x12\x0e\n\x06status\x18\x04 \x01(\x05\x12\x15\n\rresponse_size\x18\x05 \x01(\x03\x12\x12\n\nuser_agent\x18\x06 \x01(\t\x12\x11\n\tremote_ip\x18\x07 \x01(\t\x12\x11\n\tserver_ip\x18\r \x01(\t\x12\x0f\n\x07referer\x18\x08 \x01(\t\x12*\n\x07latency\x18\x0e \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x14\n\x0c\x63\x61\x63he_lookup\x18\x0b \x01(\x08\x12\x11\n\tcache_hit\x18\t \x01(\x08\x12*\n\"cache_validated_with_origin_server\x18\n \x01(\x08\x12\x18\n\x10\x63\x61\x63he_fill_bytes\x18\x0c \x01(\x03\x12\x10\n\x08protocol\x18\x0f \x01(\tB\xbe\x01\n\x17\x63om.google.logging.typeB\x10HttpRequestProtoP\x01Z8google.golang.org/genproto/googleapis/logging/type;ltype\xaa\x02\x19Google.Cloud.Logging.Type\xca\x02\x19Google\\Cloud\\Logging\\Type\xea\x02\x1cGoogle::Cloud::Logging::Typeb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Cloud
    module Logging
      module Type
        HttpRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.logging.type.HttpRequest").msgclass
      end
    end
  end
end

module Google
  module Logging
    module Type
      HttpRequest = ::Google::Cloud::Logging::Type::HttpRequest
    end
  end
end

#### Source proto file: google/logging/type/http_request.proto ####
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
# package google.logging.type;
#
# import "google/protobuf/duration.proto";
#
# option csharp_namespace = "Google.Cloud.Logging.Type";
# option go_package = "google.golang.org/genproto/googleapis/logging/type;ltype";
# option java_multiple_files = true;
# option java_outer_classname = "HttpRequestProto";
# option java_package = "com.google.logging.type";
# option php_namespace = "Google\\Cloud\\Logging\\Type";
# option ruby_package = "Google::Cloud::Logging::Type";
#
# // A common proto for logging HTTP requests. Only contains semantics
# // defined by the HTTP specification. Product-specific logging
# // information MUST be defined in a separate message.
# message HttpRequest {
#   // The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
#   string request_method = 1;
#
#   // The scheme (http, https), the host name, the path and the query
#   // portion of the URL that was requested.
#   // Example: `"http://example.com/some/info?color=red"`.
#   string request_url = 2;
#
#   // The size of the HTTP request message in bytes, including the request
#   // headers and the request body.
#   int64 request_size = 3;
#
#   // The response code indicating the status of response.
#   // Examples: 200, 404.
#   int32 status = 4;
#
#   // The size of the HTTP response message sent back to the client, in bytes,
#   // including the response headers and the response body.
#   int64 response_size = 5;
#
#   // The user agent sent by the client. Example:
#   // `"Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q312461; .NET
#   // CLR 1.0.3705)"`.
#   string user_agent = 6;
#
#   // The IP address (IPv4 or IPv6) of the client that issued the HTTP
#   // request. This field can include port information. Examples:
#   // `"192.168.1.1"`, `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
#   string remote_ip = 7;
#
#   // The IP address (IPv4 or IPv6) of the origin server that the request was
#   // sent to. This field can include port information. Examples:
#   // `"192.168.1.1"`, `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
#   string server_ip = 13;
#
#   // The referer URL of the request, as defined in
#   // [HTTP/1.1 Header Field
#   // Definitions](https://datatracker.ietf.org/doc/html/rfc2616#section-14.36).
#   string referer = 8;
#
#   // The request processing latency on the server, from the time the request was
#   // received until the response was sent.
#   google.protobuf.Duration latency = 14;
#
#   // Whether or not a cache lookup was attempted.
#   bool cache_lookup = 11;
#
#   // Whether or not an entity was served from cache
#   // (with or without validation).
#   bool cache_hit = 9;
#
#   // Whether or not the response was validated with the origin server before
#   // being served from cache. This field is only meaningful if `cache_hit` is
#   // True.
#   bool cache_validated_with_origin_server = 10;
#
#   // The number of HTTP response bytes inserted into cache. Set only when a
#   // cache fill was attempted.
#   int64 cache_fill_bytes = 12;
#
#   // Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
#   string protocol = 15;
# }
