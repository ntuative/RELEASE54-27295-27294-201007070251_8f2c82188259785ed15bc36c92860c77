package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_2170:String;
      
      private var var_2171:int;
      
      private var var_2036:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2036 = param1.readInteger();
         var_2171 = param1.readInteger();
         var_2170 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_2036;
      }
      
      public function get pickerUserId() : int
      {
         return var_2171;
      }
      
      public function get pickerUserName() : String
      {
         return var_2170;
      }
   }
}
