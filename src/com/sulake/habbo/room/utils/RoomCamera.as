package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_372:Number = 0.5;
      
      private static const const_828:int = 3;
      
      private static const const_1172:Number = 1;
       
      
      private var var_2322:Boolean = false;
      
      private var var_2321:Boolean = false;
      
      private var var_1160:int = 0;
      
      private var var_295:Vector3d = null;
      
      private var var_2318:int = 0;
      
      private var var_2317:int = 0;
      
      private var var_2319:Boolean = false;
      
      private var var_2320:int = -2;
      
      private var var_2316:Boolean = false;
      
      private var var_2315:int = 0;
      
      private var var_2324:int = -1;
      
      private var var_464:Vector3d = null;
      
      private var var_2323:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2318;
      }
      
      public function get targetId() : int
      {
         return var_2324;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2315 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2318 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2322 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2324 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2321 = param1;
      }
      
      public function dispose() : void
      {
         var_464 = null;
         var_295 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_464 == null)
         {
            var_464 = new Vector3d();
         }
         var_464.assign(param1);
         var_1160 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2320;
      }
      
      public function get screenHt() : int
      {
         return var_2323;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2317 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_295;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2323 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2315;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2322;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2321;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_464 != null && var_295 != null)
         {
            ++var_1160;
            _loc2_ = Vector3d.dif(var_464,var_295);
            if(_loc2_.length <= const_372)
            {
               var_295 = var_464;
               var_464 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_372 * (const_828 + 1))
               {
                  _loc2_.mul(const_372);
               }
               else if(var_1160 <= const_828)
               {
                  _loc2_.mul(const_372);
               }
               else
               {
                  _loc2_.mul(const_1172);
               }
               var_295 = Vector3d.sum(var_295,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2319 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2317;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2316 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2320 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_295 != null)
         {
            return;
         }
         var_295 = new Vector3d();
         var_295.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2319;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2316;
      }
   }
}
