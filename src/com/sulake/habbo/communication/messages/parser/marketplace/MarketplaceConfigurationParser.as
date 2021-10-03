package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2145:int;
      
      private var var_1719:int;
      
      private var var_2146:int;
      
      private var var_2144:int;
      
      private var var_2143:int;
      
      private var var_1718:int;
      
      private var var_1981:int;
      
      private var var_1287:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2145;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1719;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1981;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2144;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2143;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1718;
      }
      
      public function get commission() : int
      {
         return var_2146;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1287 = param1.readBoolean();
         var_2146 = param1.readInteger();
         var_1719 = param1.readInteger();
         var_1718 = param1.readInteger();
         var_2144 = param1.readInteger();
         var_2145 = param1.readInteger();
         var_2143 = param1.readInteger();
         var_1981 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1287;
      }
   }
}
