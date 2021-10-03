package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1606:Array;
      
      private var var_2127:int;
      
      private var var_2128:int;
      
      private var var_2131:int;
      
      private var var_2129:int;
      
      private var _dayOffsets:Array;
      
      private var var_2130:int;
      
      private var var_1605:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1606;
      }
      
      public function get furniTypeId() : int
      {
         return var_2128;
      }
      
      public function get historyLength() : int
      {
         return var_2129;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2131;
      }
      
      public function get offerCount() : int
      {
         return var_2130;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1605;
      }
      
      public function get averagePrice() : int
      {
         return var_2127;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2127 = param1.readInteger();
         var_2130 = param1.readInteger();
         var_2129 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1606 = [];
         var_1605 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1606.push(param1.readInteger());
            var_1605.push(param1.readInteger());
            _loc3_++;
         }
         var_2131 = param1.readInteger();
         var_2128 = param1.readInteger();
         return true;
      }
   }
}
