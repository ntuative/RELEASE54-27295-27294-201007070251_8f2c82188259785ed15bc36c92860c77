package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1132:int = 100;
      
      private static const const_1134:int = 200;
      
      private static const const_1133:int = 180;
      
      public static const const_999:int = 1;
      
      public static const const_403:int = 2;
      
      private static const const_1131:int = 250;
      
      private static const const_812:int = 5;
       
      
      private var var_648:BitmapData;
      
      private var var_324:Timer;
      
      private var var_12:IWindowContainer;
      
      private var var_772:BitmapData;
      
      private var var_323:Timer;
      
      private var var_75:IWindowContainer;
      
      private var var_1601:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_323 = new Timer(const_1131,1);
         var_324 = new Timer(const_1132,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_75 = param1;
         var_75.visible = false;
         _assets = param2;
         var_323.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_324.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_772 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_648 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_75.visible = false;
         var_324.reset();
         var_323.reset();
         if(var_12 != null)
         {
            var_12.removeChild(var_75);
         }
      }
      
      public function hideDelayed() : void
      {
         var_324.reset();
         var_323.reset();
         var_324.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_323 != null)
         {
            var_323.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_323.stop();
            var_323 = null;
         }
         if(var_324 != null)
         {
            var_324.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_324.stop();
            var_324 = null;
         }
         _assets = null;
         var_75 = null;
         var_12 = null;
         var_648 = null;
         var_772 = null;
      }
      
      public function showDelayed() : void
      {
         var_324.reset();
         var_323.reset();
         var_323.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_75 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_12 != null)
         {
            var_12.removeChild(var_75);
         }
         var_12 = param1;
         var_1601 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_75.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_75.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1133,param3.width),Math.min(const_1134,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_75.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_75 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_75.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_999:
               _loc2_.bitmap = var_772.clone();
               _loc2_.width = var_772.width;
               _loc2_.height = var_772.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_403:
               _loc2_.bitmap = var_648.clone();
               _loc2_.width = var_648.width;
               _loc2_.height = var_648.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_324.reset();
         var_323.reset();
         if(var_12 == null)
         {
            return;
         }
         var_75.visible = true;
         var_12.addChild(var_75);
         refreshArrow(var_1601);
         switch(var_1601)
         {
            case const_999:
               var_75.x = 0 - const_812;
               break;
            case const_403:
               var_75.x = var_12.width + const_812;
         }
         var_75.y = (0 - 0) / 2;
      }
   }
}
