# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/phone_number.proto

require 'google/protobuf'


descriptor_data = "\n\x1egoogle/type/phone_number.proto\x12\x0bgoogle.type\"\xab\x01\n\x0bPhoneNumber\x12\x15\n\x0b\x65\x31\x36\x34_number\x18\x01 \x01(\tH\x00\x12\x38\n\nshort_code\x18\x02 \x01(\x0b\x32\".google.type.PhoneNumber.ShortCodeH\x00\x12\x11\n\textension\x18\x03 \x01(\t\x1a\x30\n\tShortCode\x12\x13\n\x0bregion_code\x18\x01 \x01(\t\x12\x0e\n\x06number\x18\x02 \x01(\tB\x06\n\x04kindBt\n\x0f\x63om.google.typeB\x10PhoneNumberProtoP\x01ZDgoogle.golang.org/genproto/googleapis/type/phone_number;phone_number\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Type
    PhoneNumber = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.PhoneNumber").msgclass
    PhoneNumber::ShortCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.PhoneNumber.ShortCode").msgclass
  end
end

#### Source proto file: google/type/phone_number.proto ####
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
# option go_package = "google.golang.org/genproto/googleapis/type/phone_number;phone_number";
# option java_multiple_files = true;
# option java_outer_classname = "PhoneNumberProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // An object representing a phone number, suitable as an API wire format.
# //
# // This representation:
# //
# //  - should not be used for locale-specific formatting of a phone number, such
# //    as "+1 (650) 253-0000 ext. 123"
# //
# //  - is not designed for efficient storage
# //  - may not be suitable for dialing - specialized libraries (see references)
# //    should be used to parse the number for that purpose
# //
# // To do something meaningful with this number, such as format it for various
# // use-cases, convert it to an `i18n.phonenumbers.PhoneNumber` object first.
# //
# // For instance, in Java this would be:
# //
# //    com.google.type.PhoneNumber wireProto =
# //        com.google.type.PhoneNumber.newBuilder().build();
# //    com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phoneNumber =
# //        PhoneNumberUtil.getInstance().parse(wireProto.getE164Number(), "ZZ");
# //    if (!wireProto.getExtension().isEmpty()) {
# //      phoneNumber.setExtension(wireProto.getExtension());
# //    }
# //
# //  Reference(s):
# //   - https://github.com/google/libphonenumber
# message PhoneNumber {
#   // An object representing a short code, which is a phone number that is
#   // typically much shorter than regular phone numbers and can be used to
#   // address messages in MMS and SMS systems, as well as for abbreviated dialing
#   // (e.g. "Text 611 to see how many minutes you have remaining on your plan.").
#   //
#   // Short codes are restricted to a region and are not internationally
#   // dialable, which means the same short code can exist in different regions,
#   // with different usage and pricing, even if those regions share the same
#   // country calling code (e.g. US and CA).
#   message ShortCode {
#     // Required. The BCP-47 region code of the location where calls to this
#     // short code can be made, such as "US" and "BB".
#     //
#     // Reference(s):
#     //  - http://www.unicode.org/reports/tr35/#unicode_region_subtag
#     string region_code = 1;
#
#     // Required. The short code digits, without a leading plus ('+') or country
#     // calling code, e.g. "611".
#     string number = 2;
#   }
#
#   // Required.  Either a regular number, or a short code.  New fields may be
#   // added to the oneof below in the future, so clients should ignore phone
#   // numbers for which none of the fields they coded against are set.
#   oneof kind {
#     // The phone number, represented as a leading plus sign ('+'), followed by a
#     // phone number that uses a relaxed ITU E.164 format consisting of the
#     // country calling code (1 to 3 digits) and the subscriber number, with no
#     // additional spaces or formatting, e.g.:
#     //  - correct: "+15552220123"
#     //  - incorrect: "+1 (555) 222-01234 x123".
#     //
#     // The ITU E.164 format limits the latter to 12 digits, but in practice not
#     // all countries respect that, so we relax that restriction here.
#     // National-only numbers are not allowed.
#     //
#     // References:
#     //  - https://www.itu.int/rec/T-REC-E.164-201011-I
#     //  - https://en.wikipedia.org/wiki/E.164.
#     //  - https://en.wikipedia.org/wiki/List_of_country_calling_codes
#     string e164_number = 1;
#
#     // A short code.
#     //
#     // Reference(s):
#     //  - https://en.wikipedia.org/wiki/Short_code
#     ShortCode short_code = 2;
#   }
#
#   // The phone number's extension. The extension is not standardized in ITU
#   // recommendations, except for being defined as a series of numbers with a
#   // maximum length of 40 digits. Other than digits, some other dialing
#   // characters such as ',' (indicating a wait) or '#' may be stored here.
#   //
#   // Note that no regions currently use extensions with short codes, so this
#   // field is normally only set in conjunction with an E.164 number. It is held
#   // separately from the E.164 number to allow for short code extensions in the
#   // future.
#   string extension = 3;
# }
