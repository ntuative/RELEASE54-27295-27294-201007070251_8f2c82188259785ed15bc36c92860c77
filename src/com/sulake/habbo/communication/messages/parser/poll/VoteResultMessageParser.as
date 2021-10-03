package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1295:int;
      
      private var var_1165:String;
      
      private var var_818:Array;
      
      private var var_1078:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_818.slice();
      }
      
      public function flush() : Boolean
      {
         var_1165 = "";
         var_1078 = [];
         var_818 = [];
         var_1295 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1295;
      }
      
      public function get question() : String
      {
         return var_1165;
      }
      
      public function get choices() : Array
      {
         return var_1078.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1165 = param1.readString();
         var_1078 = [];
         var_818 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1078.push(param1.readString());
            var_818.push(param1.readInteger());
            _loc3_++;
         }
         var_1295 = param1.readInteger();
         return true;
      }
   }
}
