package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
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
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_831:int = 2;
      
      private static const const_1146:Array = [0,0,0];
       
      
      private var var_817:int = 0;
      
      private var var_420:String;
      
      private var var_1779:int = 0;
      
      private const const_1485:int = 1;
      
      private var var_470:String = "";
      
      private var var_784:int = 0;
      
      private var var_1233:int = 0;
      
      private var var_1968:Boolean = false;
      
      private var var_404:Boolean;
      
      private const const_1147:int = 3;
      
      private var var_1176:int = 0;
      
      private var _effectType:int = 0;
      
      private var var_67:IAvatarImage = null;
      
      private var var_1619:String = "";
      
      private var var_2025:Boolean = false;
      
      private var var_539:Boolean = false;
      
      private var var_2351:Boolean = false;
      
      private var var_783:int = 0;
      
      private var _isDisposed:Boolean;
      
      private const const_1750:int = 3;
      
      private var var_1302:int = -1;
      
      private var var_1699:int = -1;
      
      private var var_1455:Boolean = false;
      
      private var var_2468:Array;
      
      private const const_1176:int = 0;
      
      private var var_1697:int = -1;
      
      private var var_1618:int = -1;
      
      private var var_1177:int = 0;
      
      private var var_1698:int = 0;
      
      private var var_626:String;
      
      private var var_991:Boolean = false;
      
      private var var_1454:Boolean = false;
      
      private var var_575:BitmapDataAsset;
      
      private const const_1496:int = 2;
      
      private var _visualizationData:AvatarVisualizationData = null;
      
      private var var_338:BitmapDataAsset;
      
      private var var_550:Map;
      
      public function AvatarVisualization()
      {
         var_2468 = new Array();
         super();
         var_550 = new Map();
         var_404 = false;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         _visualizationData = param1 as AvatarVisualizationData;
         createSprites(const_1147);
         return true;
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            var_1454 = false;
         }
         if(var_470 == "sit" || var_470 == "lay")
         {
            var_1176 = param1 / 2;
         }
         else
         {
            var_1176 = 0;
         }
         var_1455 = false;
         var_991 = false;
         if(var_470 == "lay")
         {
            var_991 = true;
            _loc2_ = int(var_1619);
            if(_loc2_ < 0)
            {
               var_1455 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_170)
         {
            var_2351 = param1.getNumber(RoomObjectVariableEnum.const_227) > 0;
            var_2025 = param1.getNumber(RoomObjectVariableEnum.const_241) > 0;
            var_1968 = param1.getNumber(RoomObjectVariableEnum.const_381) > 0;
            var_1454 = param1.getNumber(RoomObjectVariableEnum.const_694) > 0;
            var_539 = param1.getNumber(RoomObjectVariableEnum.const_876) > 0;
            var_1233 = param1.getNumber(RoomObjectVariableEnum.const_252);
            var_470 = param1.getString(RoomObjectVariableEnum.const_479);
            var_1619 = param1.getString(RoomObjectVariableEnum.const_599);
            var_1698 = param1.getNumber(RoomObjectVariableEnum.const_1000);
            _effectType = param1.getNumber(RoomObjectVariableEnum.const_406);
            var_1177 = param1.getNumber(RoomObjectVariableEnum.const_439);
            var_817 = param1.getNumber(RoomObjectVariableEnum.const_344);
            var_1618 = param1.getNumber(RoomObjectVariableEnum.const_309);
            if(var_1177 > 0 && param1.getNumber(RoomObjectVariableEnum.const_344) > 0)
            {
               var_817 = var_1177;
            }
            else
            {
               var_817 = 0;
            }
            validateActions(param2);
            var_626 = param1.getString(RoomObjectVariableEnum.const_887);
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_156);
            updateFigure(_loc3_);
            var_170 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_550)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_550.reset();
         var_67 = null;
         _loc2_ = getSprite(const_1176);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
         }
      }
      
      private function updateFigure(param1:String) : void
      {
         if(var_420 != param1)
         {
            var_420 = param1;
            resetImages();
         }
      }
      
      override public function dispose() : void
      {
         if(var_550 != null)
         {
            resetImages();
            var_550.dispose();
            var_550 = null;
         }
         _visualizationData = null;
         var_338 = null;
         var_575 = null;
         super.dispose();
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(const_1485);
         var_338 = null;
         if(var_470 == "mv" || var_470 == "std")
         {
            _loc2_.visible = true;
            if(var_338 == null || param1 != var_156)
            {
               _loc3_ = 0;
               _loc4_ = 0;
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
               if(var_338 != null)
               {
                  _loc2_.asset = var_338.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            var_338 = null;
            _loc2_.visible = false;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_550.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = _visualizationData.getAvatar(var_420,param1,var_626,this);
            if(_loc3_ != null)
            {
               var_550.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         resetImages();
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var_575 = null;
         var _loc2_:IRoomObjectSprite = getSprite(const_1496);
         if(var_539)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               var_575 = _visualizationData.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               var_575 = _visualizationData.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(var_470 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(var_470 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(var_575 != null)
            {
               _loc2_.asset = var_575.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
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
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc9_ || _loc5_ != var_156 || var_67 == null)
         {
            if(_loc5_ != var_156)
            {
               _loc7_ = true;
               validateActions(_loc5_);
            }
            if(_loc7_ || var_67 == null)
            {
               var_67 = getAvatarImage(_loc5_);
               _loc6_ = true;
            }
            if(var_67 == null)
            {
               return;
            }
            updateShadow(_loc5_);
            updateTypingBubble(_loc5_);
            _loc8_ = updateObject(_loc3_,param1,true);
            updateActions(var_67);
            var_156 = _loc5_;
         }
         else
         {
            _loc8_ = updateObject(_loc3_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = var_404 || var_783 > 0;
         if(_loc10_)
         {
            var_783 = const_831;
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --var_783;
            --var_784;
            if(!(var_784 <= 0 || _loc7_ || _loc9_ || _loc6_))
            {
               return;
            }
            var_67.updateAnimationByFrames(1);
            var_784 = const_831;
            _loc13_ = var_67.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1146;
            }
            _loc12_ = getSprite(const_1176);
            if(_loc12_ != null)
            {
               _loc16_ = var_67.getImage(AvatarSetType.const_30,false);
               if(_loc16_ != null)
               {
                  _loc12_.asset = _loc16_;
               }
               if(_loc12_.asset)
               {
                  _loc12_.offsetX = -1 * _loc5_ / 2 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + _loc5_ / 4 + _loc13_[1] + var_1176;
               }
               if(var_991)
               {
                  if(var_1455)
                  {
                     _loc12_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc12_.relativeDepth = -0.409 + _loc13_[2];
                  }
               }
               else
               {
                  _loc12_.relativeDepth = -0.01 + _loc13_[2];
               }
            }
            _loc12_ = getSprite(const_1496);
            if(_loc12_ != null && _loc12_.visible)
            {
               if(!var_991)
               {
                  _loc12_.relativeDepth = -0.02 + _loc13_[2];
               }
               else
               {
                  _loc12_.relativeDepth = -0.44 + _loc13_[2];
               }
            }
            var_404 = var_67.isAnimating();
            _loc14_ = const_1147;
            for each(_loc15_ in var_67.getSprites())
            {
               if(_loc15_.id == "avatar")
               {
                  _loc12_ = getSprite(const_1176);
                  _loc17_ = var_67.getLayerData(_loc15_);
                  _loc18_ = _loc15_.getDirectionOffsetX(var_67.getDirection());
                  _loc19_ = _loc15_.getDirectionOffsetY(var_67.getDirection());
                  if(_loc17_ != null)
                  {
                     _loc18_ += _loc17_.dx;
                     _loc19_ += _loc17_.dy;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc18_ /= 2;
                     _loc19_ /= 2;
                  }
                  _loc12_.offsetX += _loc18_;
                  _loc12_.offsetY += _loc19_;
               }
               else
               {
                  _loc12_ = getSprite(_loc14_);
                  if(_loc12_ != null)
                  {
                     _loc12_.visible = true;
                     _loc20_ = var_67.getLayerData(_loc15_);
                     _loc21_ = 0;
                     _loc22_ = _loc15_.getDirectionOffsetX(var_67.getDirection());
                     _loc23_ = _loc15_.getDirectionOffsetY(var_67.getDirection());
                     _loc24_ = _loc15_.getDirectionOffsetZ(var_67.getDirection());
                     _loc25_ = 0;
                     if(_loc15_.hasDirections)
                     {
                        _loc25_ = var_67.getDirection();
                     }
                     if(_loc20_ != null)
                     {
                        _loc21_ = _loc20_.animationFrame;
                        _loc22_ += _loc20_.dx;
                        _loc23_ += _loc20_.dy;
                        _loc25_ += _loc20_.directionOffset;
                     }
                     if(_loc5_ < 48)
                     {
                        _loc22_ /= 2;
                        _loc23_ /= 2;
                     }
                     if(_loc25_ < 0)
                     {
                        _loc25_ += 8;
                     }
                     else if(_loc25_ > 7)
                     {
                        _loc25_ -= 8;
                     }
                     _loc26_ = var_67.getScale() + "_" + _loc15_.member + "_" + _loc25_ + "_" + _loc21_;
                     _loc27_ = var_67.getAsset(_loc26_);
                     if(_loc27_ == null)
                     {
                        continue;
                     }
                     _loc12_.asset = _loc27_.content as BitmapData;
                     _loc12_.offsetX = -_loc27_.offset.x - _loc5_ / 2 + _loc22_;
                     _loc12_.offsetY = -_loc27_.offset.y + _loc23_ + var_1176;
                     if(var_991)
                     {
                        _loc12_.relativeDepth = -0.409 - 0.1 * spriteCount * _loc24_;
                     }
                     else
                     {
                        _loc12_.relativeDepth = -0.01 - 0.1 * spriteCount * _loc24_;
                     }
                     if(_loc15_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc14_++;
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
            if(var_470 == "float")
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
            }
            _loc5_ = (_loc5_ % 360 + 360) % 360;
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
               if(var_1699 != var_1697)
               {
                  _loc5_ -= 112.5;
                  _loc5_ = (_loc5_ + 360) % 360;
                  var_67.setDirectionAngle(AvatarSetType.const_41,_loc5_);
               }
            }
            var_305 = param1.getUpdateID();
            var_1302 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_468,var_470,var_1619);
         if(var_1233 > 0)
         {
            param1.appendAction(AvatarAction.const_281,AvatarAction.const_1295[var_1233]);
         }
         if(var_1698 > 0)
         {
            param1.appendAction(AvatarAction.const_1040,var_1698);
         }
         if(var_1779 > 0)
         {
            param1.appendAction(AvatarAction.const_944,var_1779);
         }
         if(var_1177 > 0)
         {
            param1.appendAction(AvatarAction.const_909,var_1177);
         }
         if(var_817 > 0)
         {
            param1.appendAction(AvatarAction.const_867,var_817);
         }
         if(var_2351)
         {
            param1.appendAction(AvatarAction.const_295);
         }
         if(var_1968 || var_1454)
         {
            param1.appendAction(AvatarAction.const_411);
         }
         if(var_2025)
         {
            param1.appendAction(AvatarAction.const_250);
         }
         if(_effectType > 0)
         {
            param1.appendAction(AvatarAction.const_420,_effectType);
         }
         param1.endActionAppends();
         var_404 = param1.isAnimating();
         var _loc2_:int = const_1147;
         for each(_loc3_ in var_67.getSprites())
         {
            if(_loc3_.id != "avatarImage")
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
   }
}
