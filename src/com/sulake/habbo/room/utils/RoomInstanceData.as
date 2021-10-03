package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_999:LegacyWallGeometry = null;
      
      private var var_680:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_679:TileHeightMap = null;
      
      private var var_2373:String = null;
      
      private var _roomId:int = 0;
      
      private var var_681:SelectedRoomObjectData = null;
      
      private var var_998:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_999 = new LegacyWallGeometry();
         var_998 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_680 != null)
         {
            var_680.dispose();
         }
         var_680 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_679 != null)
         {
            var_679.dispose();
         }
         var_679 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2373 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_999;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_681;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_998;
      }
      
      public function dispose() : void
      {
         if(var_679 != null)
         {
            var_679.dispose();
            var_679 = null;
         }
         if(var_999 != null)
         {
            var_999.dispose();
            var_999 = null;
         }
         if(var_998 != null)
         {
            var_998.dispose();
            var_998 = null;
         }
         if(var_680 != null)
         {
            var_680.dispose();
            var_680 = null;
         }
         if(var_681 != null)
         {
            var_681.dispose();
            var_681 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_679;
      }
      
      public function get worldType() : String
      {
         return var_2373;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_681 != null)
         {
            var_681.dispose();
         }
         var_681 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_680;
      }
   }
}
