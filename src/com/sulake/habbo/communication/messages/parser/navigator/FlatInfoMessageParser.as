package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_255:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_255 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_255;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_255 = new RoomSettingsFlatInfo();
         var_255.allowFurniMoving = param1.readInteger() == 1;
         var_255.doorMode = param1.readInteger();
         var_255.id = param1.readInteger();
         var_255.ownerName = param1.readString();
         var_255.type = param1.readString();
         var_255.name = param1.readString();
         var_255.description = param1.readString();
         var_255.showOwnerName = param1.readInteger() == 1;
         var_255.allowTrading = param1.readInteger() == 1;
         var_255.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
