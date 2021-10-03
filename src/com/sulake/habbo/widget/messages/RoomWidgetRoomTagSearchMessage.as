package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_568:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1835:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_568);
         var_1835 = param1;
      }
      
      public function get tag() : String
      {
         return var_1835;
      }
   }
}
