package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1586:int = 9;
      
      public static const const_1654:int = 4;
      
      public static const const_1529:int = 1;
      
      public static const const_1280:int = 10;
      
      public static const const_1631:int = 2;
      
      public static const const_1429:int = 7;
      
      public static const const_1267:int = 11;
      
      public static const const_1607:int = 3;
      
      public static const const_1333:int = 8;
      
      public static const const_1294:int = 5;
      
      public static const const_1558:int = 6;
      
      public static const const_1236:int = 12;
       
      
      private var var_1898:String;
      
      private var _roomId:int;
      
      private var var_1224:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1898;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1224 = param1.readInteger();
         var_1898 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1224;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
