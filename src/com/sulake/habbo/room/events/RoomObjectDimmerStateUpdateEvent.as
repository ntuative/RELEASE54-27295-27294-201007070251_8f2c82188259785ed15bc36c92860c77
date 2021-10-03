package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_58:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1189:int;
      
      private var _color:uint;
      
      private var var_1190:int;
      
      private var var_1880:int;
      
      private var var_37:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_58,param1,param2,param8,param9);
         var_37 = param3;
         var_1880 = param4;
         var_1189 = param5;
         _color = param6;
         var_1190 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1190;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1189;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get presetId() : int
      {
         return var_1880;
      }
   }
}
