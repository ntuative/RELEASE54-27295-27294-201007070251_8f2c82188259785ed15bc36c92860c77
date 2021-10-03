package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_663:RoomObjectLocationCacheItem = null;
      
      private var var_184:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_663 = new RoomObjectLocationCacheItem(param1);
         var_184 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_663;
      }
      
      public function dispose() : void
      {
         if(var_663 != null)
         {
            var_663.dispose();
            var_663 = null;
         }
         if(var_184 != null)
         {
            var_184.dispose();
            var_184 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_184;
      }
   }
}
