package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1404:String = "WN_CREATED";
      
      public static const const_975:String = "WN_DISABLE";
      
      public static const const_890:String = "WN_DEACTIVATED";
      
      public static const const_971:String = "WN_OPENED";
      
      public static const const_903:String = "WN_CLOSED";
      
      public static const const_991:String = "WN_DESTROY";
      
      public static const const_1641:String = "WN_ARRANGED";
      
      public static const const_458:String = "WN_PARENT_RESIZED";
      
      public static const const_957:String = "WN_ENABLE";
      
      public static const const_921:String = "WN_RELOCATE";
      
      public static const const_968:String = "WN_FOCUS";
      
      public static const const_1002:String = "WN_PARENT_RELOCATED";
      
      public static const const_429:String = "WN_PARAM_UPDATED";
      
      public static const const_662:String = "WN_PARENT_ACTIVATED";
      
      public static const const_167:String = "WN_RESIZED";
      
      public static const const_982:String = "WN_CLOSE";
      
      public static const const_893:String = "WN_PARENT_REMOVED";
      
      public static const const_288:String = "WN_CHILD_RELOCATED";
      
      public static const const_730:String = "WN_ENABLED";
      
      public static const const_260:String = "WN_CHILD_RESIZED";
      
      public static const const_941:String = "WN_MINIMIZED";
      
      public static const const_637:String = "WN_DISABLED";
      
      public static const const_217:String = "WN_CHILD_ACTIVATED";
      
      public static const const_464:String = "WN_STATE_UPDATED";
      
      public static const const_660:String = "WN_UNSELECTED";
      
      public static const const_423:String = "WN_STYLE_UPDATED";
      
      public static const const_1715:String = "WN_UPDATE";
      
      public static const const_377:String = "WN_PARENT_ADDED";
      
      public static const const_607:String = "WN_RESIZE";
      
      public static const const_664:String = "WN_CHILD_REMOVED";
      
      public static const const_1711:String = "";
      
      public static const const_895:String = "WN_RESTORED";
      
      public static const const_339:String = "WN_SELECTED";
      
      public static const const_924:String = "WN_MINIMIZE";
      
      public static const const_839:String = "WN_FOCUSED";
      
      public static const const_1421:String = "WN_LOCK";
      
      public static const const_322:String = "WN_CHILD_ADDED";
      
      public static const const_979:String = "WN_UNFOCUSED";
      
      public static const const_422:String = "WN_RELOCATED";
      
      public static const const_837:String = "WN_DEACTIVATE";
      
      public static const const_1275:String = "WN_CRETAE";
      
      public static const const_974:String = "WN_RESTORE";
      
      public static const const_301:String = "WN_ACTVATED";
      
      public static const const_1220:String = "WN_LOCKED";
      
      public static const const_506:String = "WN_SELECT";
      
      public static const const_989:String = "WN_MAXIMIZE";
      
      public static const const_1030:String = "WN_OPEN";
      
      public static const const_681:String = "WN_UNSELECT";
      
      public static const const_1528:String = "WN_ARRANGE";
      
      public static const const_1444:String = "WN_UNLOCKED";
      
      public static const const_1670:String = "WN_UPDATED";
      
      public static const const_852:String = "WN_ACTIVATE";
      
      public static const const_1222:String = "WN_UNLOCK";
      
      public static const const_901:String = "WN_MAXIMIZED";
      
      public static const const_843:String = "WN_DESTROYED";
      
      public static const const_1056:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1726,cancelable);
      }
   }
}
