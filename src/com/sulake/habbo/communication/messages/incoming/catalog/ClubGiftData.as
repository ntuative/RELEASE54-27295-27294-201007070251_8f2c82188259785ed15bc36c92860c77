package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1758:Boolean;
      
      private var var_1757:int;
      
      private var _offerId:int;
      
      private var var_1759:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1758 = param1.readBoolean();
         var_1757 = param1.readInteger();
         var_1759 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1759;
      }
      
      public function get isVip() : Boolean
      {
         return var_1758;
      }
      
      public function get daysRequired() : int
      {
         return var_1757;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
