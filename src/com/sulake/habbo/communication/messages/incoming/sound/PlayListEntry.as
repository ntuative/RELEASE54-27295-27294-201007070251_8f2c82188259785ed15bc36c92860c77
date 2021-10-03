package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1899:int;
      
      private var var_2211:int = 0;
      
      private var var_2208:String;
      
      private var var_2209:int;
      
      private var var_2210:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1899 = param1;
         var_2209 = param2;
         var_2210 = param3;
         var_2208 = param4;
      }
      
      public function get length() : int
      {
         return var_2209;
      }
      
      public function get name() : String
      {
         return var_2210;
      }
      
      public function get creator() : String
      {
         return var_2208;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2211;
      }
      
      public function get id() : int
      {
         return var_1899;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2211 = param1;
      }
   }
}
