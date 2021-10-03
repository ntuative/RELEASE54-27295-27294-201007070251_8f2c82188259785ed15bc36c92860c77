package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_434:FloorRasterizer;
      
      private var var_939:Boolean = false;
      
      private var var_650:PlaneMaskManager;
      
      private var var_433:WallRasterizer;
      
      private var var_649:WallAdRasterizer;
      
      private var var_435:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_433 = new WallRasterizer();
         var_434 = new FloorRasterizer();
         var_649 = new WallAdRasterizer();
         var_435 = new LandscapeRasterizer();
         var_650 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_433;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_649;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_434;
      }
      
      public function get initialized() : Boolean
      {
         return var_939;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_650;
      }
      
      public function dispose() : void
      {
         if(var_433 != null)
         {
            var_433.dispose();
            var_433 = null;
         }
         if(var_434 != null)
         {
            var_434.dispose();
            var_434 = null;
         }
         if(var_649 != null)
         {
            var_649.dispose();
            var_649 = null;
         }
         if(var_435 != null)
         {
            var_435.dispose();
            var_435 = null;
         }
         if(var_650 != null)
         {
            var_650.dispose();
            var_650 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_433.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_434.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_649.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_435.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_650.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_433 != null)
         {
            var_433.clearCache();
         }
         if(var_434 != null)
         {
            var_434.clearCache();
         }
         if(var_435 != null)
         {
            var_435.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_435;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_939)
         {
            return;
         }
         var_433.initializeAssetCollection(param1);
         var_434.initializeAssetCollection(param1);
         var_649.initializeAssetCollection(param1);
         var_435.initializeAssetCollection(param1);
         var_650.initializeAssetCollection(param1);
         var_939 = true;
      }
   }
}
