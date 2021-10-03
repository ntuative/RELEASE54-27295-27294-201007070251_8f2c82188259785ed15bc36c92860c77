package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1767:int;
      
      private var var_1232:PetData;
      
      private var var_1766:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1767;
      }
      
      public function get petData() : PetData
      {
         return var_1232;
      }
      
      public function flush() : Boolean
      {
         var_1232 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1766;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1767 = param1.readInteger();
         var_1766 = param1.readInteger();
         var_1232 = new PetData(param1);
         return true;
      }
   }
}
