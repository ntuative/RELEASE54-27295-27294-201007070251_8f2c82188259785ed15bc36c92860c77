package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_555:String = "RWPOM_OPEN_PRESENT";
       
      
      private var var_168:int;
      
      public function RoomWidgetPresentOpenMessage(param1:String, param2:int)
      {
         super(param1);
         var_168 = param2;
      }
      
      public function get objectId() : int
      {
         return var_168;
      }
   }
}
