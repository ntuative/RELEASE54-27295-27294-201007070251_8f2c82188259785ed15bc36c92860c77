package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomObjectEvent extends Event
   {
       
      
      private var var_1512:String = "";
      
      private var var_168:int = 0;
      
      public function RoomObjectEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_168 = param2;
         var_1512 = param3;
      }
      
      public function get objectType() : String
      {
         return var_1512;
      }
      
      public function get objectId() : int
      {
         return var_168;
      }
   }
}
