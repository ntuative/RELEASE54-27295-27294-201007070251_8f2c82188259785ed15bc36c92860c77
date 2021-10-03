package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1093:String;
      
      private var var_1728:int;
      
      private var var_2134:int;
      
      private var var_1612:int;
      
      private var var_2138:int;
      
      private var _category:int;
      
      private var var_2528:int;
      
      private var var_2140:int;
      
      private var var_2135:int;
      
      private var var_2139:int;
      
      private var var_2137:int;
      
      private var var_2136:Boolean;
      
      private var var_1485:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1728 = param1;
         var_1093 = param2;
         var_2134 = param3;
         var_2139 = param4;
         _category = param5;
         var_1485 = param6;
         var_1612 = param7;
         var_2135 = param8;
         var_2140 = param9;
         var_2137 = param10;
         var_2138 = param11;
         var_2136 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2139;
      }
      
      public function get extra() : int
      {
         return var_1612;
      }
      
      public function get stuffData() : String
      {
         return var_1485;
      }
      
      public function get groupable() : Boolean
      {
         return var_2136;
      }
      
      public function get creationMonth() : int
      {
         return var_2137;
      }
      
      public function get roomItemID() : int
      {
         return var_2134;
      }
      
      public function get itemType() : String
      {
         return var_1093;
      }
      
      public function get itemID() : int
      {
         return var_1728;
      }
      
      public function get songID() : int
      {
         return var_1612;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2135;
      }
      
      public function get creationYear() : int
      {
         return var_2138;
      }
      
      public function get creationDay() : int
      {
         return var_2140;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
