package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_211:String = "RWUIUE_PEER";
      
      public static const const_195:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1234:String = "BOT";
      
      public static const const_925:int = 2;
      
      public static const const_1420:int = 0;
      
      public static const const_1021:int = 3;
       
      
      private var var_420:String = "";
      
      private var var_1379:String = "";
      
      private var var_2056:Boolean = false;
      
      private var var_1860:int = 0;
      
      private var var_1818:int = 0;
      
      private var var_2062:Boolean = false;
      
      private var var_1381:String = "";
      
      private var var_2060:Boolean = false;
      
      private var var_1006:int = 0;
      
      private var var_2063:Boolean = true;
      
      private var var_1164:int = 0;
      
      private var var_2059:Boolean = false;
      
      private var var_1335:Boolean = false;
      
      private var var_2057:Boolean = false;
      
      private var var_1817:int = 0;
      
      private var var_2061:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_284:Array;
      
      private var var_1332:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1858:int = 0;
      
      private var var_2058:Boolean = false;
      
      private var var_2064:int = 0;
      
      private var var_1819:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_284 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1818;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1818 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2056;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2063;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2063 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2060 = param1;
      }
      
      public function get motto() : String
      {
         return var_1379;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2059 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1335;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1379 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2058;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1819;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1335 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2061;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function get badges() : Array
      {
         return var_284;
      }
      
      public function get amIController() : Boolean
      {
         return var_2062;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2062 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2058 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2064 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1819 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1381 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2060;
      }
      
      public function set figure(param1:String) : void
      {
         var_420 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1817;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1332;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2059;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_1006 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2064;
      }
      
      public function get realName() : String
      {
         return var_1381;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function set webID(param1:int) : void
      {
         var_1858 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_284 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2057 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2061 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_1006;
      }
      
      public function get webID() : int
      {
         return var_1858;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1164 = param1;
      }
      
      public function get xp() : int
      {
         return var_1860;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2056 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1164;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2057;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1332 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1860 = param1;
      }
   }
}
