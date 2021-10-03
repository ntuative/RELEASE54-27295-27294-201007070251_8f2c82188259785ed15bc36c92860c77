package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_810:IAssetLoader;
      
      private var var_1256:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1256 = param1;
         var_810 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_810;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_810 != null)
            {
               if(true)
               {
                  var_810.dispose();
                  var_810 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1256;
      }
   }
}
