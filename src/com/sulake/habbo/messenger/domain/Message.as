package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_591:int = 2;
      
      public static const const_1007:int = 6;
      
      public static const const_706:int = 1;
      
      public static const const_532:int = 3;
      
      public static const const_889:int = 4;
      
      public static const const_702:int = 5;
       
      
      private var var_2220:String;
      
      private var var_1170:int;
      
      private var var_1806:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1170 = param2;
         var_1806 = param3;
         var_2220 = param4;
      }
      
      public function get time() : String
      {
         return var_2220;
      }
      
      public function get senderId() : int
      {
         return var_1170;
      }
      
      public function get messageText() : String
      {
         return var_1806;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
