package com.sulake.habbo.catalog.purchase
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ICheckBoxWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.club.ClubBuyOfferData;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.communication.messages.parser.catalog.IsOfferGiftableMessageParser;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.ui.Keyboard;
   
   public class PurchaseConfirmationDialog implements IGetImageListener
   {
       
      
      private var var_2400:String = "";
      
      private var var_1711:Array;
      
      private var var_687:Array;
      
      private var _window:IFrameWindow;
      
      private const const_1487:uint = 4.294967295E9;
      
      private const const_1488:uint = 4.293848814E9;
      
      private var var_1013:int;
      
      private const const_1759:uint = 4.291613146E9;
      
      private var var_302:int = -1;
      
      private var var_260:IWindowContainer;
      
      private var var_1194:String;
      
      private var var_584:IWindowContainer;
      
      private var _boxIndex:int;
      
      private var var_1012:int;
      
      private var var_2493:Boolean = false;
      
      private var var_2494:int = 0;
      
      private var var_688:Array;
      
      private const const_1758:int = 10;
      
      private var var_249:Array;
      
      private var var_1480:Boolean;
      
      private var _catalog:HabboCatalog;
      
      private var var_80:IPurchasableOffer;
      
      private var var_224:int;
      
      private var var_448:ICatalogPage;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_1481:Boolean;
      
      public function PurchaseConfirmationDialog(param1:ICoreLocalizationManager)
      {
         var_687 = [];
         var_688 = [];
         super();
         _localization = param1;
      }
      
      public function receiverNotFound() : void
      {
         enableGiftButton(true);
         if(!_catalog || true)
         {
            return;
         }
         _catalog.windowManager.alert("${catalog.gift_wrapping.receiver_not_found.title}","${catalog.gift_wrapping.receiver_not_found.info}",0,alertHandler);
      }
      
      public function notEnoughCredits() : void
      {
         if(_window == null)
         {
            return;
         }
         enableGiftButton(true);
         var _loc1_:ICheckBoxWindow = _window.findChildByName("use_free_checkbox") as ICheckBoxWindow;
         if(_loc1_ != null)
         {
            _loc1_.select();
         }
      }
      
      private function checkboxHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case WindowEvent.const_567:
               showSelectors(false);
               break;
            case WindowEvent.const_692:
               showSelectors(true);
         }
      }
      
      private function createWindow(param1:String) : IWindow
      {
         if(true || true)
         {
            return null;
         }
         var _loc2_:XmlAsset = _catalog.assets.getAssetByName(param1) as XmlAsset;
         if(_loc2_ == null || _loc2_.content == null)
         {
            return null;
         }
         return _catalog.windowManager.buildFromXML(_loc2_.content as XML);
      }
      
      private function alertHandler(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
         enableGiftButton(true);
      }
      
      private function setImage(param1:BitmapData, param2:Boolean) : void
      {
         if(_window == null || param1 == null)
         {
            return;
         }
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName("product_image") as IBitmapWrapperWindow;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.bitmap != null)
         {
            _loc3_.bitmap.dispose();
            _loc3_.bitmap = null;
         }
         if(_loc3_.bitmap == null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         }
         var _loc4_:int = (_loc3_.width - param1.width) * 0.5;
         var _loc5_:int = (_loc3_.height - param1.height) * 0.5;
         _loc3_.bitmap.draw(param1,new Matrix(1,0,0,1,_loc4_,_loc5_));
         if(param2)
         {
            param1.dispose();
         }
      }
      
      private function suggestionsEventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         _loc3_ = param2 as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               _loc4_ = _loc3_.findChildByName("name_text") as ITextWindow;
               if(_loc4_ == null)
               {
                  return;
               }
               setReceiverName(_loc4_.text);
               showSuggestions(false);
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               _loc5_ = var_260.findChildByName("suggestion_list") as IItemListWindow;
               if(_loc5_ == null)
               {
                  return;
               }
               highlightSuggestion(_loc5_.getListItemIndex(_loc3_));
               break;
         }
      }
      
      private function updateColorGrid() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(_window == null)
         {
            return;
         }
         var _loc1_:IItemGridWindow = _window.findChildByName("color_grid") as IItemGridWindow;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.numGridItems)
         {
            _loc2_ = _loc1_.getGridItemAt(_loc4_) as IWindowContainer;
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.findChildByName("selection") as IBitmapWrapperWindow;
               if(_loc3_ != null)
               {
                  _loc3_.visible = _loc2_.id == var_1012;
               }
            }
            _loc4_++;
         }
      }
      
      private function setReceiverName(param1:String) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc2_:ITextFieldWindow = _window.findChildByName("name_input") as ITextFieldWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.text = param1;
         focusMessageField();
      }
      
      public function onIsOfferGiftable(param1:IsOfferGiftableMessageParser) : void
      {
         if(this.var_80 == null || this.var_80.offerId != param1.offerId)
         {
            return;
         }
         this.setGiftButtonState(param1.isGiftable);
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         if(param1 == var_1013)
         {
            var_1013 = 0;
            setImage(param2,true);
         }
      }
      
      private function focusMessageField() : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc1_:ITextFieldWindow = _window.findChildByName("message_input") as ITextFieldWindow;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.visible = true;
         _loc1_.focus();
      }
      
      private function showMessageInput(param1:Boolean) : void
      {
         var _loc2_:ITextFieldWindow = _window.findChildByName("message_input") as ITextFieldWindow;
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      private function updateLocalizations() : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc1_:IProductData = _catalog.getProductData(var_80.localizationId);
         var _loc2_:String = _loc1_ == null ? "" : _loc1_.name;
         _catalog.windowManager.registerLocalizationParameter("catalog.purchase.confirmation.dialog.costs","offer_name",_loc2_);
         var _loc3_:String = "";
         var _loc4_:String = "";
         var _loc7_:String = _catalog.getPurse().credits.toString();
         var _loc8_:String = _catalog.getPurse().pixels.toString();
         switch(var_80.priceType)
         {
            case Offer.const_349:
               _loc6_ = "catalog.purchase.confirmation.dialog.price.credits";
               _loc5_ = _localization.getLocalization(_loc6_);
               _localization.registerParameter(_loc6_,"credits",var_80.priceInCredits.toString());
               _loc3_ = _loc5_.value;
               _localization.registerParameter(_loc6_,"credits",_loc7_);
               _loc4_ = _loc5_.value;
               break;
            case Offer.const_758:
            case Offer.const_430:
               _loc6_ = "catalog.purchase.confirmation.dialog.price.credits+pixels";
               _loc5_ = _localization.getLocalization(_loc6_);
               _localization.registerParameter(_loc6_,"credits",var_80.priceInCredits.toString());
               _localization.registerParameter(_loc6_,"pixels",var_80.priceInPixels.toString());
               _loc3_ = _loc5_.value;
               _localization.registerParameter(_loc6_,"credits",_loc7_);
               _localization.registerParameter(_loc6_,"pixels",_loc8_);
               _loc4_ = _loc5_.value;
               break;
            case Offer.const_505:
               _loc6_ = "catalog.purchase.confirmation.dialog.price.pixels";
               _loc5_ = _localization.getLocalization(_loc6_);
               _localization.registerParameter(_loc6_,"pixels",var_80.priceInPixels.toString());
               _loc3_ = _loc5_.value;
               _localization.registerParameter(_loc6_,"pixels",_loc8_);
               _loc4_ = _loc5_.value;
               break;
            case Offer.const_986:
               _loc6_ = "catalog.purchase.confirmation.dialog.price.nothing";
               _loc5_ = _localization.getLocalization(_loc6_);
               _loc3_ = _loc5_.value;
               _localization.registerParameter(_loc6_,"credits",_loc7_);
               _loc4_ = _loc5_.value;
         }
         _catalog.windowManager.registerLocalizationParameter("catalog.purchase.confirmation.dialog.costs","price",_loc3_);
         _catalog.windowManager.registerLocalizationParameter("catalog.purchase.confirmation.dialog.amount","amount",_loc4_);
      }
      
      private function showSuggestions(param1:Boolean) : void
      {
         if(var_260 == null)
         {
            return;
         }
         var_260.visible = param1;
         if(!param1)
         {
            showMessageInput(true);
         }
      }
      
      private function toggleCheckbox() : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc1_:ICheckBoxWindow = _window.findChildByName("use_free_checkbox") as ICheckBoxWindow;
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.isSelected)
         {
            _loc1_.unselect();
         }
         else
         {
            _loc1_.select();
         }
      }
      
      private function updatePreview() : void
      {
         var _loc3_:* = null;
         if(var_224 < 0)
         {
            var_224 = -1;
         }
         if(var_224 > -1)
         {
            var_224 = 0;
         }
         if(_boxIndex < 0)
         {
            _boxIndex = -1;
         }
         if(_boxIndex > -1)
         {
            _boxIndex = 0;
         }
         var _loc1_:int = 0;
         if(_window == null)
         {
            return;
         }
         var _loc2_:IRoomEngine = var_80.page.viewer.roomEngine;
         _loc3_ = _loc2_.getFurnitureImage(var_1012,new Vector3d(180),64,this,_loc1_.toString());
         if(_loc3_ == null)
         {
            return;
         }
         var_1013 = _loc3_.id;
         setImage(_loc3_.data,true);
         showSuggestions(false);
      }
      
      private function getColor(param1:int) : uint
      {
         return param1 % 2 == 0 ? uint(const_1488) : uint(const_1487);
      }
      
      private function initColorGrid() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = null;
         if(_window == null)
         {
            return;
         }
         var _loc1_:IItemGridWindow = _window.findChildByName("color_grid") as IItemGridWindow;
         _loc1_.destroyGridItems();
         var _loc2_:IWindowContainer = createWindow("gift_palette_item") as IWindowContainer;
         _loc2_.procedure = colorHandler;
         var _loc3_:Array = var_1711;
         for each(_loc6_ in _loc3_)
         {
            _loc4_ = _catalog.getFurnitureData(_loc6_,ProductTypeEnum.const_82);
            _loc5_ = _loc2_.clone() as IWindowContainer;
            if(!(!_loc4_ || !_loc5_))
            {
               _loc7_ = uint(_loc4_.colours[0]);
               _loc8_ = (_loc7_ >> 16 & 255) / 255;
               _loc9_ = (_loc7_ >> 8 & 255) / 255;
               _loc10_ = (_loc7_ & 255) / 255;
               _loc11_ = new ColorTransform(_loc8_,_loc9_,_loc10_);
               setBitmapData(_loc5_,"border","ctlg_clr_27x22_1");
               setBitmapData(_loc5_,"color","ctlg_clr_27x22_2",_loc11_);
               setBitmapData(_loc5_,"selection","ctlg_clr_27x22_3");
               _loc5_.id = _loc6_;
               _loc1_.addGridItem(_loc5_);
            }
         }
      }
      
      private function messageInputHandler(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case WindowMouseEvent.const_47:
               if(var_1480)
               {
                  _loc3_ = param2 as ITextFieldWindow;
                  if(_loc3_)
                  {
                     _loc3_.text = "";
                     var_1480 = false;
                  }
               }
               break;
            case WindowEvent.const_224:
               showSuggestions(false);
         }
      }
      
      private function reset() : void
      {
         var_80 = null;
         var_448 = null;
         var_1194 = "";
         var_2494 = 0;
         var_2493 = false;
         var_249 = null;
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         var_260 = null;
         if(var_584 != null)
         {
            var_584.dispose();
            var_584 = null;
         }
      }
      
      private function confirmationHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "gift_button":
               showGiftDialog();
               break;
            case "buy_button":
               _catalog.purchaseProduct(var_448,var_80,var_1194);
               dispose();
               break;
            case "cancel_button":
            case "header_button_close":
               dispose();
         }
      }
      
      public function dispose() : void
      {
         reset();
      }
      
      public function showOffer(param1:IHabboCatalog, param2:IPurchasableOffer, param3:ICatalogPage, param4:String = "", param5:Array = null) : void
      {
         var_80 = param2;
         var_448 = param3;
         _catalog = param1 as HabboCatalog;
         var_1194 = param4;
         var_249 = param5;
         showConfirmationDialog();
      }
      
      private function selectHighlighted() : void
      {
         if(var_260 == null || true)
         {
            return;
         }
         var _loc1_:IItemListWindow = var_260.findChildByName("suggestion_list") as IItemListWindow;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:IWindowContainer = _loc1_.getListItemAt(var_302) as IWindowContainer;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:ITextWindow = _loc2_.findChildByName("name_text") as ITextWindow;
         if(_loc3_ == null)
         {
            return;
         }
         setReceiverName(_loc3_.text);
         showSuggestions(false);
      }
      
      private function giveGift() : void
      {
         var _loc1_:ITextFieldWindow = _window.findChildByName("name_input") as ITextFieldWindow;
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:String = _loc1_.text;
         var _loc3_:ITextFieldWindow = _window.findChildByName("message_input") as ITextFieldWindow;
         var _loc4_:String = _loc3_ == null ? "" : _loc3_.text;
         var _loc5_:ICheckBoxWindow = _window.findChildByName("use_free_checkbox") as ICheckBoxWindow;
         var _loc6_:Boolean = _loc5_ == null ? false : Boolean(_loc5_.isSelected);
         var _loc7_:int = !!_loc6_ ? 0 : int(var_1012);
         var _loc8_:int = !!_loc6_ ? 0 : int(var_688[_boxIndex]);
         var _loc9_:int = !!_loc6_ ? 0 : int(var_687[var_224]);
         _catalog.purchaseProductAsGift(var_448,var_80,var_1194,_loc2_,_loc4_,_loc7_,_loc8_,_loc9_);
      }
      
      private function nameInputHandler(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case WindowEvent.const_127:
               _loc3_ = param1.window as ITextFieldWindow;
               if(_loc3_ == null)
               {
                  return;
               }
               if(var_2400 == _loc3_.text)
               {
                  return;
               }
               _loc4_ = _loc3_.text.toLowerCase();
               _loc5_ = [];
               for each(_loc7_ in var_249)
               {
                  if(_loc7_.toLowerCase().search(_loc4_) != -1)
                  {
                     _loc5_.push(_loc7_);
                  }
                  if(_loc5_.length >= const_1758)
                  {
                     break;
                  }
               }
               updateSuggestions(_loc5_);
               var_2400 = _loc3_.text;
               break;
            case WindowMouseEvent.const_47:
               showSuggestions(false);
               if(var_1481)
               {
                  _loc3_ = param2 as ITextFieldWindow;
                  if(_loc3_)
                  {
                     _loc3_.text = "";
                     var_1481 = false;
                  }
               }
               break;
            case WindowKeyboardEvent.const_688:
               _loc6_ = param1 as WindowKeyboardEvent;
               switch(_loc6_.keyCode)
               {
                  case Keyboard.UP:
                     highlightSuggestion(var_302 - 1);
                     break;
                  case Keyboard.DOWN:
                     highlightSuggestion(var_302 + 1);
                     break;
                  case Keyboard.ENTER:
                     selectHighlighted();
                     break;
                  case Keyboard.TAB:
                     focusMessageField();
               }
         }
      }
      
      private function enableGiftButton(param1:Boolean) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc2_:IButtonWindow = _window.findChildByName("give_gift_button") as IButtonWindow;
         if(_loc2_ != null)
         {
            if(param1)
            {
               _loc2_.enable();
            }
            else
            {
               _loc2_.disable();
            }
         }
      }
      
      private function showConfirmationDialog() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         if(_catalog == null)
         {
            return;
         }
         if(_window != null)
         {
            _window.dispose();
         }
         updateLocalizations();
         _window = createWindow("purchase_confirmation") as IFrameWindow;
         if(_window == null)
         {
            return;
         }
         _window.procedure = confirmationHandler;
         this.setGiftButtonState(false);
         _window.center();
         var _loc1_:ITextWindow = _window.findChildByName("product_name") as ITextWindow;
         if(_loc1_ != null)
         {
            _loc3_ = _catalog.getProductData(var_80.localizationId);
            _loc1_.text = _loc3_ == null ? "" : _loc3_.name;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("product_image") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc4_ = var_80.page.viewer.roomEngine;
            _loc7_ = 0;
            _loc8_ = "";
            _loc9_ = "";
            if(var_80 is Offer)
            {
               _loc10_ = var_80.productContainer.firstProduct;
               _loc9_ = _loc10_.productType;
               _loc7_ = _loc10_.productClassId;
               _loc8_ = _loc10_.extraParam;
            }
            else if(var_80 is ClubBuyOfferData)
            {
               _loc9_ = "null";
            }
            switch(_loc9_)
            {
               case ProductTypeEnum.const_82:
                  _loc5_ = _loc4_.getFurnitureIcon(_loc7_,this);
                  break;
               case ProductTypeEnum.const_79:
                  _loc5_ = _loc4_.getWallItemIcon(_loc7_,this,_loc8_);
                  break;
               case ProductTypeEnum.const_222:
                  _loc6_ = _catalog.getPixelEffectIcon(_loc7_);
                  break;
               case ProductTypeEnum.const_335:
                  _loc6_ = _catalog.getSubscriptionProductIcon(_loc7_);
            }
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.data;
               var_1013 = _loc5_.id;
            }
            setImage(_loc6_,true);
         }
      }
      
      private function setGiftButtonState(param1:Boolean) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc2_:IButtonWindow = IButtonWindow(_window.findChildByName("gift_button"));
         if(param1)
         {
            _loc2_.enable();
         }
         else
         {
            _loc2_.disable();
         }
      }
      
      private function showGiftDialog() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_window != null)
         {
            _window.dispose();
         }
         var _loc1_:GiftWrappingConfiguration = _catalog.giftWrappingConfiguration;
         var _loc2_:String = !!_loc1_.isEnabled ? "gift_wrapping" : "gift_no_wrapping";
         _window = createWindow(_loc2_) as IFrameWindow;
         if(_window == null)
         {
            return;
         }
         _window.center();
         _window.procedure = wrappingHandler;
         _loc3_ = _window.findChildByName("name_input") as ITextFieldWindow;
         if(_loc3_ != null)
         {
            _loc3_.procedure = nameInputHandler;
         }
         _loc3_ = _window.findChildByName("message_input") as ITextFieldWindow;
         if(_loc3_ != null)
         {
            _loc3_.procedure = messageInputHandler;
         }
         var_1481 = true;
         var_1480 = true;
         if(_loc1_.isEnabled)
         {
            _loc4_ = _window.findChildByName("use_free_checkbox") as ICheckBoxWindow;
            if(_loc4_ != null)
            {
               _loc4_.procedure = checkboxHandler;
            }
            _localization.registerParameter("catalog.gift_wrapping.price","price",_loc1_.price.toString());
            var_1711 = _loc1_.stuffTypes;
            var_688 = _loc1_.boxTypes;
            var_687 = _loc1_.ribbonTypes;
            var_1012 = var_1711[0];
            _boxIndex = var_688[0];
            var_224 = var_687[0];
            initColorGrid();
            updateColorGrid();
            updatePreview();
         }
      }
      
      private function colorHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null || param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1012 = param2.id;
         updateColorGrid();
         updatePreview();
      }
      
      private function showSelectors(param1:Boolean) : void
      {
         if(_window == null)
         {
            return;
         }
         var _loc2_:IWindowContainer = _window.findChildByName("mask") as IWindowContainer;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.visible = !param1;
      }
      
      private function highlightSuggestion(param1:int) : void
      {
         var _loc3_:* = null;
         if(var_260 == null)
         {
            return;
         }
         var _loc2_:IItemListWindow = var_260.findChildByName("suggestion_list") as IItemListWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc3_ = _loc2_.getListItemAt(var_302) as IWindowContainer;
         if(_loc3_ != null)
         {
            _loc3_.color = getColor(var_302);
         }
         var_302 = param1;
         if(var_302 < 0)
         {
            var_302 = _loc2_.numListItems - 1;
         }
         if(var_302 >= _loc2_.numListItems)
         {
            var_302 = 0;
         }
         _loc3_ = _loc2_.getListItemAt(var_302) as IWindowContainer;
         if(_loc3_ != null)
         {
            _loc3_.color = const_1759;
         }
      }
      
      private function setBitmapData(param1:IWindowContainer, param2:String, param3:String, param4:ColorTransform = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc5_:IBitmapWrapperWindow = param1.findChildByName(param2) as IBitmapWrapperWindow;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:BitmapDataAsset = _catalog.assets.getAssetByName(param3) as BitmapDataAsset;
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:BitmapData = _loc6_.content as BitmapData;
         if(_loc7_ == null)
         {
            return;
         }
         if(_loc5_.bitmap == null)
         {
            _loc5_.bitmap = new BitmapData(_loc5_.width,_loc5_.height,true,0);
         }
         _loc5_.bitmap.draw(_loc7_,null,param4);
      }
      
      private function wrappingHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "give_gift_button":
               giveGift();
               enableGiftButton(false);
               break;
            case "cancel_gifting_button":
            case "header_button_close":
               dispose();
               break;
            case "ribbon_prev":
               --var_224;
               updatePreview();
               break;
            case "ribbon_next":
               ++var_224;
               updatePreview();
               break;
            case "box_prev":
               --_boxIndex;
               updatePreview();
               break;
            case "box_next":
               ++_boxIndex;
               updatePreview();
               break;
            case "use_free_text":
               toggleCheckbox();
         }
      }
      
      private function updateSuggestions(param1:Array) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(var_260 == null)
         {
            var_260 = _window.findChildByName("suggestion_container") as IWindowContainer;
         }
         if(var_584 == null)
         {
            var_584 = createWindow("suggestion_list_item") as IWindowContainer;
            var_584.procedure = suggestionsEventHandler;
         }
         if(var_260 == null || var_584 == null)
         {
            return;
         }
         var _loc2_:IItemListWindow = var_260.findChildByName("suggestion_list") as IItemListWindow;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.removeListItems();
         if(param1.length == 0)
         {
            showSuggestions(false);
            return;
         }
         showSuggestions(true);
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            _loc5_ = var_584.clone() as IWindowContainer;
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.findChildByName("name_text") as ITextWindow;
               if(_loc6_ != null)
               {
                  _loc6_.text = _loc4_;
                  _loc2_.addListItem(_loc5_);
               }
               _loc5_.color = getColor(_loc3_);
               _loc3_++;
            }
         }
         showMessageInput(param1.length < 2);
         highlightSuggestion(0);
      }
   }
}
