package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_122:int = 0;
      
      public static const const_125:int = 1;
      
      public static const const_106:int = 2;
      
      public static const const_622:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1451:int = 0;
      
      private var var_1934:String = "";
      
      private var var_223:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_223 = param2;
         var_1451 = param3;
         var_1934 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1934;
      }
      
      public function get chatType() : int
      {
         return var_1451;
      }
      
      public function get text() : String
      {
         return var_223;
      }
   }
}
