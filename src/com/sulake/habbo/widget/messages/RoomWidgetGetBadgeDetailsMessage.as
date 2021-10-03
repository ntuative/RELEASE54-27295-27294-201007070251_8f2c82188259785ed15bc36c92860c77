package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_546:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1164:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_546);
         var_1164 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1164;
      }
   }
}
