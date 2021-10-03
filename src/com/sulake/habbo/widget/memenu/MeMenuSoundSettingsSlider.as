package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class MeMenuSoundSettingsSlider
   {
       
      
      private var _sliderContainer:IWindowContainer;
      
      private var var_925:MeMenuSoundSettingsView;
      
      private var var_1106:Number = 1.0;
      
      private var var_637:BitmapData;
      
      private var var_638:BitmapData;
      
      private var var_1588:int;
      
      private var var_762:Number = 0.0;
      
      public function MeMenuSoundSettingsSlider(param1:MeMenuSoundSettingsView, param2:IWindowContainer, param3:IAssetLibrary, param4:Number = 0.0, param5:Number = 1.0)
      {
         super();
         var_925 = param1;
         _sliderContainer = param2;
         var_762 = param4;
         var_1106 = param5;
         storeAssets(param3);
         displaySlider();
      }
      
      private function getSliderPosition(param1:Number) : int
      {
         return int(var_1588 * (Number(param1 - var_762) / (var_1106 - var_762)));
      }
      
      private function displaySlider() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_sliderContainer == null)
         {
            return;
         }
         _loc2_ = _sliderContainer.findChildByName("slider_base") as IBitmapWrapperWindow;
         if(_loc2_ != null && var_637 != null)
         {
            _loc2_.bitmap = new BitmapData(var_637.width,var_637.height,true,16777215);
            _loc2_.bitmap.copyPixels(var_637,var_637.rect,new Point(0,0),null,null,true);
         }
         _loc1_ = _sliderContainer.findChildByName("slider_movement_area") as IWindowContainer;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.findChildByName("slider_button") as IBitmapWrapperWindow;
            if(_loc2_ != null && var_638 != null)
            {
               _loc2_.bitmap = new BitmapData(var_638.width,var_638.height,true,16777215);
               _loc2_.bitmap.copyPixels(var_638,var_638.rect,new Point(0,0),null,null,true);
               _loc2_.procedure = buttonProcedure;
               var_1588 = _loc1_.width - _loc2_.width;
            }
         }
      }
      
      private function storeAssets(param1:IAssetLibrary) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_base"));
         var_637 = BitmapData(_loc2_.content);
         _loc2_ = BitmapDataAsset(param1.getAssetByName("memenu_settings_slider_button"));
         var_638 = BitmapData(_loc2_.content);
      }
      
      public function set max(param1:Number) : void
      {
         var_1106 = param1;
         setValue(var_925.volume);
      }
      
      public function set min(param1:Number) : void
      {
         var_762 = param1;
         setValue(var_925.volume);
      }
      
      public function setValue(param1:Number) : void
      {
         if(_sliderContainer == null)
         {
            return;
         }
         var _loc2_:IWindow = _sliderContainer.findChildByName("slider_button");
         if(_loc2_ != null)
         {
            _loc2_.x = getSliderPosition(param1);
         }
      }
      
      private function buttonProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_417)
         {
            return;
         }
         var_925.saveVolume(getValue(param2.x),false);
      }
      
      private function getValue(param1:Number) : Number
      {
         return param1 / var_1588 * (var_1106 - var_762) + var_762;
      }
      
      public function dispose() : void
      {
         var_925 = null;
         _sliderContainer = null;
         var_637 = null;
         var_638 = null;
      }
   }
}
