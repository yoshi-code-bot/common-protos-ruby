# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/slides/slides_addon_manifest.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/apps/script/type/extension_point_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/apps/script/type/slides/slides_addon_manifest.proto", :syntax => :proto3) do
    add_message "google.apps.script.type.slides.SlidesAddOnManifest" do
      optional :homepage_trigger, :message, 1, "google.apps.script.type.HomepageExtensionPoint"
      optional :on_file_scope_granted_trigger, :message, 2, "google.apps.script.type.slides.SlidesExtensionPoint"
    end
    add_message "google.apps.script.type.slides.SlidesExtensionPoint" do
      optional :run_function, :string, 1
    end
  end
end

module Google
  module Apps
    module Script
      module Type
        module Slides
          SlidesAddOnManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.slides.SlidesAddOnManifest").msgclass
          SlidesExtensionPoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.slides.SlidesExtensionPoint").msgclass
        end
      end
    end
  end
end