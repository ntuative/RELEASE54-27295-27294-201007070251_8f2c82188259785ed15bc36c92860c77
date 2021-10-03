package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1903:int;
      
      private var var_1900:Boolean;
      
      private var var_1899:int;
      
      private var var_1485:String;
      
      private var var_1904:Boolean = false;
      
      private var var_1905:int;
      
      private var var_482:int;
      
      private var var_1093:String;
      
      private var var_1563:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1410:int;
      
      private var var_1902:Boolean;
      
      private var var_1901:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1903 = param1;
         var_1093 = param2;
         _objId = param3;
         var_1410 = param4;
         var_1485 = param5;
         var_1900 = param6;
         var_1902 = param7;
         var_1905 = param8;
         var_1563 = param9;
         var_1899 = param10;
         var_482 = -1;
      }
      
      public function get songId() : int
      {
         return var_1899;
      }
      
      public function get iconCallbackId() : int
      {
         return var_482;
      }
      
      public function get expiryTime() : int
      {
         return var_1905;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1904 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_482 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1902;
      }
      
      public function get slotId() : String
      {
         return var_1563;
      }
      
      public function get classId() : int
      {
         return var_1410;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1900;
      }
      
      public function get stuffData() : String
      {
         return var_1485;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1903;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1904;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1901;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1093;
      }
   }
}
