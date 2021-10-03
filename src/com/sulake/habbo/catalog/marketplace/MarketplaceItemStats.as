package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1606:Array;
      
      private var var_2127:int;
      
      private var var_2128:int;
      
      private var var_2129:int;
      
      private var var_2131:int;
      
      private var _dayOffsets:Array;
      
      private var var_2130:int;
      
      private var var_1605:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1606 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2128;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1605 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_2127 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2129;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2131;
      }
      
      public function get offerCount() : int
      {
         return var_2130;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2130 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1605;
      }
      
      public function get averagePrice() : int
      {
         return var_2127;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2131 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2129 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2128 = param1;
      }
   }
}
