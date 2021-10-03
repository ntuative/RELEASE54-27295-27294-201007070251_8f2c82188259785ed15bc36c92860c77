package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputDisplayEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatInputWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class RoomChatInputWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_1126:int = 2;
      
      private static const const_1481:int = 150;
      
      private static const const_1128:int = 3000;
      
      private static const const_1127:int = 30000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1346:int;
      
      private var var_1347:Boolean = false;
      
      private var var_1348:String = "";
      
      private var var_432:int = -1;
      
      private var var_936:Timer = null;
      
      private var _visualization:RoomChatInputView;
      
      private var var_2077:Boolean = false;
      
      private var var_935:Boolean = false;
      
      private var var_770:int = 0;
      
      private var var_25:Component = null;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         var_1346 = getTimer();
         super(param1,param2,param3);
         var_25 = param4;
         var_25.registerUpdateReceiver(this,9);
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(var_935)
         {
            return;
         }
         checkForFlooding();
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_622,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(_visualization != null)
         {
            var_770 = var_770 - 1;
            _visualization.showFloodBlocking(var_770);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_350,method_7);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_199,onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_277,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_732,onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_211,onUserInfo);
         param1.addEventListener(RoomWidgetChatInputDisplayEvent.const_621,onSettings);
         super.registerUpdateEvents(param1);
      }
      
      public function update(param1:uint) : void
      {
         if(var_1347)
         {
            var_1347 = false;
            throw new CrashMeError();
         }
      }
      
      public function get allowPaste() : Boolean
      {
         return var_2077;
      }
      
      public function get floodBlocked() : Boolean
      {
         return var_935;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         if(_visualization == null)
         {
            _visualization = new RoomChatInputView(this,windowManager,assets,localizations);
         }
         refreshWindowPosition();
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         var_935 = false;
         var_432 = -1;
         if(_visualization != null)
         {
            _visualization.hideFloodBlocking();
         }
         var_936 = null;
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var_1348 = param1.name;
      }
      
      private function onSettings(param1:RoomWidgetChatInputDisplayEvent) : void
      {
         var_2077 = param1.allowPaste;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_845:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               _visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1279:
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_350,method_7);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_199,onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_277,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_732,onChatInputUpdate);
         param1.removeEventListener(RoomWidgetChatInputDisplayEvent.const_621,onSettings);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_211,onUserInfo);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var_1348 = "";
      }
      
      override public function dispose() : void
      {
         if(_visualization != null)
         {
            _visualization.dispose();
            _visualization = null;
         }
         var_25.removeUpdateReceiver(this);
         _disposed = true;
         super.dispose();
      }
      
      private function checkForFlooding() : Boolean
      {
         if(var_935)
         {
            return true;
         }
         var _loc1_:int = getTimer();
         if(var_432 == -1)
         {
            var_432 = 0;
            var_1346 = _loc1_;
         }
         else
         {
            ++var_432;
         }
         if(var_432 > const_1126)
         {
            if(_loc1_ < var_1346 + const_1128)
            {
               var_935 = true;
               var_770 = const_1127 / 1000;
               Logger.log("Enabling flood blocking");
               var_936 = new Timer(1000,var_770);
               var_936.addEventListener(TimerEvent.TIMER,onReleaseTimerTick);
               var_936.addEventListener(TimerEvent.TIMER_COMPLETE,onReleaseTimerComplete);
               var_936.start();
               if(_visualization != null)
               {
                  _visualization.showFloodBlocking(var_770);
               }
               return true;
            }
            var_432 = -1;
         }
         return false;
      }
      
      public function triggerManualCrash() : void
      {
         var_1347 = true;
      }
      
      private function method_7(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_303,param1.id,param1.category);
      }
      
      public function get selectedUserName() : String
      {
         return var_1348;
      }
      
      private function refreshWindowPosition() : void
      {
         if(_visualization == null)
         {
            return;
         }
         var _loc1_:RoomWidgetChatInputWidgetMessage = new RoomWidgetChatInputWidgetMessage(RoomWidgetChatInputWidgetMessage.const_533,_visualization.window);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
   }
}
