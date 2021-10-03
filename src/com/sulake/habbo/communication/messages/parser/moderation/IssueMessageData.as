package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_149:int = 1;
      
      public static const const_1374:int = 3;
      
      public static const const_418:int = 2;
       
      
      private var var_2341:int;
      
      private var var_1973:int;
      
      private var var_2340:int;
      
      private var var_1765:int;
      
      private var var_37:int;
      
      private var var_425:int;
      
      private var var_1351:int;
      
      private var var_2036:int;
      
      private var var_1056:int;
      
      private var _roomResources:String;
      
      private var var_2291:int;
      
      private var var_2336:int;
      
      private var var_2339:String;
      
      private var var_2170:String;
      
      private var var_2338:int = 0;
      
      private var var_1247:String;
      
      private var _message:String;
      
      private var var_2225:int;
      
      private var var_2342:String;
      
      private var var_1380:int;
      
      private var var_749:String;
      
      private var var_2337:String;
      
      private var var_1520:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1056 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2338 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2336;
      }
      
      public function set roomName(param1:String) : void
      {
         var_749 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2291 = param1;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_749;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_37 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1973;
      }
      
      public function get priority() : int
      {
         return var_2341 + var_2338;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2036 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2170;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1520) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1380;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2336 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1351;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2339 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2291;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1765;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2337 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1247 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2036;
      }
      
      public function set priority(param1:int) : void
      {
         var_2341 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1973 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2339;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2340 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2170 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2225 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1247;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1351 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2340;
      }
      
      public function set flatId(param1:int) : void
      {
         var_425 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1380 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1520 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2225;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2342 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1520;
      }
      
      public function get reportedUserId() : int
      {
         return var_1056;
      }
      
      public function get flatId() : int
      {
         return var_425;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2337;
      }
      
      public function get reporterUserName() : String
      {
         return var_2342;
      }
   }
}
