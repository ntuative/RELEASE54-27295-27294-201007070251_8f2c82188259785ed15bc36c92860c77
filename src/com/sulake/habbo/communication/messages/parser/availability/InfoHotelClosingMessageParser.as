package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosingMessageParser implements IMessageParser
   {
       
      
      private var var_1365:int;
      
      public function InfoHotelClosingMessageParser()
      {
         super();
      }
      
      public function get minutesUntilClosing() : int
      {
         return var_1365;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1365 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1365 = 0;
         return true;
      }
   }
}
