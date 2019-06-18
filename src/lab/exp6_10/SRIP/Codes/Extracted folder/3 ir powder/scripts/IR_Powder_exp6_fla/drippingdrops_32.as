package IR_Powder_exp6_fla
{
   import flash.display.MovieClip;
   
   public dynamic class drippingdrops_32 extends MovieClip
   {
      
      public function drippingdrops_32()
      {
         super();
         addFrameScript(0,frame1,19,frame20);
      }
      
      public var water:MovieClip;
      
      function frame1() : *
      {
         water.visible = true;
      }
      
      function frame20() : *
      {
         stop();
         water.visible = false;
      }
   }
}
