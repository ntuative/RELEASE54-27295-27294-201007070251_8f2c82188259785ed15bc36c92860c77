package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1828:String;
      
      private var var_626:String;
      
      private var var_1563:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1563 = param1.readInteger();
         var_1828 = param1.readString();
         var_626 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_626;
      }
      
      public function get figureString() : String
      {
         return var_1828;
      }
      
      public function get slotId() : int
      {
         return var_1563;
      }
   }
}
