package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var var_420:String;
      
      private var var_660:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_1392:String;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _id = param1.readInteger();
         var_420 = param1.readString();
         var_660 = param1.readString();
         var_1392 = param1.readString();
         if(var_660)
         {
            var_660 = var_660.toUpperCase();
         }
         return true;
      }
      
      public function get figure() : String
      {
         return var_420;
      }
      
      public function flush() : Boolean
      {
         _id = 0;
         var_420 = "";
         var_660 = "";
         var_1392 = "";
         return true;
      }
      
      public function get sex() : String
      {
         return var_660;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get customInfo() : String
      {
         return var_1392;
      }
   }
}
