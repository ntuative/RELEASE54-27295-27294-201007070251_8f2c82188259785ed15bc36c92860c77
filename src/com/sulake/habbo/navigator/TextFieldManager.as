package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2473:Boolean;
      
      private var var_1639:int;
      
      private var var_2475:String = "";
      
      private var var_77:ITextFieldWindow;
      
      private var var_2474:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1243:String = "";
      
      private var var_163:IWindowContainer;
      
      private var var_327:Boolean;
      
      private var var_1395:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_77 = param2;
         var_1639 = param3;
         var_1395 = param4;
         if(param5 != null)
         {
            var_327 = true;
            var_1243 = param5;
            var_77.text = param5;
         }
         Util.setProcDirectly(var_77,onInputClick);
         var_77.addEventListener(WindowKeyboardEvent.const_147,checkEnterPress);
         var_77.addEventListener(WindowEvent.const_127,checkMaxLen);
         this.var_2473 = var_77.textBackground;
         this._orgTextBackgroundColor = var_77.textBackgroundColor;
         this.var_2474 = var_77.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1395 != null)
            {
               var_1395();
            }
         }
      }
      
      public function include() : void
      {
         clearErrors();
         if(var_1243 != null)
         {
            var_77.text = var_1243;
            var_327 = true;
         }
         else
         {
            var_77.text = "";
            var_327 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_77;
      }
      
      public function restoreBackground() : void
      {
         var_77.textBackground = this.var_2473;
         var_77.textBackgroundColor = this._orgTextBackgroundColor;
         var_77.textColor = this.var_2474;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_224)
         {
            return;
         }
         if(!var_327)
         {
            return;
         }
         var_77.text = var_2475;
         var_327 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_163 != null)
         {
            var_163.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_77.textBackground = true;
         var_77.textBackgroundColor = 4294021019;
         var_77.textColor = 4278190080;
         if(this.var_163 == null)
         {
            this.var_163 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_163,"popup_arrow_down",true,null,0);
            IWindowContainer(var_77.parent).addChild(this.var_163);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_163.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_163.findChildByName("border").width = _loc2_.width + 15;
         var_163.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_77.getLocalPosition(_loc3_);
         this.var_163.x = _loc3_.x;
         this.var_163.y = _loc3_.y - this.var_163.height + 3;
         var _loc4_:IWindow = var_163.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_163.width / 2 - _loc4_.width / 2;
         var_163.x += (0 - 0) / 2;
         this.var_163.visible = true;
      }
      
      public function getText() : String
      {
         if(var_327)
         {
            return var_2475;
         }
         return var_77.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_327 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_327 = false;
         var_77.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1639)
         {
            var_77.text = _loc2_.substring(0,var_1639);
         }
      }
   }
}
