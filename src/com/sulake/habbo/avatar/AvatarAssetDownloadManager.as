package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.FigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class AvatarAssetDownloadManager extends EventDispatcher
   {
       
      
      private var var_764:Dictionary;
      
      private const const_1744:int = 100;
      
      private const const_1453:int = 1;
      
      private var var_321:AssetLoaderStruct;
      
      private var var_930:Array;
      
      private var var_765:Dictionary;
      
      private var var_2066:String;
      
      private var var_929:Dictionary;
      
      private var _assets:IAssetLibrary;
      
      private var var_1597:Boolean;
      
      private var var_646:Array;
      
      private var var_83:AvatarStructure;
      
      private var var_763:Array;
      
      private var var_1341:String;
      
      private var _downloadShiftTimer:Timer;
      
      private var var_931:int = 3;
      
      public function AvatarAssetDownloadManager(param1:IAssetLibrary, param2:String, param3:String, param4:AvatarStructure)
      {
         super();
         var_929 = new Dictionary();
         _assets = param1;
         var_83 = param4;
         var_765 = new Dictionary();
         var_2066 = param3;
         var_1341 = param2;
         var_764 = new Dictionary();
         var_763 = [];
         var_646 = [];
         var_930 = [];
         var _loc5_:URLRequest = new URLRequest(param2);
         var_321 = _assets.loadAssetFromFile("figuremap",_loc5_,"text/xml");
         addMapLoaderEventListeners();
         _downloadShiftTimer = new Timer(const_1744,1);
         _downloadShiftTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onNextDownloadTimeout);
      }
      
      private function libraryComplete(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc2_:* = [];
         for(_loc3_ in var_765)
         {
            _loc7_ = true;
            _loc4_ = var_765[_loc3_];
            for each(_loc8_ in _loc4_)
            {
               if(!_loc8_.isReady)
               {
                  _loc7_ = false;
                  break;
               }
            }
            if(_loc7_)
            {
               _loc2_.push(_loc3_);
               _loc9_ = var_764[_loc3_];
               for each(_loc10_ in _loc9_)
               {
                  if(_loc10_ != null && !_loc10_.disposed)
                  {
                     _loc10_.avatarImageReady(_loc3_);
                  }
               }
               delete var_764[_loc3_];
            }
         }
         for each(_loc3_ in _loc2_)
         {
            delete var_765[_loc3_];
         }
         while(_loc6_ < var_930.length)
         {
            _loc5_ = var_930[_loc6_];
            if(_loc5_.libraryName == (param1.target as AvatarAssetDownloadLibrary).libraryName)
            {
               var_930.splice(_loc6_,1);
            }
            _loc6_++;
         }
         _downloadShiftTimer.start();
      }
      
      public function loadFigureSetData(param1:AvatarFigureContainer, param2:IAvatarImageListener) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!var_1597)
         {
            var_763.push([param1,param2]);
            return;
         }
         var _loc3_:String = param1.getFigureString();
         var _loc4_:Array = getLibsToDownload(param1);
         if(_loc4_.length > 0)
         {
            if(param2 && !param2.disposed)
            {
               _loc6_ = var_764[_loc3_];
               if(_loc6_ == null)
               {
                  _loc6_ = [];
               }
               _loc6_.push(param2);
               var_764[_loc3_] = _loc6_;
            }
            var_765[_loc3_] = _loc4_;
            for each(_loc5_ in _loc4_)
            {
               addToQueue(_loc5_);
            }
         }
         else if(param2 != null && !param2.disposed)
         {
            param2.avatarImageReady(_loc3_);
         }
      }
      
      public function isReady(param1:AvatarFigureContainer) : Boolean
      {
         if(!var_1597)
         {
            return false;
         }
         var _loc2_:Array = getLibsToDownload(param1);
         return _loc2_.length == 0;
      }
      
      private function onConfigurationError(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         --var_931;
         if(var_931 <= 0)
         {
            Logger.log("AVATAR ASSET ERROR: Could not download figuremap.xml.");
         }
         else
         {
            Logger.log("Could not download figuremap.xml. Retries left: " + var_931);
            if(var_1341.indexOf("?") > 0)
            {
               _loc2_ = var_1341 + "&retry=" + var_931;
            }
            else
            {
               _loc2_ = var_1341 + "?retry=" + var_931;
            }
            removeMapLoaderEventListeners();
            _loc3_ = new URLRequest(_loc2_);
            var_321 = _assets.loadAssetFromFile("figuremap",_loc3_,"text/xml");
            addMapLoaderEventListeners();
         }
      }
      
      private function getLibsToDownload(param1:AvatarFigureContainer) : Array
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc2_:* = [];
         var _loc3_:IFigureData = var_83.figureData;
         for each(_loc4_ in param1.getPartTypeIds())
         {
            _loc5_ = _loc3_.getSetType(_loc4_);
            _loc6_ = param1.getPartSetId(_loc4_);
            _loc7_ = _loc5_.getPartSet(_loc6_);
            if(_loc7_)
            {
               for each(_loc8_ in _loc7_.parts)
               {
                  _loc9_ = _loc8_.type + ":" + _loc8_.id;
                  _loc10_ = var_929[_loc9_];
                  if(_loc10_ != null)
                  {
                     for each(_loc11_ in _loc10_)
                     {
                        if(_loc11_ != null)
                        {
                           if(!_loc11_.isReady)
                           {
                              if(_loc2_.indexOf(_loc11_) == -1)
                              {
                                 _loc2_.push(_loc11_);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function addMapLoaderEventListeners() : void
      {
         if(var_321)
         {
            var_321.addEventListener(AssetLoaderEvent.const_29,onConfigurationComplete);
            var_321.addEventListener(AssetLoaderEvent.const_42,onConfigurationError);
         }
      }
      
      private function removeMapLoaderEventListeners() : void
      {
         if(var_321)
         {
            var_321.removeEventListener(AssetLoaderEvent.const_29,onConfigurationComplete);
            var_321.removeEventListener(AssetLoaderEvent.const_42,onConfigurationError);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var_929 = null;
         _assets = null;
         var_765 = null;
         var_764 = null;
         var_83 = null;
         var_646 = null;
         var_763 = null;
         if(_downloadShiftTimer)
         {
            _downloadShiftTimer.stop();
            _downloadShiftTimer = null;
         }
         if(var_321)
         {
            removeMapLoaderEventListeners();
            var_321 = null;
         }
      }
      
      private function generateMap(param1:XML) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         for each(_loc2_ in param1.lib)
         {
            _loc3_ = new AvatarAssetDownloadLibrary(_loc2_.@id,_loc2_.@revision,var_2066,_assets);
            _loc3_.addEventListener(Event.COMPLETE,libraryComplete);
            for each(_loc4_ in _loc2_.part)
            {
               _loc5_ = _loc4_.@type + ":" + _loc4_.@id;
               _loc6_ = var_929[_loc5_];
               if(_loc6_ == null)
               {
                  _loc6_ = [];
               }
               _loc6_.push(_loc3_);
               var_929[_loc5_] = _loc6_;
            }
         }
      }
      
      private function onNextDownloadTimeout(param1:Event = null) : void
      {
         processPending();
      }
      
      private function processPending() : void
      {
         var _loc1_:* = null;
         while(false && var_930.length < const_1453)
         {
            _loc1_ = var_646[0];
            _loc1_.startDownloading();
            var_930.push(var_646.shift());
         }
      }
      
      private function addToQueue(param1:AvatarAssetDownloadLibrary) : void
      {
         if(var_646.indexOf(param1) == -1 && !param1.isReady)
         {
            var_646.push(param1);
            processPending();
         }
      }
      
      private function onConfigurationComplete(param1:Event) : void
      {
         var data:XML = null;
         var initListener:Array = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         try
         {
            data = new XML(loaderStruct.assetLoader.content as String);
         }
         catch(e:Error)
         {
            Logger.log("[AvatarAssetDownloadManager] Error: " + e.message);
            return;
         }
         if(data == null)
         {
            Logger.log("[AvatarAssetDownloadManager] XML error: " + loaderStruct + " not valid XML");
            return;
         }
         if(data.toString() == "")
         {
            Logger.log("[AvatarAssetDownloadManager] XML error: " + loaderStruct + " is EMPTY!");
            return;
         }
         generateMap(data);
         var_1597 = true;
         for each(initListener in var_763)
         {
            loadFigureSetData(initListener[0],initListener[1]);
         }
         var_763 = [];
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
