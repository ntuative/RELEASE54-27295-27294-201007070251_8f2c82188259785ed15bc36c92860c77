package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2020:int;
      
      private var var_2386:String;
      
      private var var_2382:int;
      
      private var var_2385:int;
      
      private var var_750:Boolean;
      
      private var var_2232:Boolean;
      
      private var var_425:int;
      
      private var var_1307:String;
      
      private var var_2105:int;
      
      private var var_1380:int;
      
      private var _ownerName:String;
      
      private var var_749:String;
      
      private var var_2384:int;
      
      private var var_2383:RoomThumbnailData;
      
      private var var_2102:Boolean;
      
      private var var_691:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_691 = new Array();
         super();
         var_425 = param1.readInteger();
         var_750 = param1.readBoolean();
         var_749 = param1.readString();
         _ownerName = param1.readString();
         var_2105 = param1.readInteger();
         var_2020 = param1.readInteger();
         var_2384 = param1.readInteger();
         var_1307 = param1.readString();
         var_2382 = param1.readInteger();
         var_2102 = param1.readBoolean();
         var_2385 = param1.readInteger();
         var_1380 = param1.readInteger();
         var_2386 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_691.push(_loc4_);
            _loc3_++;
         }
         var_2383 = new RoomThumbnailData(param1);
         var_2232 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2384;
      }
      
      public function get roomName() : String
      {
         return var_749;
      }
      
      public function get userCount() : int
      {
         return var_2020;
      }
      
      public function get score() : int
      {
         return var_2385;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2386;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2102;
      }
      
      public function get tags() : Array
      {
         return var_691;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2232;
      }
      
      public function get event() : Boolean
      {
         return var_750;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_691 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1380;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2382;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2383;
      }
      
      public function get doorMode() : int
      {
         return var_2105;
      }
      
      public function get flatId() : int
      {
         return var_425;
      }
      
      public function get description() : String
      {
         return var_1307;
      }
   }
}
