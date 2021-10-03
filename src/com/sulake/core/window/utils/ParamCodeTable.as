package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["MarketPlaceOffersEvent"] = const_129;
         param1["bound_to_parent_rect"] = const_86;
         param1["child_window"] = const_962;
         param1["embedded_controller"] = const_342;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_46;
         param1["internal_event_handling"] = const_639;
         param1["mouse_dragging_target"] = const_232;
         param1["mouse_dragging_trigger"] = const_321;
         param1["mouse_scaling_target"] = const_279;
         param1["mouse_scaling_trigger"] = const_380;
         param1["horizontal_mouse_scaling_trigger"] = const_194;
         param1["vertical_mouse_scaling_trigger"] = const_231;
         param1["observe_parent_input_events"] = const_898;
         param1["optimize_region_to_layout_size"] = const_489;
         param1["parent_window"] = const_1060;
         param1["relative_horizontal_scale_center"] = const_161;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_300;
         param1["relative_horizontal_scale_strech"] = const_255;
         param1["relative_scale_center"] = const_965;
         param1["relative_scale_fixed"] = const_569;
         param1["relative_scale_move"] = const_879;
         param1["relative_scale_strech"] = const_932;
         param1["relative_vertical_scale_center"] = const_171;
         param1["relative_vertical_scale_fixed"] = const_121;
         param1["relative_vertical_scale_move"] = const_310;
         param1["relative_vertical_scale_strech"] = const_266;
         param1["on_resize_align_left"] = const_609;
         param1["on_resize_align_right"] = const_419;
         param1["on_resize_align_center"] = const_472;
         param1["on_resize_align_top"] = const_659;
         param1["on_resize_align_bottom"] = const_440;
         param1["on_resize_align_middle"] = const_497;
         param1["on_accommodate_align_left"] = const_927;
         param1["on_accommodate_align_right"] = const_414;
         param1["on_accommodate_align_center"] = const_676;
         param1["on_accommodate_align_top"] = const_1019;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_704;
         param1["route_input_events_to_parent"] = const_407;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1022;
         param1["scalable_with_mouse"] = const_970;
         param1["reflect_horizontal_resize_to_parent"] = const_400;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_275;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
