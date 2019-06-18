package Mass_Spec_exp9_fla
{
   import flash.display.MovieClip;
   
   public dynamic class syringe_reverse_29 extends MovieClip
   {
      
      public function syringe_reverse_29()
      {
         super();
         addFrameScript(0,frame1,39,frame40,49,frame50,88,frame89);
      }
      
      public var water:MovieClip;
      
      function frame1() : *
      {
         water.gotoAndStop(1);
      }
      
      function frame40() : *
      {
         stop();
      }
      
      function frame50() : *
      {
         water.gotoAndStop(2);
      }
      
      function frame89() : *
      {
         water.gotoAndStop(2);
         stop();
      }
   }
}
