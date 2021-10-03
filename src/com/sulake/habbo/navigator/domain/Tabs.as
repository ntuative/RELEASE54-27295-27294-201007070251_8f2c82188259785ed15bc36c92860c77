package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_632:int = 6;
      
      public static const const_214:int = 5;
      
      public static const const_553:int = 2;
      
      public static const const_346:int = 9;
      
      public static const const_323:int = 4;
      
      public static const const_249:int = 2;
      
      public static const const_729:int = 4;
      
      public static const const_210:int = 8;
      
      public static const const_713:int = 7;
      
      public static const const_289:int = 3;
      
      public static const const_328:int = 1;
      
      public static const const_212:int = 5;
      
      public static const const_486:int = 12;
      
      public static const const_326:int = 1;
      
      public static const const_565:int = 11;
      
      public static const const_695:int = 3;
      
      public static const const_1549:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_471:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_471 = new Array();
         var_471.push(new Tab(_navigator,const_328,const_486,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_475));
         var_471.push(new Tab(_navigator,const_249,const_326,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_475));
         var_471.push(new Tab(_navigator,const_323,const_565,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1011));
         var_471.push(new Tab(_navigator,const_289,const_214,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_475));
         var_471.push(new Tab(_navigator,const_212,const_210,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_743));
         setSelectedTab(const_328);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_471)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_471)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_471)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_323;
      }
      
      public function get tabs() : Array
      {
         return var_471;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
