package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2240:Number;
      
      private var var_663:Number = 0;
      
      private var var_2241:Number;
      
      private var var_662:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2240 = param1;
         var_2241 = param2;
      }
      
      public function update() : void
      {
         var_662 += var_2241;
         var_663 += var_662;
         if(var_663 > 0)
         {
            var_663 = 0;
            var_662 = var_2240 * -1 * var_662;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_662 = param1;
         var_663 = 0;
      }
      
      public function get location() : Number
      {
         return var_663;
      }
   }
}
