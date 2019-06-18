package Mass_Spec_exp9_fla
{
   import flash.display.MovieClip;
   
   public dynamic class drippingdrops_22 extends MovieClip
   {
      
      public function drippingdrops_22()
      {
         super();
         addFrameScript(0,frame1,39,frame40);
      }
      
      public var water:MovieClip;
      
      function frame1() : *
      {
         water.visible = true;
      }
      
      function frame40() : *
      {
         stop();
         water.visible = false;
      }
   }
}
