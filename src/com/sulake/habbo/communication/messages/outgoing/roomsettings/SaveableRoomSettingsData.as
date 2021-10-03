package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var var_2233:Boolean;
      
      private var var_2231:Boolean;
      
      private var var_2229:Array;
      
      private var var_2232:Boolean;
      
      private var var_1307:String;
      
      private var var_2234:int;
      
      private var var_2230:Boolean;
      
      private var var_2105:int;
      
      private var var_1380:int;
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var _password:String;
      
      private var var_691:Array;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2231 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2234;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2234 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2230 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_691;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2232;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2229 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_691 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2233;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2231;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1380;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2232 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2230;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2229;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2105 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2233 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_2105;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1380 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1307 = param1;
      }
      
      public function get description() : String
      {
         return var_1307;
      }
   }
}
