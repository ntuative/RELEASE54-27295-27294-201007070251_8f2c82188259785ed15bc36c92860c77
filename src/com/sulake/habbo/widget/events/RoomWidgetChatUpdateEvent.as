package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_125:int = 1;
      
      public static const const_254:int = 4;
      
      public static const const_263:int = 3;
      
      public static const const_122:int = 0;
      
      public static const const_582:String = "RWCUE_EVENT_CHAT";
      
      public static const const_106:int = 2;
       
      
      private var var_1867:int;
      
      private var var_223:String = "";
      
      private var var_1870:BitmapData;
      
      private var _userName:String;
      
      private var var_1451:int = 0;
      
      private var var_1869:uint;
      
      private var _userId:int = 0;
      
      private var _roomCategory:int;
      
      private var var_1868:Number;
      
      private var var_1866:Number;
      
      private var _roomId:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Boolean = false, param14:Boolean = false)
      {
         super(param1,param13,param14);
         _userId = param2;
         var_223 = param3;
         var_1451 = param12;
         _userName = param4;
         var_1867 = param5;
         var_1868 = param6;
         var_1866 = param7;
         var_1870 = param8;
         var_1869 = param9;
         _roomId = param10;
         _roomCategory = param11;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get userImage() : BitmapData
      {
         return var_1870;
      }
      
      public function get text() : String
      {
         return var_223;
      }
      
      public function get userX() : Number
      {
         return var_1868;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get userCategory() : int
      {
         return var_1867;
      }
      
      public function get chatType() : int
      {
         return var_1451;
      }
      
      public function get userColor() : uint
      {
         return var_1869;
      }
      
      public function get userY() : Number
      {
         return var_1866;
      }
   }
}
