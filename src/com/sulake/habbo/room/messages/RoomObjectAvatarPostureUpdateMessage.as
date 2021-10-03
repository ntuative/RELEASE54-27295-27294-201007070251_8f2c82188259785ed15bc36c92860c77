package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2216:String;
      
      private var var_959:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2216 = param1;
         var_959 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2216;
      }
      
      public function get parameter() : String
      {
         return var_959;
      }
   }
}
