package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_687;
         param1["bitmap"] = const_618;
         param1["border"] = const_623;
         param1["border_notify"] = const_1436;
         param1["button"] = const_386;
         param1["button_thick"] = const_666;
         param1["button_icon"] = const_1281;
         param1["button_group_left"] = const_680;
         param1["button_group_center"] = const_663;
         param1["button_group_right"] = const_747;
         param1["canvas"] = const_705;
         param1["checkbox"] = const_679;
         param1["closebutton"] = const_920;
         param1["container"] = const_320;
         param1["container_button"] = const_739;
         param1["display_object_wrapper"] = const_727;
         param1["dropmenu"] = const_392;
         param1["dropmenu_item"] = const_375;
         param1["frame"] = const_302;
         param1["frame_notify"] = const_1419;
         param1["header"] = const_722;
         param1["icon"] = const_916;
         param1["itemgrid"] = const_990;
         param1["itemgrid_horizontal"] = const_466;
         param1["itemgrid_vertical"] = const_696;
         param1["itemlist"] = const_858;
         param1["itemlist_horizontal"] = const_308;
         param1["itemlist_vertical"] = const_332;
         param1["maximizebox"] = const_1244;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1439;
         param1["submenu"] = const_857;
         param1["minimizebox"] = const_1292;
         param1["notify"] = const_1206;
         param1["MarketPlaceOffersEvent"] = const_530;
         param1["password"] = const_605;
         param1["radiobutton"] = const_755;
         param1["region"] = const_412;
         param1["restorebox"] = const_1322;
         param1["scaler"] = const_586;
         param1["scaler_horizontal"] = const_1235;
         param1["scaler_vertical"] = const_1293;
         param1["scrollbar_horizontal"] = const_450;
         param1["scrollbar_vertical"] = const_649;
         param1["scrollbar_slider_button_up"] = const_891;
         param1["scrollbar_slider_button_down"] = const_1008;
         param1["scrollbar_slider_button_left"] = const_841;
         param1["scrollbar_slider_button_right"] = const_1029;
         param1["scrollbar_slider_bar_horizontal"] = const_987;
         param1["scrollbar_slider_bar_vertical"] = const_1012;
         param1["scrollbar_slider_track_horizontal"] = const_872;
         param1["scrollbar_slider_track_vertical"] = const_934;
         param1["scrollable_itemlist"] = const_1270;
         param1["scrollable_itemlist_vertical"] = const_511;
         param1["scrollable_itemlist_horizontal"] = const_849;
         param1["selector"] = const_590;
         param1["selector_list"] = const_630;
         param1["submenu"] = const_857;
         param1["tab_button"] = const_717;
         param1["tab_container_button"] = const_959;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_984;
         param1["tab_selector"] = const_767;
         param1["text"] = const_633;
         param1["input"] = const_715;
         param1["toolbar"] = const_1261;
         param1["tooltip"] = const_357;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
