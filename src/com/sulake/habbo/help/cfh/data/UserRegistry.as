package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1103:int = 80;
       
      
      private var var_528:Map;
      
      private var var_749:String = "";
      
      private var var_1284:Array;
      
      public function UserRegistry()
      {
         var_528 = new Map();
         var_1284 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_528.getValue(var_1284.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_749;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_528.getValue(param1) != null)
         {
            var_528.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_749);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_749 == "")
         {
            var_1284.push(param1);
         }
         var_528.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_528;
      }
      
      public function unregisterRoom() : void
      {
         var_749 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_528.length > const_1103)
         {
            _loc1_ = var_528.getKey(0);
            var_528.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_749 = param1;
         if(var_749 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
