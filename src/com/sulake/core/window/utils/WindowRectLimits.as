package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_449:int = -2.147483648E9;
      
      private var var_450:int = 2.147483647E9;
      
      private var var_452:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      private var var_451:int = -2.147483648E9;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_450;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_451 == int.MIN_VALUE && var_450 == int.MAX_VALUE && var_449 == int.MIN_VALUE && var_452 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_450 = param1;
         if(var_450 < int.MAX_VALUE && true && _target.width > var_450)
         {
            _target.width = var_450;
         }
      }
      
      public function setEmpty() : void
      {
         var_451 = int.MIN_VALUE;
         var_450 = int.MAX_VALUE;
         var_449 = int.MIN_VALUE;
         var_452 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_452 = param1;
         if(var_452 < int.MAX_VALUE && true && _target.height > var_452)
         {
            _target.height = var_452;
         }
      }
      
      public function get minHeight() : int
      {
         return var_449;
      }
      
      public function get minWidth() : int
      {
         return var_451;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_451 = var_451;
         _loc2_.var_450 = var_450;
         _loc2_.var_449 = var_449;
         _loc2_.var_452 = var_452;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_451 = param1;
         if(var_451 > int.MIN_VALUE && true && _target.width < var_451)
         {
            _target.width = var_451;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_449 = param1;
         if(var_449 > int.MIN_VALUE && true && _target.height < var_449)
         {
            _target.height = var_449;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_452;
      }
   }
}
