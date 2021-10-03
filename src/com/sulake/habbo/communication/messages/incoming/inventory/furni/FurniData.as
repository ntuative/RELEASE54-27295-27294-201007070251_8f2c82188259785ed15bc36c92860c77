package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1485:String;
      
      private var var_1093:String;
      
      private var var_2346:Boolean;
      
      private var var_1612:int;
      
      private var var_1903:int;
      
      private var var_2345:Boolean;
      
      private var var_1563:String = "";
      
      private var var_1900:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1410:int;
      
      private var var_1902:Boolean;
      
      private var var_1899:int = -1;
      
      private var var_1905:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1903 = param1;
         var_1093 = param2;
         _objId = param3;
         var_1410 = param4;
         _category = param5;
         var_1485 = param6;
         var_2346 = param7;
         var_1900 = param8;
         var_1902 = param9;
         var_2345 = param10;
         var_1905 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1563;
      }
      
      public function get extra() : int
      {
         return var_1612;
      }
      
      public function get classId() : int
      {
         return var_1410;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2345;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2346;
      }
      
      public function get stripId() : int
      {
         return var_1903;
      }
      
      public function get stuffData() : String
      {
         return var_1485;
      }
      
      public function get songId() : int
      {
         return var_1899;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1563 = param1;
         var_1612 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1093;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1905;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1902;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1900;
      }
   }
}
