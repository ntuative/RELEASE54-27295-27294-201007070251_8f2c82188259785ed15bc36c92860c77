package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_223:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2123:Boolean = false;
      
      private var var_2124:int = 0;
      
      private var var_2122:int = 0;
      
      private var var_2126:int;
      
      private var var_2125:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_223,param6,param7);
         var_2125 = param1;
         var_2122 = param2;
         var_2124 = param3;
         var_2123 = param4;
         var_2126 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_2126;
      }
      
      public function get pastPeriods() : int
      {
         return var_2124;
      }
      
      public function get periodsLeft() : int
      {
         return var_2122;
      }
      
      public function get daysLeft() : int
      {
         return var_2125;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2123;
      }
   }
}
