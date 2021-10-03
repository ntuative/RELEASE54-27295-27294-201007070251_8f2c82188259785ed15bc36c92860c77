package com.sulake.habbo.communication.messages.parser.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class BadgesParser implements IMessageParser
   {
       
      
      private var var_1500:Array;
      
      private var var_1499:Array;
      
      public function BadgesParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var_1500 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1500.push(param1.readString());
            _loc3_++;
         }
         var_1499 = new Array();
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.readInteger();
            _loc7_ = param1.readString();
            var_1499.push(_loc7_);
            _loc5_++;
         }
         return true;
      }
      
      public function getActiveBadgeIds() : Array
      {
         return var_1499;
      }
      
      public function getAllBadgeIds() : Array
      {
         return var_1500;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
