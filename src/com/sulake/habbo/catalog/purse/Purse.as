package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2279:int = 0;
      
      private var var_1672:int = 0;
      
      private var var_1741:Boolean = false;
      
      private var var_2217:int = 0;
      
      private var var_2085:int = 0;
      
      private var var_1671:int = 0;
      
      private var var_2086:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1672;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1672 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1741 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2086 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1672 > 0 || var_1671 > 0;
      }
      
      public function get credits() : int
      {
         return var_2217;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1671;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1741;
      }
      
      public function get pastClubDays() : int
      {
         return var_2086;
      }
      
      public function get pastVipDays() : int
      {
         return var_2085;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2279 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2279;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1671 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2217 = param1;
      }
   }
}
