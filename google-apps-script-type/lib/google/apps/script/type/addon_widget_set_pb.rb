# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/apps/script/type/addon_widget_set.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/apps/script/type/addon_widget_set.proto", :syntax => :proto3) do
    add_message "google.apps.script.type.AddOnWidgetSet" do
      repeated :used_widgets, :enum, 1, "google.apps.script.type.AddOnWidgetSet.WidgetType"
    end
    add_enum "google.apps.script.type.AddOnWidgetSet.WidgetType" do
      value :WIDGET_TYPE_UNSPECIFIED, 0
      value :DATE_PICKER, 1
      value :STYLED_BUTTONS, 2
      value :PERSISTENT_FORMS, 3
      value :FIXED_FOOTER, 4
      value :UPDATE_SUBJECT_AND_RECIPIENTS, 5
      value :GRID_WIDGET, 6
      value :ADDON_COMPOSE_UI_ACTION, 7
    end
  end
end

module Google
  module Apps
    module Script
      module Type
        AddOnWidgetSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.AddOnWidgetSet").msgclass
        AddOnWidgetSet::WidgetType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.apps.script.type.AddOnWidgetSet.WidgetType").enummodule
      end
    end
  end
end