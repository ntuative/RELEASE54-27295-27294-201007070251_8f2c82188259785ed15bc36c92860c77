package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.UserDefinedRoomEvents;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1493:int = 10;
       
      
      private var var_2333:Boolean;
      
      private var var_2326:int;
      
      private var var_1437:int;
      
      private var var_2332:Boolean;
      
      private var var_1162:Array;
      
      private var var_984:Dictionary;
      
      private var var_1161:Array;
      
      private var var_2489:int;
      
      private var var_2335:int;
      
      private var var_2334:UserDefinedRoomEvents;
      
      private var var_1691:int;
      
      private var var_2328:int;
      
      private var var_2327:int;
      
      private var var_676:PublicRoomShortData;
      
      private var var_465:RoomEventData;
      
      private var var_148:MsgWithRequestId;
      
      private var var_2329:Boolean;
      
      private var var_2330:Array;
      
      private var _navigator:HabboNavigator;
      
      private var var_2331:Boolean;
      
      private var var_219:GuestRoomData;
      
      private var var_811:Boolean;
      
      private var var_675:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1162 = new Array();
         var_1161 = new Array();
         var_984 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_148 != null && var_148 as PopularRoomTagsData != null;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2331;
      }
      
      public function startLoading() : void
      {
         this.var_811 = true;
      }
      
      public function get createdFlatId() : int
      {
         return var_2326;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2331 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_465 != null)
         {
            var_465.dispose();
         }
         var_465 = param1;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function get homeRoomId() : int
      {
         return var_1691;
      }
      
      public function get stuffStates() : Array
      {
         return var_2330;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_148 != null && var_148 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_148 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_219;
      }
      
      public function get allCategories() : Array
      {
         return var_1162;
      }
      
      public function onRoomExit() : void
      {
         if(var_465 != null)
         {
            var_465.dispose();
            var_465 = null;
         }
         if(var_676 != null)
         {
            var_676.dispose();
            var_676 = null;
         }
         if(var_219 != null)
         {
            var_219.dispose();
            var_219 = null;
         }
         var_675 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_148 = param1;
         var_811 = false;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_219 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1691 == _loc1_;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_148 = param1;
         var_811 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_676 = null;
         var_219 = null;
         var_675 = false;
         if(param1.guestRoom)
         {
            var_675 = param1.owner;
         }
         else
         {
            var_676 = param1.publicSpace;
            var_465 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return var_675;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2489 = param1.limit;
         this.var_1437 = param1.favouriteRoomIds.length;
         this.var_984 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_984[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_148 as PopularRoomTagsData;
      }
      
      public function get settingsReceived() : Boolean
      {
         return var_2333;
      }
      
      public function set stuffStates(param1:Array) : void
      {
         var_2330 = param1;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_676;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_148 = param1;
         var_811 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2327 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_219 != null && var_675;
      }
      
      public function get userDefinedRoomEvents() : UserDefinedRoomEvents
      {
         return var_2334;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2332;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1162 = param1;
         var_1161 = new Array();
         for each(_loc2_ in var_1162)
         {
            if(_loc2_.visible)
            {
               var_1161.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2335;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2328;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1161;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_148 == null)
         {
            return;
         }
         var_148.dispose();
         var_148 = null;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         var_2333 = param1;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_465;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_984[param1] = !!param2 ? "yes" : null;
         var_1437 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_148 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2327;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_148 != null && var_148 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2332 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2335 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2329 = param1;
      }
      
      public function set userDefinedRoomEvents(param1:UserDefinedRoomEvents) : void
      {
         var_2334 = param1;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_811;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         var_1691 = param1;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1437 >= var_2489;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_219 != null)
         {
            var_219.dispose();
         }
         var_219 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2328 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2329;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_219 != null && !var_675;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2326 = param1;
      }
   }
}
