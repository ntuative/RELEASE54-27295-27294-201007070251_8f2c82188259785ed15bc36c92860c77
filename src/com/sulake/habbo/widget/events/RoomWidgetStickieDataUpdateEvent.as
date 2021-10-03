package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_542:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_223:String;
      
      private var var_704:String;
      
      private var var_1512:String;
      
      private var var_168:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_168 = param2;
         var_1512 = param3;
         var_223 = param4;
         var_704 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1512;
      }
      
      public function get colorHex() : String
      {
         return var_704;
      }
      
      public function get text() : String
      {
         return var_223;
      }
      
      public function get objectId() : int
      {
         return var_168;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
