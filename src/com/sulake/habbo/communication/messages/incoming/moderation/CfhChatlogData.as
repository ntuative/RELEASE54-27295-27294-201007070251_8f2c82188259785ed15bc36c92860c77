package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2291:int;
      
      private var var_1056:int;
      
      private var var_2292:int;
      
      private var var_1675:int;
      
      private var var_121:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1675 = param1.readInteger();
         var_2292 = param1.readInteger();
         var_1056 = param1.readInteger();
         var_2291 = param1.readInteger();
         var_121 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1675);
      }
      
      public function get chatRecordId() : int
      {
         return var_2291;
      }
      
      public function get reportedUserId() : int
      {
         return var_1056;
      }
      
      public function get callerUserId() : int
      {
         return var_2292;
      }
      
      public function get callId() : int
      {
         return var_1675;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_121;
      }
   }
}
