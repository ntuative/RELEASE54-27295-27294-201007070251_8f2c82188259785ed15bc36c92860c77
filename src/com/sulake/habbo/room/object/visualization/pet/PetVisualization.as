package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IPetImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IPetImageListener
   {
      
      private static const const_831:int = 2;
      
      private static const const_1146:Array = [0,0,0];
       
      
      private var var_420:String;
      
      private const const_1485:int = 1;
      
      private var var_470:String = "";
      
      private var var_784:int = 0;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1851:int = 0;
      
      private var var_1233:String = "";
      
      private var var_1968:Boolean = false;
      
      private var var_404:Boolean;
      
      private const const_1147:int = 3;
      
      private var var_1619:String = "";
      
      private var var_67:IAvatarImage = null;
      
      private var var_783:int = 0;
      
      private const const_1750:int = 3;
      
      private var var_1302:int = -1;
      
      private var var_1376:Boolean = false;
      
      private var var_1697:int = -1;
      
      private var var_699:int = 0;
      
      private var var_2468:Array;
      
      private const const_1176:int = 0;
      
      private var var_1455:Boolean = false;
      
      private var var_1699:int = -1;
      
      private var var_379:ExperienceData;
      
      private var var_1618:Number = NaN;
      
      private var var_991:Boolean = false;
      
      private var var_1454:Boolean = false;
      
      private var var_338:BitmapDataAsset;
      
      private const const_1496:int = 2;
      
      private var var_1131:int = 0;
      
      private var _visualizationData:PetVisualizationData = null;
      
      private var var_550:Map;
      
      private var var_1377:Boolean = false;
      
      public function PetVisualization()
      {
         super();
         var_2468 = new Array();
         var_550 = new Map();
         var_404 = false;
      }
      
      public function imageReady() : void
      {
         var_1376 = true;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_468,var_470,var_1619);
         if(var_1233 != null && var_1233 != "")
         {
            param1.appendAction(AvatarAction.const_281,var_1233);
         }
         if(var_1968 || var_1454)
         {
            param1.appendAction(AvatarAction.const_411);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + const_1147;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         var_1377 = false;
         switch(var_470)
         {
            case AvatarAction.const_626:
            case AvatarAction.const_958:
            case AvatarAction.const_997:
            case AvatarAction.const_1033:
            case AvatarAction.const_919:
            case AvatarAction.const_850:
            case AvatarAction.const_566:
            case AvatarAction.const_295:
            case AvatarAction.const_250:
               var_1377 = true;
         }
         var_1455 = false;
         var_991 = false;
         if(var_470 == "lay")
         {
            var_991 = true;
            _loc1_ = int(var_1619);
            if(_loc1_ < 0)
            {
               var_1455 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_550)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_550.reset();
         var_67 = null;
      }
      
      public function petImageReady(param1:String) : void
      {
         resetAvatarImages();
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         _visualizationData = param1 as PetVisualizationData;
         createSprites(const_1147);
         var_379 = new ExperienceData(_visualizationData);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_550 != null)
         {
            _loc1_ = var_550.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_550.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_550.dispose();
         if(var_379)
         {
            var_379.dispose();
         }
         var_379 = null;
         _visualizationData = null;
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(const_1485);
         var_338 = null;
         _loc2_ = getSprite(const_1485);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            var_338 = var_67.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            var_338 = var_67.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(var_338)
         {
            _loc2_.asset = var_338.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_550.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = _visualizationData.getAvatar(var_420,param1,this);
            if(_loc3_ != null)
            {
               var_550.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_170)
         {
            var_1968 = param1.getNumber(RoomObjectVariableEnum.const_381) > 0;
            var_1233 = param1.getString(RoomObjectVariableEnum.const_252);
            var_470 = param1.getString(RoomObjectVariableEnum.const_479);
            var_1619 = param1.getString(RoomObjectVariableEnum.const_599);
            var_1618 = param1.getNumber(RoomObjectVariableEnum.const_309);
            var_1131 = param1.getNumber(RoomObjectVariableEnum.const_848);
            var_1851 = param1.getNumber(RoomObjectVariableEnum.const_946);
            validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_156);
            if(var_420 != _loc3_)
            {
               var_420 = _loc3_;
               resetAvatarImages();
            }
            var_170 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(_visualizationData == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         if(var_1376)
         {
            var_1376 = false;
            var_784 = 0;
            var_783 = 1;
            resetAvatarImages();
         }
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc8_ || _loc5_ != var_156 || var_67 == null)
         {
            if(_loc5_ != var_156)
            {
               var_156 = _loc5_;
               _loc6_ = true;
            }
            if(_loc6_ || var_67 == null)
            {
               var_67 = getAvatarImage(_loc5_);
            }
            if(var_67 == null)
            {
               return;
            }
            if(_loc6_)
            {
               updateShadow(_loc5_);
            }
            _loc7_ = updateObject(_loc3_,param1,true);
            updateActions(var_67);
         }
         else
         {
            _loc7_ = updateObject(_loc3_,param1);
         }
         var _loc9_:Boolean = _loc7_ || _loc8_ || _loc6_;
         var _loc10_:Boolean = var_404 || var_783 > 0 || var_1377;
         var_379.alpha = 0;
         if(var_1131 > 0)
         {
            _loc11_ = param2 - var_1131;
            if(_loc11_ < AvatarAction.const_976)
            {
               var_379.alpha = int(Math.sin(_loc11_ / 0 * 0) * 255);
               var_379.setExperience(var_1851);
               var_783 = const_1750;
            }
            else
            {
               var_1131 = 0;
            }
            _loc12_ = getSprite(const_1496);
            if(_loc12_ != null)
            {
               if(false)
               {
                  _loc12_.asset = var_379.image;
                  _loc12_.offsetX = -20;
                  _loc12_.offsetY = -80;
                  _loc12_.alpha = var_379.alpha;
                  _loc12_.visible = true;
               }
               else
               {
                  _loc12_.asset = null;
                  _loc12_.visible = false;
               }
            }
         }
         if(_loc9_ || _loc10_)
         {
            increaseUpdateId();
            --var_783;
            ++var_699;
            --var_784;
            if(!(var_784 <= 0 || _loc6_))
            {
               return;
            }
            var_67.updateAnimationByFrames(1);
            var_784 = const_831;
            var_404 = var_67.isAnimating();
            _loc13_ = var_67.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1146;
            }
            _loc14_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc14_ = Math.min(_loc5_ / 2.75,0);
            }
            _loc12_ = getSprite(const_1176);
            if(_loc12_)
            {
               _loc17_ = var_67.getImage(AvatarSetType.const_30,false);
               if(_loc17_ != null)
               {
                  _loc12_.asset = _loc17_;
               }
               if(_loc5_ < 48)
               {
                  _loc12_.offsetX = -16 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 8 + _loc13_[1] + _loc14_;
               }
               else
               {
                  _loc12_.offsetX = -32 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 16 + _loc13_[1] + _loc14_;
               }
            }
            _loc15_ = const_1147;
            for each(_loc16_ in var_67.getSprites())
            {
               _loc12_ = getSprite(_loc15_);
               if(_loc12_ != null)
               {
                  _loc18_ = var_67.getLayerData(_loc16_);
                  _loc19_ = 0;
                  _loc20_ = _loc16_.getDirectionOffsetX(var_67.getDirection());
                  _loc21_ = _loc16_.getDirectionOffsetY(var_67.getDirection());
                  _loc22_ = _loc16_.getDirectionOffsetZ(var_67.getDirection());
                  _loc23_ = 0;
                  if(_loc16_.hasDirections)
                  {
                     _loc23_ = var_67.getDirection();
                  }
                  if(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.animationFrame;
                     _loc20_ += _loc18_.dx;
                     _loc21_ += _loc18_.dy;
                     _loc23_ += _loc18_.directionOffset;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  if(_loc23_ < 0)
                  {
                     _loc23_ += 8;
                  }
                  if(_loc23_ > 7)
                  {
                     _loc23_ -= 8;
                  }
                  _loc24_ = var_67.getScale() + "_" + _loc16_.member + "_" + _loc23_ + "_" + _loc19_;
                  _loc25_ = var_67.getAsset(_loc24_);
                  if(_loc25_ != null)
                  {
                     _loc12_.asset = _loc25_.content as BitmapData;
                     _loc12_.offsetX = -1 * _loc25_.offset.x - _loc5_ / 2 + _loc20_;
                     _loc12_.offsetY = -1 * _loc25_.offset.y + _loc21_;
                     _loc12_.relativeDepth = -0.01 - 0.1 * _loc15_ * _loc22_;
                     if(_loc16_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                     _loc15_++;
                  }
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_305 != param1.getUpdateID() || var_1302 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1618;
            if(isNaN(var_1618))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != var_1697 || param3)
            {
               var_1697 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_67.setDirectionAngle(AvatarSetType.const_30,_loc4_);
            }
            if(_loc5_ != var_1699 || param3)
            {
               var_1699 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               var_67.setDirectionAngle(AvatarSetType.const_41,_loc5_);
            }
            var_305 = param1.getUpdateID();
            var_1302 = param2.updateId;
            return true;
         }
         return false;
      }
   }
}
