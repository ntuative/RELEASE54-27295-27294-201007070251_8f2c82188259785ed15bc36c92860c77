package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_359:Boolean;
      
      private var var_223:String;
      
      private var var_1405:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_223 = param1;
         var_1405 = param2;
         var_359 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1405;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_359 = param1;
      }
      
      public function get text() : String
      {
         return var_223;
      }
      
      public function get visible() : Boolean
      {
         return var_359;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1405 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_223 = param1;
      }
   }
}
