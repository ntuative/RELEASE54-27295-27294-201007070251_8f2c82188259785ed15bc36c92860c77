package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1501:String;
      
      private var var_2368:int;
      
      private var var_2367:int;
      
      private var var_2366:int;
      
      private var var_2369:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2368 = param1.readInteger();
         var_2366 = param1.readInteger();
         var_2367 = param1.readInteger();
         var_2369 = param1.readString();
         var_1501 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1501;
      }
      
      public function get hour() : int
      {
         return var_2368;
      }
      
      public function get minute() : int
      {
         return var_2366;
      }
      
      public function get chatterName() : String
      {
         return var_2369;
      }
      
      public function get chatterId() : int
      {
         return var_2367;
      }
   }
}
