package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class FurnitureWaterAreaVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1171:String = "shore";
       
      
      private var var_982:Array;
      
      private var var_59:BitmapData = null;
      
      private var var_572:Array;
      
      private var var_389:Array;
      
      private var var_2304:int = -1;
      
      private var var_2305:int = -1;
      
      private var var_573:int = 0;
      
      private var var_673:int = 0;
      
      private var var_1432:Boolean = false;
      
      private var var_1686:Boolean = true;
      
      private var var_1687:int = 0;
      
      public function FurnitureWaterAreaVisualization()
      {
         var_389 = [];
         var_572 = [];
         var_982 = [];
         super();
      }
      
      private function getShoreAsset(param1:int) : IGraphicAsset
      {
         var _loc2_:String = super.getSpriteAssetName(getShoreSpriteIndex(param1),param1);
         return assetCollection.getAsset(_loc2_);
      }
      
      private function updateBorderData() : void
      {
         resetBorders();
         var _loc1_:* = int(object.getState(0));
         var _loc2_:Array = getAreaData();
         var _loc3_:int = var_573 + 2;
         var _loc4_:int = var_673 + 2;
         var _loc5_:int = 0;
         var _loc6_:Array = _loc2_[_loc4_ - 1];
         _loc5_ = _loc3_ - 1;
         while(_loc5_ >= 0)
         {
            if(_loc1_ & 1)
            {
               _loc6_[_loc5_] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         _loc5_ = _loc4_ - 2;
         while(_loc5_ >= 1)
         {
            _loc6_ = _loc2_[_loc5_];
            if(_loc1_ & 1)
            {
               _loc6_[_loc3_ - 1] = true;
            }
            _loc1_ >>= 1;
            if(_loc1_ & 1)
            {
               _loc6_[0] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         _loc6_ = _loc2_[0];
         _loc5_ = _loc3_ - 1;
         while(_loc5_ >= 0)
         {
            if(_loc1_ & 1)
            {
               _loc6_[_loc5_] = true;
            }
            _loc1_ >>= 1;
            _loc5_--;
         }
         var _loc7_:int = 0;
         _loc7_ = updateTopBorder(_loc2_,_loc7_);
         _loc7_ = updateRightBorder(_loc2_,_loc7_);
         _loc7_ = updateBottomBorder(_loc2_,_loc7_);
         _loc7_ = updateLeftBorder(_loc2_,_loc7_);
         var_1686 = false;
         _loc5_ = 0;
         while(_loc5_ < var_389.length)
         {
            if(false)
            {
               var_1686 = true;
            }
            _loc5_++;
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.updateAnimation(param1);
         return _loc2_ || updateInstanceShoreMask(param1);
      }
      
      private function updateTopBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = var_573 + 2;
         var _loc4_:Array = param1[0];
         var _loc5_:Array = param1[1];
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 1;
         while(_loc8_ < _loc3_ - 1)
         {
            if(_loc4_[_loc8_] == false)
            {
               var_389[param2] = true;
               if(_loc5_[_loc8_ - 1] == false && _loc4_[_loc8_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc4_[_loc8_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               if(_loc5_[_loc8_ + 1] == false && _loc4_[_loc8_ + 1] == false)
               {
                  _loc7_ = 0;
               }
               else if(_loc4_[_loc8_ + 1] == true)
               {
                  _loc7_ = 0;
               }
               else
               {
                  _loc7_ = 0;
               }
               var_572[param2] = ShoreMaskCreatorUtility.getBorderType(_loc6_,_loc7_);
            }
            param2++;
            _loc8_++;
         }
         return param2;
      }
      
      private function resetBorders() : void
      {
         var _loc2_:* = null;
         if(var_573 == 0 || var_673 == 0)
         {
            if(object == null || object.getModel() == null)
            {
               return;
            }
            _loc2_ = object.getModel();
            var_573 = _loc2_.getNumber(RoomObjectVariableEnum.const_291);
            var_673 = _loc2_.getNumber(RoomObjectVariableEnum.const_351);
         }
         var_389 = [];
         var_572 = [];
         var _loc1_:int = 0;
         while(_loc1_ < var_573 * 2 + var_673 * 2)
         {
            var_389.push(false);
            var_572.push(ShoreMaskCreatorUtility.const_70);
            _loc1_++;
         }
      }
      
      override protected function setAnimation(param1:int) : void
      {
         super.setAnimation(0);
      }
      
      private function updateRightBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = var_573 + 2;
         var _loc4_:int = var_673 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 1;
         while(_loc10_ < _loc4_ - 1)
         {
            _loc7_ = param1[_loc10_];
            _loc8_ = param1[_loc10_ - 1];
            _loc9_ = param1[_loc10_ + 1];
            if(_loc7_[_loc3_ - 1] == false)
            {
               var_389[param2] = true;
               if(_loc8_[_loc3_ - 2] == false && _loc8_[_loc3_ - 1] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc8_[_loc3_ - 1] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc9_[_loc3_ - 2] == false && _loc9_[_loc3_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc9_[_loc3_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               var_572[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc10_++;
         }
         return param2;
      }
      
      private function getAreaData() : Array
      {
         var _loc1_:int = var_573 + 2;
         var _loc2_:int = var_673 + 2;
         var _loc3_:* = [];
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc4_ = [];
            _loc5_ = _loc1_ - 1;
            while(_loc5_ >= 0)
            {
               _loc4_.push(false);
               _loc5_--;
            }
            _loc3_.push(_loc4_);
            _loc6_++;
         }
         _loc6_ = 1;
         while(_loc6_ < _loc2_ - 1)
         {
            _loc4_ = _loc3_[_loc6_];
            _loc5_ = 1;
            while(_loc5_ < _loc1_ - 1)
            {
               _loc4_[_loc5_] = true;
               _loc5_++;
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      private function initializeShoreMasks(param1:Number) : Boolean
      {
         return ShoreMaskCreatorUtility.initializeShoreMasks(getSize(param1),assetCollection,getShoreAsset(param1));
      }
      
      private function getShoreSpriteIndex(param1:int) : int
      {
         if(var_2305 == param1 && var_2304 == _direction)
         {
            return var_1687;
         }
         var_2305 = param1;
         var_2304 = _direction;
         var _loc2_:int = spriteCount - 1;
         while(_loc2_ >= 0)
         {
            if(getSpriteTag(_loc2_,_direction,param1) == const_1171)
            {
               var_1687 = _loc2_;
               break;
            }
            _loc2_--;
         }
         return var_1687;
      }
      
      private function getInstanceMask(param1:int) : IGraphicAsset
      {
         var _loc2_:int = getSize(param1);
         var _loc3_:IGraphicAsset = ShoreMaskCreatorUtility.getInstanceMask(object.getInstanceId(),_loc2_,assetCollection,getShoreAsset(param1));
         if(_loc3_ != null)
         {
            if(var_982.indexOf(_loc2_) < 0)
            {
               var_982.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private function updateInstanceShoreMask(param1:Number) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!var_1432)
         {
            return false;
         }
         var _loc2_:IGraphicAsset = getInstanceMask(param1);
         if(_loc2_ != null && _loc2_.asset != null && initializeShoreMasks(param1))
         {
            _loc3_ = _loc2_.asset.content as BitmapData;
            if(_loc3_ != null)
            {
               _loc4_ = createShoreMask(_loc3_.width,_loc3_.height,param1);
               _loc5_ = getShoreAsset(param1);
               if(_loc5_ != null && _loc5_.asset != null)
               {
                  _loc6_ = _loc5_.asset.content as BitmapData;
                  if(_loc6_ != null)
                  {
                     _loc3_.fillRect(_loc3_.rect,0);
                     _loc3_.copyPixels(_loc6_,_loc6_.rect,new Point(0,0),_loc4_,new Point(0,0),true);
                  }
               }
            }
            var_1432 = false;
            return true;
         }
         return false;
      }
      
      private function createShoreMask(param1:int, param2:int, param3:Number) : BitmapData
      {
         if(var_59 == null || var_59.width < param1 || var_59.height < param2)
         {
            if(var_59 != null)
            {
               var_59.dispose();
            }
            var_59 = ShoreMaskCreatorUtility.createEmptyMask(param1,param2);
         }
         return ShoreMaskCreatorUtility.createShoreMask2x2(var_59,getSize(param3),var_389,var_572,assetCollection);
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(assetCollection != null)
         {
            for each(_loc1_ in var_982)
            {
               ShoreMaskCreatorUtility.disposeInstanceMask(object.getInstanceId(),_loc1_,assetCollection);
            }
            var_982 = [];
         }
         if(var_59 != null)
         {
            var_59.dispose();
            var_59 = null;
         }
         super.dispose();
      }
      
      override protected function getSpriteAssetName(param1:int, param2:Number) : String
      {
         if(param2 == 1 || param1 != getShoreSpriteIndex(param2))
         {
            return super.getSpriteAssetName(param1,param2);
         }
         return ShoreMaskCreatorUtility.getInstanceMaskName(object.getInstanceId(),getSize(param2));
      }
      
      override protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         if(super.updateObject(param1,param2))
         {
            var_1432 = true;
            updateBorderData();
            return true;
         }
         return false;
      }
      
      private function updateBottomBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = var_573 + 2;
         var _loc4_:int = var_673 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = param1[_loc4_ - 1];
         var _loc8_:Array = param1[_loc4_ - 2];
         var _loc9_:int = _loc3_ - 2;
         while(_loc9_ >= 1)
         {
            if(_loc7_[_loc9_] == false)
            {
               var_389[param2] = true;
               if(_loc8_[_loc9_ + 1] == false && _loc7_[_loc9_ + 1] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc7_[_loc9_ + 1] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc8_[_loc9_ - 1] == false && _loc7_[_loc9_ - 1] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc7_[_loc9_ - 1] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               var_572[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc9_--;
         }
         return param2;
      }
      
      private function updateLeftBorder(param1:Array, param2:int) : int
      {
         var _loc3_:int = var_573 + 2;
         var _loc4_:int = var_673 + 2;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = _loc4_ - 2;
         while(_loc10_ >= 1)
         {
            _loc7_ = param1[_loc10_];
            _loc8_ = param1[_loc10_ + 1];
            _loc9_ = param1[_loc10_ - 1];
            if(_loc7_[0] == false)
            {
               var_389[param2] = true;
               if(_loc8_[1] == false && _loc8_[0] == false)
               {
                  _loc5_ = 0;
               }
               else if(_loc8_[0] == true)
               {
                  _loc5_ = 0;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(_loc9_[1] == false && _loc9_[0] == false)
               {
                  _loc6_ = 0;
               }
               else if(_loc9_[0] == true)
               {
                  _loc6_ = 0;
               }
               else
               {
                  _loc6_ = 0;
               }
               var_572[param2] = ShoreMaskCreatorUtility.getBorderType(_loc5_,_loc6_);
            }
            param2++;
            _loc10_--;
         }
         return param2;
      }
   }
}
