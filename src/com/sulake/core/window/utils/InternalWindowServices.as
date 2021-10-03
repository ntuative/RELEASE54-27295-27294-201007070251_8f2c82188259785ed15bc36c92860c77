package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_125:DisplayObject;
      
      private var var_2451:uint;
      
      private var var_877:IWindowToolTipAgentService;
      
      private var var_880:IWindowMouseScalingService;
      
      private var var_233:IWindowContext;
      
      private var var_879:IWindowFocusManagerService;
      
      private var var_881:IWindowMouseListenerService;
      
      private var var_878:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2451 = 0;
         var_125 = param2;
         var_233 = param1;
         var_878 = new WindowMouseDragger(param2);
         var_880 = new WindowMouseScaler(param2);
         var_881 = new WindowMouseListener(param2);
         var_879 = new FocusManager(param2);
         var_877 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_880;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_879;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_877;
      }
      
      public function dispose() : void
      {
         if(var_878 != null)
         {
            var_878.dispose();
            var_878 = null;
         }
         if(var_880 != null)
         {
            var_880.dispose();
            var_880 = null;
         }
         if(var_881 != null)
         {
            var_881.dispose();
            var_881 = null;
         }
         if(var_879 != null)
         {
            var_879.dispose();
            var_879 = null;
         }
         if(var_877 != null)
         {
            var_877.dispose();
            var_877 = null;
         }
         var_233 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_881;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_878;
      }
   }
}
