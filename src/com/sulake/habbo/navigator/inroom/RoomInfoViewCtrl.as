package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.userdefinedroomevents.GetEventsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.navigator.userdefinedroomevents.UserDefinedRoomEventsCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_758:IWindowContainer;
      
      private var var_1101:ITextWindow;
      
      private var var_185:RoomSettingsCtrl;
      
      private var var_1321:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_210:Timer;
      
      private var var_2012:IWindowContainer;
      
      private var var_1319:ITextWindow;
      
      private var var_371:IWindowContainer;
      
      private var var_2013:ITextWindow;
      
      private var var_915:IWindowContainer;
      
      private var var_211:UserDefinedRoomEventsCtrl;
      
      private var var_1585:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_749:ITextWindow;
      
      private var var_1584:IWindowContainer;
      
      private var var_1317:IWindowContainer;
      
      private var var_917:ITextWindow;
      
      private var var_1102:ITextFieldWindow;
      
      private var var_277:IWindowContainer;
      
      private var var_918:ITextWindow;
      
      private var var_1581:IButtonWindow;
      
      private var var_1100:ITextWindow;
      
      private var var_2455:int;
      
      private var var_1318:IContainerButtonWindow;
      
      private var var_916:IWindowContainer;
      
      private var var_1322:ITextWindow;
      
      private var var_1320:IContainerButtonWindow;
      
      private var var_1582:ITextWindow;
      
      private var var_948:TagRenderer;
      
      private var var_1583:IButtonWindow;
      
      private var var_2010:ITextWindow;
      
      private var var_320:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_759:ITextWindow;
      
      private var var_239:RoomThumbnailCtrl;
      
      private var var_1316:IContainerButtonWindow;
      
      private var var_2011:IWindowContainer;
      
      private var var_276:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_320 = new RoomEventViewCtrl(_navigator);
         var_185 = new RoomSettingsCtrl(_navigator,this,true);
         var_239 = new RoomThumbnailCtrl(_navigator);
         var_211 = new UserDefinedRoomEventsCtrl(_navigator);
         var_948 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_185);
         var_210 = new Timer(6000,1);
         var_210.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_185.active = true;
         this.var_320.active = false;
         this.var_239.active = false;
         this.var_211.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1585.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1583.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1584.visible = Util.hasVisibleChildren(var_1584);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_749.text = param1.roomName;
         var_749.height = NaN;
         _ownerName.text = param1.ownerName;
         var_917.text = param1.description;
         var_948.refreshTags(var_371,param1.tags);
         var_917.visible = false;
         if(param1.description != "")
         {
            var_917.height = NaN;
            var_917.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_371,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_371,"thumb_down",_loc3_,onThumbDown,0);
         var_2013.visible = _loc3_;
         var_918.visible = !_loc3_;
         var_1582.visible = !_loc3_;
         var_1582.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_371,"home",param2,null,0);
         _navigator.refreshButton(var_371,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_371,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_749.y,0);
         var_371.visible = true;
         var_371.height = Util.getLowestPoint(var_371);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function startUserDefinedRoomEventsEdit() : void
      {
         this.var_210.reset();
         this.var_185.active = false;
         this.var_320.active = false;
         this.var_239.active = false;
         this.var_211.active = true;
         _navigator.send(new GetEventsMessageComposer());
      }
      
      public function dispose() : void
      {
         if(var_210)
         {
            var_210.removeEventListener(TimerEvent.TIMER,hideInfo);
            var_210.reset();
            var_210 = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_389,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false || false)
         {
            return;
         }
         var_1581.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1321.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1316.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1318.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1320.visible = _navigator.data.canEditRoomSettings && param1;
         var_1317.visible = Util.hasVisibleChildren(var_1317);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_210.reset();
         this.var_320.active = false;
         this.var_185.active = false;
         this.var_239.active = false;
         this.var_211.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_210.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_210.reset();
         this.var_320.active = false;
         this.var_185.active = false;
         this.var_239.active = false;
         this.var_211.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_389,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_277);
         var_277.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == _navigator.data.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_185.refresh(var_277);
         this.var_239.refresh(var_277);
         this.var_211.refresh(var_277);
         Util.moveChildrenToColumn(var_277,["room_details","room_buttons"],0,2);
         var_277.height = Util.getLowestPoint(var_277);
         var_277.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1102.setSelection(0,var_1102.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_276);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_320.refresh(var_276);
         if(Util.hasVisibleChildren(var_276) && !(this.var_239.active || this.var_211.active))
         {
            Util.moveChildrenToColumn(var_276,["event_details","event_buttons"],0,2);
            var_276.height = Util.getLowestPoint(var_276);
            var_276.visible = true;
         }
         else
         {
            var_276.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_210.reset();
         this.var_320.active = true;
         this.var_185.active = false;
         this.var_239.active = false;
         this.var_211.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_210.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false || false)
         {
            return;
         }
         var_1101.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1101.height = NaN;
         var_1319.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1319.height = NaN;
         Util.moveChildrenToColumn(var_758,["public_space_name","public_space_desc"],var_1101.y,0);
         var_758.visible = true;
         var_758.height = Math.max(86,Util.getLowestPoint(var_758));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function get userDefinedRoomEventsCtrl() : UserDefinedRoomEventsCtrl
      {
         return var_211;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "ParkBusCannotEnterMessageParser";
         if(_loc1_ && true && true && true && true)
         {
            var_916.visible = true;
            var_1102.text = this.getEmbedData();
         }
         else
         {
            var_916.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_210.reset();
         this.var_185.load(param1);
         this.var_185.active = true;
         this.var_320.active = false;
         this.var_239.active = false;
         this.var_211.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_210.reset();
         this.var_185.active = false;
         this.var_320.active = false;
         this.var_239.active = true;
         this.var_211.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_69,false);
         _window.setParamFlag(HabboWindowParam.const_1307,true);
         _window.visible = false;
         var_277 = IWindowContainer(find("room_info"));
         var_371 = IWindowContainer(find("room_details"));
         var_758 = IWindowContainer(find("public_space_details"));
         var_2011 = IWindowContainer(find("owner_name_cont"));
         var_2012 = IWindowContainer(find("rating_cont"));
         var_1317 = IWindowContainer(find("room_buttons"));
         var_749 = ITextWindow(find("room_name"));
         var_1101 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_917 = ITextWindow(find("room_desc"));
         var_1319 = ITextWindow(find("public_space_desc"));
         var_1100 = ITextWindow(find("owner_caption"));
         var_918 = ITextWindow(find("rating_caption"));
         var_2013 = ITextWindow(find("rate_caption"));
         var_1582 = ITextWindow(find("rating_txt"));
         var_276 = IWindowContainer(find("event_info"));
         var_915 = IWindowContainer(find("event_details"));
         var_1584 = IWindowContainer(find("event_buttons"));
         var_2010 = ITextWindow(find("event_name"));
         var_759 = ITextWindow(find("event_desc"));
         var_1321 = IContainerButtonWindow(find("add_favourite_button"));
         var_1316 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1318 = IContainerButtonWindow(find("make_home_button"));
         var_1320 = IContainerButtonWindow(find("unmake_home_button"));
         var_1581 = IButtonWindow(find("room_settings_button"));
         var_1585 = IButtonWindow(find("create_event_button"));
         var_1583 = IButtonWindow(find("edit_event_button"));
         var_916 = IWindowContainer(find("embed_info"));
         var_1322 = ITextWindow(find("embed_info_txt"));
         var_1102 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1321,onAddFavouriteClick);
         Util.setProcDirectly(var_1316,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1581,onRoomSettingsClick);
         Util.setProcDirectly(var_1318,onMakeHomeClick);
         Util.setProcDirectly(var_1320,onUnmakeHomeClick);
         Util.setProcDirectly(var_1585,onEventSettingsClick);
         Util.setProcDirectly(var_1583,onEventSettingsClick);
         Util.setProcDirectly(var_1102,onEmbedSrcClick);
         _navigator.refreshButton(var_1321,"favourite",true,null,0);
         _navigator.refreshButton(var_1316,"favourite",true,null,0);
         _navigator.refreshButton(var_1318,"home",true,null,0);
         _navigator.refreshButton(var_1320,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_277,onHover);
         Util.setProcDirectly(var_276,onHover);
         var_1100.width = var_1100.textWidth;
         Util.moveChildrenToRow(var_2011,["owner_caption","owner_name"],var_1100.x,var_1100.y,3);
         var_918.width = var_918.textWidth;
         Util.moveChildrenToRow(var_2012,["rating_caption","rating_txt"],var_918.x,var_918.y,3);
         var_1322.height = NaN;
         Util.moveChildrenToColumn(var_916,["embed_info_txt","embed_src_txt"],var_1322.y,2);
         var_916.height = Util.getLowestPoint(var_916) + 5;
         var_2455 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2010.text = param1.eventName;
         var_759.text = param1.eventDescription;
         var_948.refreshTags(var_915,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_759.visible = false;
         if(param1.eventDescription != "")
         {
            var_759.height = NaN;
            var_759.y = Util.getLowestPoint(var_915) + 2;
            var_759.visible = true;
         }
         var_915.visible = true;
         var_915.height = Util.getLowestPoint(var_915);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_983,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
