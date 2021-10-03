package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1797:Date;
      
      private var var_1240:Boolean = false;
      
      private var _type:int;
      
      private var var_397:BitmapData;
      
      private var var_290:Boolean = false;
      
      private var var_1265:int;
      
      private var var_605:int = 1;
      
      private var var_1052:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_397;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_605;
         if(var_605 < 0)
         {
            var_605 = 0;
         }
         var_1052 = var_1265;
         var_290 = false;
         var_1240 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1052 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_290;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_397 = param1;
      }
      
      public function get duration() : int
      {
         return var_1265;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1240;
      }
      
      public function get effectsInInventory() : int
      {
         return var_605;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_397;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_290)
         {
            var_1797 = new Date();
         }
         var_290 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_605 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_290)
         {
            _loc1_ = var_1052 - (new Date().valueOf() - var_1797.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1052;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1240 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1265 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
