package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2419:Boolean;
      
      protected var var_1612:Number;
      
      protected var var_2418:Boolean;
      
      protected var _type:int;
      
      protected var var_2420:Boolean;
      
      protected var var_1899:int;
      
      protected var var_2421:Boolean;
      
      protected var var_1485:String;
      
      protected var var_2138:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1563:String;
      
      protected var var_2136:Boolean;
      
      protected var _category:int;
      
      protected var var_2137:int;
      
      protected var var_2422:int;
      
      protected var var_2140:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2136 = param5;
         var_2421 = param6;
         var_2419 = param7;
         var_2418 = param8;
         var_1485 = param9;
         var_1612 = param10;
         var_2422 = param11;
         var_2140 = param12;
         var_2137 = param13;
         var_2138 = param14;
         var_1563 = param15;
         var_1899 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2420;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1612;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2420 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1899;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2418;
      }
      
      public function get slotId() : String
      {
         return var_1563;
      }
      
      public function get expires() : int
      {
         return var_2422;
      }
      
      public function get creationYear() : int
      {
         return var_2138;
      }
      
      public function get creationDay() : int
      {
         return var_2140;
      }
      
      public function get stuffData() : String
      {
         return var_1485;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2421;
      }
      
      public function get groupable() : Boolean
      {
         return var_2136;
      }
      
      public function get creationMonth() : int
      {
         return var_2137;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2419;
      }
   }
}
