package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1697:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1508:String = "ROE_MOUSE_ENTER";
      
      public static const const_441:String = "ROE_MOUSE_MOVE";
      
      public static const const_1645:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_236:String = "ROE_MOUSE_CLICK";
      
      public static const const_399:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1802:Boolean;
      
      private var var_1803:Boolean;
      
      private var var_1804:Boolean;
      
      private var var_1805:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1804 = param4;
         var_1805 = param5;
         var_1802 = param6;
         var_1803 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1803;
      }
      
      public function get altKey() : Boolean
      {
         return var_1804;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1805;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1802;
      }
   }
}
