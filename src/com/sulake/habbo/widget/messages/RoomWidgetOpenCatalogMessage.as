package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1024:String = "RWOCM_CLUB_MAIN";
      
      public static const const_698:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2301:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_698);
         var_2301 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2301;
      }
   }
}
