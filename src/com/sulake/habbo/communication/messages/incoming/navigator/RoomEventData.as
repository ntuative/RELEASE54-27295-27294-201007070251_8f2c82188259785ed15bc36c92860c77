package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2010:String;
      
      private var var_425:int;
      
      private var var_2297:String;
      
      private var var_2294:String;
      
      private var var_2293:int;
      
      private var var_2296:String;
      
      private var var_2295:int;
      
      private var var_691:Array;
      
      private var var_1047:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_691 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1047 = false;
            return;
         }
         this.var_1047 = true;
         var_2293 = int(_loc2_);
         var_2297 = param1.readString();
         var_425 = int(param1.readString());
         var_2295 = param1.readInteger();
         var_2010 = param1.readString();
         var_2294 = param1.readString();
         var_2296 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_691.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2295;
      }
      
      public function get eventName() : String
      {
         return var_2010;
      }
      
      public function get eventDescription() : String
      {
         return var_2294;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2297;
      }
      
      public function get tags() : Array
      {
         return var_691;
      }
      
      public function get creationTime() : String
      {
         return var_2296;
      }
      
      public function get exists() : Boolean
      {
         return var_1047;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2293;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_425;
      }
   }
}
