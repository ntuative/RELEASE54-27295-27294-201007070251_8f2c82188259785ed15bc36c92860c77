package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_420:String;
      
      private var var_1743:int;
      
      private var var_2024:String;
      
      private var var_1038:int;
      
      private var var_1220:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1220;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1220 = param1.readInteger();
         var_2024 = param1.readString();
         var_1743 = param1.readInteger();
         var_420 = param1.readString();
         var_1038 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2024;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function get petType() : int
      {
         return var_1038;
      }
      
      public function get level() : int
      {
         return var_1743;
      }
   }
}
