package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_374:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_324:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_871:int;
      
      private var var_290:Boolean;
      
      private var var_2265:Boolean;
      
      private var var_1637:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_871 = param2;
         var_2265 = param3;
         var_290 = param4;
         var_1637 = param5;
      }
      
      public function get position() : int
      {
         return var_871;
      }
      
      public function get isActive() : Boolean
      {
         return var_290;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1637;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2265;
      }
   }
}
