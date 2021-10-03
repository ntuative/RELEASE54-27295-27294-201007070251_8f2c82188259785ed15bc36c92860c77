package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_542:int;
      
      private var _model:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         _model = param1;
         var_542 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return _model.getEffects(var_542);
      }
      
      public function dispose() : void
      {
         _model = null;
      }
   }
}
