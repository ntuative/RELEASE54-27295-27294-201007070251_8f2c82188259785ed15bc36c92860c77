package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_749:String;
      
      private var var_1911:int;
      
      private var var_1640:Boolean;
      
      private var _roomId:int;
      
      private var var_1912:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1640 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_749 = param1.readString();
         var_1912 = param1.readInteger();
         var_1911 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1640;
      }
      
      public function get roomName() : String
      {
         return var_749;
      }
      
      public function get enterMinute() : int
      {
         return var_1911;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1912;
      }
   }
}
