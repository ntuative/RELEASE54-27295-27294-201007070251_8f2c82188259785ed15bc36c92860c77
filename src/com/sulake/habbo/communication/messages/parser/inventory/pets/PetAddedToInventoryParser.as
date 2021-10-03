package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_1079:PetData;
      
      private var var_1990:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1079 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_1990;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1079 = new PetData(param1);
         var_1990 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_1079;
      }
   }
}
