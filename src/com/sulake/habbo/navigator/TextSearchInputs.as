package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class TextSearchInputs
   {
       
      
      private var var_2539:IButtonWindow;
      
      private var var_710:TextFieldManager;
      
      private var _navigator:HabboNavigator;
      
      private var var_2491:Boolean;
      
      public function TextSearchInputs(param1:HabboNavigator, param2:Boolean, param3:IWindowContainer)
      {
         super();
         _navigator = param1;
         var_2491 = param2;
         var_710 = new TextFieldManager(_navigator,ITextFieldWindow(param3.findChildByName("search_str")),25,searchRooms,_navigator.getText("navigator.search.info"));
         Util.setProc(param3,"search_but",onSearchButtonClick);
      }
      
      public function get searchStr() : TextFieldManager
      {
         return var_710;
      }
      
      private function onSearchButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         searchRooms();
      }
      
      private function searchRooms() : void
      {
         var _loc1_:String = var_710.getText();
         if(_loc1_ == "")
         {
            return;
         }
         _navigator.mainViewCtrl.startSearch(Tabs.const_212,Tabs.const_210,_loc1_);
      }
   }
}
