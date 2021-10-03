package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_178:String;
      
      private var var_452:int;
      
      private var var_223:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_178 = param1;
         var_223 = param2;
         var_452 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_223.text = var_178.substring(0,param1) + "...";
         return var_223.textHeight > var_452;
      }
   }
}
