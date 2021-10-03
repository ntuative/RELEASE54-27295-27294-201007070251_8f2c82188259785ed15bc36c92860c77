package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2353:int;
      
      private var var_424:Boolean;
      
      private var var_2352:Boolean;
      
      private var var_993:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2352 = param1.readBoolean();
         if(var_2352)
         {
            var_2353 = param1.readInteger();
            var_424 = param1.readBoolean();
         }
         else
         {
            var_993 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_993 != null)
         {
            var_993.dispose();
            var_993 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2353;
      }
      
      public function get owner() : Boolean
      {
         return var_424;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2352;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_993;
      }
   }
}
