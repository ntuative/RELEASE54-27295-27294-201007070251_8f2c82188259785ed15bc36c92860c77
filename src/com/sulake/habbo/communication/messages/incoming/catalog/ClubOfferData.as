package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1940:int;
      
      private var var_1446:int;
      
      private var var_1942:int;
      
      private var _offerId:int;
      
      private var var_1937:int;
      
      private var var_1936:int;
      
      private var var_1939:Boolean;
      
      private var var_1941:int;
      
      private var var_1938:Boolean;
      
      private var var_1298:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1298 = param1.readString();
         var_1446 = param1.readInteger();
         var_1938 = param1.readBoolean();
         var_1939 = param1.readBoolean();
         var_1942 = param1.readInteger();
         var_1941 = param1.readInteger();
         var_1937 = param1.readInteger();
         var_1940 = param1.readInteger();
         var_1936 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1937;
      }
      
      public function get month() : int
      {
         return var_1940;
      }
      
      public function get price() : int
      {
         return var_1446;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1942;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1941;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1938;
      }
      
      public function get day() : int
      {
         return var_1936;
      }
      
      public function get vip() : Boolean
      {
         return var_1939;
      }
      
      public function get productCode() : String
      {
         return var_1298;
      }
   }
}
