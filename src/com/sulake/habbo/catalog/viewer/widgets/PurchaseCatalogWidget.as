package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1890:XML;
      
      private var var_1554:ITextWindow;
      
      private var var_1552:ITextWindow;
      
      private var var_1892:XML;
      
      private var var_887:IWindowContainer;
      
      private var var_2452:ITextWindow;
      
      private var var_1891:String = "";
      
      private var var_2522:IButtonWindow;
      
      private var var_1893:XML;
      
      private var var_1553:ITextWindow;
      
      private var var_1889:XML;
      
      private var var_888:IButtonWindow;
      
      private var var_80:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_349:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1892) as IWindowContainer;
               break;
            case Offer.const_505:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1889) as IWindowContainer;
               break;
            case Offer.const_430:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1890) as IWindowContainer;
               break;
            case Offer.const_758:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1893) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_887 != null)
            {
               _window.removeChild(var_887);
               var_887.dispose();
            }
            var_887 = _loc2_;
            _window.addChild(_loc2_);
            var_887.x = 0;
            var_887.y = 0;
         }
         var_1553 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1552 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1554 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2452 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_888 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_888 != null)
         {
            var_888.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_888.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_80 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_80,page,var_1891);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1892 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1889 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1890 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1893 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_1044,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1891 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_80 = param1.offer;
         attachStub(var_80.priceType);
         if(var_1553 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_80.priceInCredits));
            var_1553.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1552 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_80.priceInPixels));
            var_1552.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1554 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_80.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_80.priceInPixels));
            var_1554.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_888 != null)
         {
            var_888.enable();
         }
      }
   }
}
