package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var var_1819:String = "";
      
      private var var_1817:int = 0;
      
      private var _userName:String = "";
      
      private var var_284:Array;
      
      private var _type:String;
      
      private var _userId:int = 0;
      
      private var var_1818:int = 0;
      
      private var var_1006:int = 0;
      
      private var var_1164:int = 0;
      
      private var var_582:int = 0;
      
      public function InfostandUserData()
      {
         var_284 = [];
         super();
      }
      
      public function get groupId() : int
      {
         return var_1164;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1818 = param1;
      }
      
      public function isBot() : Boolean
      {
         return type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get userRoomId() : int
      {
         return var_1818;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set userId(param1:int) : void
      {
         _userId = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1817;
      }
      
      public function get petRespectLeft() : int
      {
         return var_582;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1819;
      }
      
      public function set badges(param1:Array) : void
      {
         var_284 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_1006 = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_1006;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_582 = param1;
      }
      
      public function set userName(param1:String) : void
      {
         _userName = param1;
      }
      
      public function get badges() : Array
      {
         return var_284.slice();
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userId = param1.webID;
         userName = param1.name;
         badges = param1.badges;
         groupId = param1.groupId;
         groupBadgeId = param1.groupBadgeId;
         respectLeft = param1.respectLeft;
         carryItem = param1.carryItem;
         userRoomId = param1.userRoomId;
         type = param1.type;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1164 = param1;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1819 = param1;
      }
   }
}
