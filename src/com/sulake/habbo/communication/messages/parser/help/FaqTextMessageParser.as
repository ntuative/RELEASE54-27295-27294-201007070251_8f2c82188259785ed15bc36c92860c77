package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1345:int;
      
      private var var_1344:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1345;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1345 = param1.readInteger();
         var_1344 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1344;
      }
      
      public function flush() : Boolean
      {
         var_1345 = -1;
         var_1344 = null;
         return true;
      }
   }
}
