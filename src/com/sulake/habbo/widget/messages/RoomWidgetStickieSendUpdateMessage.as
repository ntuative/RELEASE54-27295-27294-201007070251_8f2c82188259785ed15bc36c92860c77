package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_434:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_576:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_704:String;
      
      private var var_168:int;
      
      private var var_223:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_168 = param2;
         var_223 = param3;
         var_704 = param4;
      }
      
      public function get objectId() : int
      {
         return var_168;
      }
      
      public function get text() : String
      {
         return var_223;
      }
      
      public function get colorHex() : String
      {
         return var_704;
      }
   }
}
