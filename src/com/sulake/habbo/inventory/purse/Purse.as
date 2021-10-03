package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1740:Boolean = false;
      
      private var var_1742:int = 0;
      
      private var var_1672:int = 0;
      
      private var var_1739:int = 0;
      
      private var var_1741:Boolean = false;
      
      private var var_1657:int = 0;
      
      private var var_1671:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1657 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1742;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1740;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1740 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1741;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1742 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1672 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1657;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1741 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1739 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1672;
      }
      
      public function get pixelBalance() : int
      {
         return var_1739;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1671 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1671;
      }
   }
}
