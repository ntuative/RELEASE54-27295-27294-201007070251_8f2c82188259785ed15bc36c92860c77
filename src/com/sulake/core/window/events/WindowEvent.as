package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_292:String = "WE_CHILD_RESIZED";
      
      public static const const_1230:String = "WE_CLOSE";
      
      public static const const_1319:String = "WE_DESTROY";
      
      public static const const_127:String = "WE_CHANGE";
      
      public static const const_1308:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1710:String = "WE_PARENT_RESIZE";
      
      public static const const_92:String = "WE_UPDATE";
      
      public static const const_1362:String = "WE_MAXIMIZE";
      
      public static const const_421:String = "WE_DESTROYED";
      
      public static const const_886:String = "WE_UNSELECT";
      
      public static const const_1310:String = "WE_MAXIMIZED";
      
      public static const const_1540:String = "WE_UNLOCKED";
      
      public static const const_484:String = "WE_CHILD_REMOVED";
      
      public static const const_157:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1302:String = "WE_ACTIVATE";
      
      public static const const_271:String = "WE_ENABLED";
      
      public static const const_469:String = "WE_CHILD_RELOCATED";
      
      public static const const_1189:String = "WE_CREATE";
      
      public static const const_567:String = "WE_SELECT";
      
      public static const const_158:String = "";
      
      public static const const_1623:String = "WE_LOCKED";
      
      public static const const_1541:String = "WE_PARENT_RELOCATE";
      
      public static const const_1517:String = "WE_CHILD_REMOVE";
      
      public static const const_1691:String = "WE_CHILD_RELOCATE";
      
      public static const const_1516:String = "WE_LOCK";
      
      public static const const_224:String = "WE_FOCUSED";
      
      public static const const_692:String = "WE_UNSELECTED";
      
      public static const const_915:String = "WE_DEACTIVATED";
      
      public static const const_1437:String = "WE_MINIMIZED";
      
      public static const const_1583:String = "WE_ARRANGED";
      
      public static const const_1519:String = "WE_UNLOCK";
      
      public static const const_1522:String = "WE_ATTACH";
      
      public static const const_1409:String = "WE_OPEN";
      
      public static const const_1369:String = "WE_RESTORE";
      
      public static const const_1548:String = "WE_PARENT_RELOCATED";
      
      public static const const_1372:String = "WE_RELOCATE";
      
      public static const const_1602:String = "WE_CHILD_RESIZE";
      
      public static const const_1652:String = "WE_ARRANGE";
      
      public static const const_1320:String = "WE_OPENED";
      
      public static const const_1240:String = "WE_CLOSED";
      
      public static const const_1692:String = "WE_DETACHED";
      
      public static const const_1531:String = "WE_UPDATED";
      
      public static const const_1226:String = "WE_UNFOCUSED";
      
      public static const const_417:String = "WE_RELOCATED";
      
      public static const const_1248:String = "WE_DEACTIVATE";
      
      public static const const_228:String = "WE_DISABLED";
      
      public static const const_529:String = "WE_CANCEL";
      
      public static const const_642:String = "WE_ENABLE";
      
      public static const const_1191:String = "WE_ACTIVATED";
      
      public static const const_1390:String = "WE_FOCUS";
      
      public static const const_1722:String = "WE_DETACH";
      
      public static const const_1233:String = "WE_RESTORED";
      
      public static const const_1238:String = "WE_UNFOCUS";
      
      public static const const_54:String = "WE_SELECTED";
      
      public static const const_1416:String = "WE_PARENT_RESIZED";
      
      public static const const_1402:String = "WE_CREATED";
      
      public static const const_1532:String = "WE_ATTACHED";
      
      public static const const_1296:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1726:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1495:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1726 = param3;
         var_1495 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1495;
      }
      
      public function get related() : IWindow
      {
         return var_1726;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1495 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
