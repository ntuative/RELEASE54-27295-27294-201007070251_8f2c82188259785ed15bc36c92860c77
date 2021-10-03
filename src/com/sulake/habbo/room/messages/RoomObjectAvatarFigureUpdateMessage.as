package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2193:String;
      
      private var var_420:String;
      
      private var var_626:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_420 = param1;
         var_626 = param2;
         var_2193 = param3;
      }
      
      public function get race() : String
      {
         return var_2193;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function get gender() : String
      {
         return var_626;
      }
   }
}
