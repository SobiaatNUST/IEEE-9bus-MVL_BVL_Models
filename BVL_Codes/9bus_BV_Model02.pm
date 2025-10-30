mdp

formula sup_R1_cond1 = FC2=1 & (R3_fail | cb3=2) & Request3=true & c31=2 & R1_lockout;
formula sup_R1_cond2 = FC2=1 & (R3_fail | cb3=2) & R1_fail;
formula sup_R1_cond3 = FC2=1 & (R1_reset | R1_active) & Request3=true & c31=2;

formula sup_R2_cond1 = FC6=1 & (R12_fail | cb12=2) & Request12=true & c122=2 & R2_lockout;
formula sup_R2_cond2 = FC6=1 & (R12_fail | cb12=2) & R2_fail;
formula sup_R2_cond3 = FC6=1 & (R2_reset | R2_active) & Request12=true & c122=2;

formula sup_R3_cond1 = FC3=1 & (R5_fail | cb5=2) & Request5=true & c53=2 & R3_lockout;
formula sup_R3_cond2 = FC3=1 & (R5_fail | cb5=2) & R3_fail;
formula sup_R3_cond3 = FC3=1 & (R3_reset | R3_active) & Request5=true & c53=2;

formula sup_R4_cond1 = FC1=1 & (R2_fail | cb2=2) & Request2=true & c24=2 & R4_lockout;
formula sup_R4_cond2 = FC1=1 & (R2_fail | cb2=2) & R4_fail;
formula sup_R4_cond3 = FC1=1 & (R4_reset | R4_active) & Request2=true & c24=2;

formula sup_R5_cond1 = FC4=1 & (R7_fail | cb7=2) & Request7=true & c75=2 & R5_lockout;
formula sup_R5_cond2 = FC4=1 & (R7_fail | cb7=2) & R5_fail;
formula sup_R5_cond3 = FC4=1 & (R5_reset | R5_active) & Request7=true & c75=2;

formula sup_R6_cond1 = FC2=1 & (R4_fail | cb4=2) & Request4=true & c46=2 & R6_lockout;
formula sup_R6_cond2 = FC2=1 & (R4_fail | cb4=2) & R6_fail;
formula sup_R6_cond3 = FC2=1 & (R6_reset | R6_active) & Request4=true & c46=2;

formula sup_R7_cond1 = FC5=1 & (R9_fail | cb9=2) & Request9=true & c97=2 & R7_lockout;
formula sup_R7_cond2 = FC5=1 & (R9_fail | cb9=2) & R7_fail;
formula sup_R7_cond3 = FC5=1 & (R7_reset | R7_active) & Request9=true & c97=2;

formula sup_R8_cond1 = FC3=1 & (R6_fail | cb6=2) & Request6=true & c68=2 & R8_lockout;
formula sup_R8_cond2 = FC3=1 & (R6_fail | cb6=2) & R8_fail;
formula sup_R8_cond3 = FC3=1 & (R8_reset | R8_active) & Request6=true & c68=2;

formula sup_R9_cond1 = FC6=1 & (R11_fail | cb11=2) & Request11=true & c119=2 & R9_lockout;
formula sup_R9_cond2 = FC6=1 & (R11_fail | cb11=2) & R9_fail;
formula sup_R9_cond3 = FC6=1 & (R9_reset | R9_active) & Request11=true & c119=2;

formula sup_R10_cond1 = FC4=1 & (R8_fail | cb8=2) & Request8=true & c810=2 & R10_lockout;
formula sup_R10_cond2 = FC4=1 & (R8_fail | cb8=2) & R10_fail;
formula sup_R10_cond3 = FC4=1 & (R10_reset | R10_active) & Request8=true & c810=2;

formula sup_R11_cond1 = FC1=1 & (R1_fail | cb1=2) & Request1=true & c111=2 & R11_lockout;
formula sup_R11_cond2 = FC1=1 & (R1_fail | cb1=2) & R11_fail;
formula sup_R11_cond3 = FC1=1 & (R11_reset | R11_active) & Request1=true & c111=2;

formula sup_R12_cond1 = FC5=1 & (R10_fail | cb10=2) & Request10=true & c1012=2 & R12_lockout;
formula sup_R12_cond2 = FC5=1 & (R10_fail | cb10=2) & R12_fail;
formula sup_R12_cond3 = FC5=1 & (R12_reset | R12_active) & Request10=true & c1012=2;


 formula L1_Isol = FC1=1 &
   (((Break1=true & cb1=1) | (Break11=true & cb11=1))
  & ((Break2=true & cb2=1) | (Break4=true & cb4=1))
  & (!(sv11=0 & cb11=2) & !(sv4=0 & cb4=2)));

formula L2_Isol = FC2=1 &
   (((Break3=true & cb3=1) | (Break1=true & cb1=1))
  & ((Break4=true & cb4=1) | (Break6=true & cb6=1))
  & (!(sv1=0 & cb1=2) & !(sv6=0 & cb6=2)));

formula L3_Isol = FC3=1 &
   (((Break5=true & cb5=1) | (Break3=true & cb3=1))
  & ((Break6=true & cb6=1) | (Break8=true & cb8=1))
  & (!(sv3=0 & cb3=2) & !(sv8=0 & cb8=2)));

formula L4_Isol = FC4=1 &
   (((Break7=true & cb7=1) | (Break5=true & cb5=1))
  & ((Break8=true & cb8=1) | (Break10=true & cb10=1))
  & (!(sv5=0 & cb5=2) & !(sv10=0 & cb10=2)));

formula L5_Isol = FC5=1 &
   (((Break9=true & cb9=1) | (Break7=true & cb7=1))
  & ((Break10=true & cb10=1) | (Break12=true & cb12=1))
  & (!(sv7=0 & cb7=2) & !(sv12=0 & cb12=2)));

formula L6_Isol = FC6=1 &
   (((Break11=true & cb11=1) | (Break9=true & cb9=1))
  & ((Break12=true & cb12=1) | (Break2=true & cb2=1))
  & (!(sv9=0 & cb9=2) & !(sv2=0 & cb2=2)));


formula L1_Fail = FC1=1 &
   (((sv11=0 & WD1=1 & WD11=2 & cb11=2) | (sv4=0 & WD2=1 & WD4=2 & cb4=2))
  | ((sv11=0 & cb11=2) | (sv4=0 & cb4=2)));

formula L2_Fail = FC2=1 &
   (((sv1=0 & WD3=1 & WD1=2 & cb1=2) | (sv6=0 & WD4=1 & WD6=2 & cb6=2))
  | ((sv1=0 & cb1=2) | (sv6=0 & cb6=2)));

formula L3_Fail = FC3=1 &
   (((sv3=0 & WD5=1 & WD3=2 & cb3=2) | (sv8=0 & WD6=1 & WD8=2 & cb8=2))
  | ((sv3=0 & cb3=2) | (sv8=0 & cb8=2)));

formula L4_Fail = FC4=1 &
   (((sv5=0 & WD7=1 & WD5=2 & cb5=2) | (sv10=0 & WD8=1 & WD10=2 & cb10=2))
  | ((sv5=0 & cb5=2) | (sv10=0 & cb10=2)));

formula L5_Fail = FC5=1 &
   (((sv7=0 & WD9=1 & WD7=2 & cb7=2) | (sv12=0 & WD10=1 & WD12=2 & cb12=2))
  | ((sv7=0 & cb7=2) | (sv12=0 & cb12=2)));

formula L6_Fail = FC6=1 &
   (((sv9=0 & WD11=1 & WD9=2 & cb9=2) | (sv2=0 & WD12=1 & WD2=2 & cb2=2))
  | ((sv9=0 & cb9=2) | (sv2=0 & cb2=2)));
        


const double flt=0.1;            // Fault occurrence
const double IED=0.1;           // Relay failure
const double COM=0.1;          // Communication failure
const double WD=0.1;          // Internal error


module Fault

Fault: bool init false;
  FC1:[0..2];
  FC2:[0..2];
  FC3:[0..2];
  FC4:[0..2];
  FC5:[0..2];
  FC6:[0..2];

[] Fault=false  -> flt: (Fault'=true)+1-flt: (Fault'=false) ;

[] Fault=true&FC1=0&FC2=0&FC3=0&FC4=0&FC5=0&FC6=0 ->    
    					                  1: (FC1'=1) 	
 					                 +0: (FC2'=1)	
 						         +0: (FC3'=1)
  						         +0: (FC4'=1)	
  						         +0: (FC5'=1)
  						         +0: (FC6'=1);

endmodule

	///////////// Binary logic based relay model  ///////////// 

module Relay_R1_bool

    // One-hot encoding of relay modes
    R1_idle    : bool init true;
    R1_trip    : bool init false;
    R1_fail    : bool init false;
    R1_lockout : bool init false;
    R1_reset   : bool init false;
    R1_active  : bool init false;

    // Other variables from your model remain unchanged
    WD1 : [0..2];  
    R1_locked : bool init false;

    // Transition example 1: Idle + fault -> Active or Fail
    [] R1_idle & WD1=0 & (FC1=1 | FC2=1) ->
          (1-WD) : (R1_idle'=false) & (R1_active'=true) & (R1_fail'=false) & (R1_trip'=false) & (R1_lockout'=false) & (R1_reset'=false) & (WD1'=2)
        + WD     : (R1_idle'=false) & (R1_fail'=true)   & (R1_active'=false) & (R1_trip'=false) & (R1_lockout'=false) & (R1_reset'=false) & (WD1'=1);

    // Transition example 2: Active main trip on FC1
    [Trp_prm1] R1_active & FC1=1 & (CT1>1 | WD11=1) & Lock1=true ->
          (1-IED) :  (R1_trip'=true)& (R1_active'=false) & (R1_fail'=false) & (R1_idle'=false) & (R1_lockout'=false) & (R1_reset'=false)
          + IED   :  (R1_fail'=true) & (R1_trip'=false)  & (R1_active'=false) & (R1_idle'=false) & (R1_lockout'=false) & (R1_reset'=false);

    [Trp_prm1] R1_active & FC1=1 & (CT1=1) & Lock1=true ->  (1-IED):(R1_trip'=true)& (R1_active'=false)
                                                           + IED:(R1_fail'=true)& (R1_active'=false);

    // Transition example 3: Lockout
    [Lock_r1] R1_active & (CT3=2 | CT3=3) & Lock3=true & c31=1 & FC2=1 & t3=1 ->
          (R1_active'=false) & (R1_lockout'=true) & (R1_trip'=false) & (R1_fail'=false) 
          & (R1_idle'=false) & (R1_reset'=false);

    [Lock_r1]  R1_active &(CT3=1)&Lock3=true&c31=1&FC2=1&t3=1 ->  
              (R1_active'=false) & (R1_lockout'=true) & (R1_trip'=false) 
              & (R1_fail'=false) & (R1_idle'=false) & (R1_reset'=false); 
 
    [False_trip1] R1_active & CT3=2 & Lock3 & c31=2 & FC2=1 & !Request3 ->
      (1-IED):(R1_trip'=true) & (R1_active'=false) & (R1_fail'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false)
      + IED:(R1_fail'=true) & (R1_active'=false) & (R1_trip'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false);

     [Reset_r1] R1_lockout & (CT3>0) & Reset3 & c31=1 & FC2=1 & t3=2 ->
      (R1_reset'=true) & (R1_active'=false) & (R1_trip'=false) & (R1_fail'=false) & (R1_lockout'=false) & (R1_idle'=false);

     [Locked_r1] R1_lockout & (CT3>0) & Reset3 & c31=2 & FC2=1 & t3=2 & !R1_locked ->
      (R1_lockout'=true) & (R1_trip'=false) & (R1_fail'=false) & (R1_active'=false) & (R1_reset'=false) & (R1_idle'=false) & (R1_locked'=true);

     [Trp_bkp1] R1_reset & Request3 & c31=1 & FC2=1 & WD3=2 & R3_fail & t3=2 ->
      (1-IED):(R1_trip'=true) & (R1_fail'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false)
    + IED:(R1_fail'=true) & (R1_trip'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false);

     [Trp_bkp1] R1_reset & Request3 & c31=1 & FC2=1 & cb3=2 & R3_trip & t3=3 ->
      (1-IED):(R1_trip'=true) & (R1_fail'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false)
    + IED:(R1_fail'=true) & (R1_trip'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false);

     [Trp_bkp1] R1_active & Request3 & c31=1 & FC2=1 & WD3=1 & R3_fail & t3=4 ->
      (1-IED):(R1_trip'=true) & (R1_fail'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false)
    + IED:(R1_fail'=true) & (R1_trip'=false) & (R1_active'=false) & (R1_lockout'=false) & (R1_reset'=false) & (R1_idle'=false);


endmodule


module Relay_R2_bool=Relay_R1_bool[R1_idle=R2_idle,R1_trip=R2_trip, R1_fail=R2_fail, 
                R1_lockout=R2_lockout, R1_reset=R2_reset, R1_active=R2_active,WD1=WD2,
                R1_locked=R2_locked,FC1=FC1, FC2=FC6,R3_trip=R12_trip ,R3_fail=R12_fail, CT1=CT2, WD11=WD4, Lock1=Lock2,
       	        CT3=CT12, Lock3=Lock12, c31=c122, t3=t12,Request3=Request12, Reset3=Reset12,
                WD3=WD12, R3=R12, cb3=cb12,Trp_prm1=Trp_prm2, Lock_r1=Lock_r2,
                False_trip1=False_trip2, Reset_r1=Reset_r2,Locked_r1=Locked_r2, Trp_bkp1=Trp_bkp2]
endmodule



/////// R3 is main for FC2 with R1 as backup 
/////// R3 acts as backup for FC3 & R5 
module Relay_R3_bool=Relay_R1_bool[
       R1_idle=R3_idle, R1_trip=R3_trip, R1_fail=R3_fail, 
       R1_lockout=R3_lockout, R1_reset=R3_reset, R1_active=R3_active,
       WD1=WD3, R1_locked=R3_locked,
       FC1=FC2, FC2=FC3,R3_trip=R5_trip,R3_fail=R5_fail,
       CT1=CT3, WD11=WD1, Lock1=Lock3,
       CT3=CT5, Lock3=Lock5, c31=c53, t3=t5,
       Request3=Request5, Reset3=Reset5,
       WD3=WD5, R3=R5, cb3=cb5,
       Trp_prm1=Trp_prm3, Lock_r1=Lock_r3,
       False_trip1=False_trip3, Reset_r1=Reset_r3,
       Locked_r1=Locked_r3, Trp_bkp1=Trp_bkp3
]
endmodule


/////// R4 is main for FC2 with R6 as backup 
/////// R4 acts as backup for FC1 & R2
module Relay_R4_bool=Relay_R1_bool[
       R1_idle=R4_idle, R1_trip=R4_trip, R1_fail=R4_fail, 
       R1_lockout=R4_lockout, R1_reset=R4_reset, R1_active=R4_active,
       WD1=WD4, R1_locked=R4_locked,
       FC1=FC2, FC2=FC1,R3_trip=R2_trip,R3_fail=R2_fail,
       CT1=CT4, WD11=WD6, Lock1=Lock4,
       CT3=CT2, Lock3=Lock2, c31=c24, t3=t2,
       Request3=Request2, Reset3=Reset2,
       WD3=WD2, R3=R2, cb3=cb2,
       Trp_prm1=Trp_prm4, Lock_r1=Lock_r4,
       False_trip1=False_trip4, Reset_r1=Reset_r4,
       Locked_r1=Locked_r4, Trp_bkp1=Trp_bkp4
]
endmodule


/////// R5 is main for FC3 with R3 as backup 
/////// R5 acts as backup for FC4 & R7
module Relay_R5_bool=Relay_R1_bool[
       R1_idle=R5_idle, R1_trip=R5_trip, R1_fail=R5_fail, 
       R1_lockout=R5_lockout, R1_reset=R5_reset, R1_active=R5_active,
       WD1=WD5, R1_locked=R5_locked,
       FC1=FC3, FC2=FC4, R3_trip=R7_trip,R3_fail=R7_fail,
       CT1=CT5, WD11=WD3, Lock1=Lock5,
       CT3=CT7, Lock3=Lock7, c31=c75, t3=t7,
       Request3=Request7, Reset3=Reset7,
       WD3=WD7, R3=R7, cb3=cb7,
       Trp_prm1=Trp_prm5, Lock_r1=Lock_r5,
       False_trip1=False_trip5, Reset_r1=Reset_r5,
       Locked_r1=Locked_r5, Trp_bkp1=Trp_bkp5
]
endmodule


/////// R6 is main for FC3 with R8 as backup 
/////// R6 acts as backup for FC2 & R4
module Relay_R6_bool=Relay_R1_bool[
       R1_idle=R6_idle, R1_trip=R6_trip, R1_fail=R6_fail, 
       R1_lockout=R6_lockout, R1_reset=R6_reset, R1_active=R6_active,
       WD1=WD6, R1_locked=R6_locked,
       FC1=FC3, FC2=FC2, R3_trip=R4_trip, R3_fail=R4_fail,
       CT1=CT6, WD11=WD8, Lock1=Lock6,
       CT3=CT4, Lock3=Lock4, c31=c46, t3=t4,
       Request3=Request4, Reset3=Reset4,
       WD3=WD4, R3=R4, cb3=cb4,
       Trp_prm1=Trp_prm6, Lock_r1=Lock_r6,
       False_trip1=False_trip6, Reset_r1=Reset_r6,
       Locked_r1=Locked_r6, Trp_bkp1=Trp_bkp6
]
endmodule


/////// R7 is main for FC4 with R5 as backup 
/////// R7 acts as backup for FC5 & R9
module Relay_R7_bool=Relay_R1_bool[
       R1_idle=R7_idle, R1_trip=R7_trip, R1_fail=R7_fail,
       R1_lockout=R7_lockout, R1_reset=R7_reset, R1_active=R7_active,
       WD1=WD7, R1_locked=R7_locked,
       FC1=FC4, FC2=FC5, R3_trip=R9_trip, R3_fail=R9_fail,
       CT1=CT7, WD11=WD5, Lock1=Lock7,
       CT3=CT9, Lock3=Lock9, c31=c97, t3=t9,
       Request3=Request9, Reset3=Reset9,
       WD3=WD9, R3=R9, cb3=cb9,
       Trp_prm1=Trp_prm7, Lock_r1=Lock_r7,
       False_trip1=False_trip7, Reset_r1=Reset_r7,
       Locked_r1=Locked_r7, Trp_bkp1=Trp_bkp7
]
endmodule




/////// R8 is main for FC4 with R10 as backup 
/////// R8 acts as backup for FC3 & R6
module Relay_R8_bool=Relay_R1_bool[
       R1_idle=R8_idle, R1_trip=R8_trip, R1_fail=R8_fail, 
       R1_lockout=R8_lockout, R1_reset=R8_reset, R1_active=R8_active,
       WD1=WD8, R1_locked=R8_locked,
       FC1=FC4, FC2=FC3, R3_trip=R6_trip,R3_fail=R6_fail,
       CT1=CT8, WD11=WD10, Lock1=Lock8,
       CT3=CT6, Lock3=Lock6, c31=c68, t3=t6,
       Request3=Request6, Reset3=Reset6,
       WD3=WD6, R3=R6, cb3=cb6,
       Trp_prm1=Trp_prm8, Lock_r1=Lock_r8,
       False_trip1=False_trip8, Reset_r1=Reset_r8,
       Locked_r1=Locked_r8, Trp_bkp1=Trp_bkp8
]
endmodule


/////// R9 is main for FC5 with R7 as backup 
/////// R9 acts as backup for FC6 & R11
module Relay_R9_bool=Relay_R1_bool[
       R1_idle=R9_idle, R1_trip=R9_trip, R1_fail=R9_fail, 
       R1_lockout=R9_lockout, R1_reset=R9_reset, R1_active=R9_active,
       WD1=WD9, R1_locked=R9_locked,
       FC1=FC5, FC2=FC6,R3_trip=R11_trip,R3_fail=R11_fail,
       CT1=CT9, WD11=WD7, Lock1=Lock9,
       CT3=CT11, Lock3=Lock11, c31=c119, t3=t11,
       Request3=Request11, Reset3=Reset11,
       WD3=WD11, R3=R11, cb3=cb11,
       Trp_prm1=Trp_prm9, Lock_r1=Lock_r9,
       False_trip1=False_trip9, Reset_r1=Reset_r9,
       Locked_r1=Locked_r9, Trp_bkp1=Trp_bkp9
]
endmodule



/////// R10 is main for FC5 with R12 as backup 
/////// R10 acts as backup for FC4 & R8
module Relay_R10_bool=Relay_R1_bool[
       R1_idle=R10_idle, R1_trip=R10_trip, R1_fail=R10_fail, 
       R1_lockout=R10_lockout, R1_reset=R10_reset, R1_active=R10_active,
       WD1=WD10, R1_locked=R10_locked,
       FC1=FC5, FC2=FC4, R3_trip=R8_trip, R3_fail=R8_fail,
       CT1=CT10, WD11=WD12, Lock1=Lock10,
       CT3=CT8, Lock3=Lock8, c31=c810, t3=t8,
       Request3=Request8, Reset3=Reset8,
       WD3=WD8, R3=R8, cb3=cb8,
       Trp_prm1=Trp_prm10, Lock_r1=Lock_r10,
       False_trip1=False_trip10, Reset_r1=Reset_r10,
       Locked_r1=Locked_r10, Trp_bkp1=Trp_bkp10
]
endmodule


/////// R11 is main for FC6 with R9 as backup 
/////// R11 acts as backup for FC1 & R1
module Relay_R11_bool=Relay_R1_bool[
       R1_idle=R11_idle, R1_trip=R11_trip, R1_fail=R11_fail, 
       R1_lockout=R11_lockout, R1_reset=R11_reset, R1_active=R11_active,
       WD1=WD11, R1_locked=R11_locked,
       FC1=FC6, FC2=FC1, R3_trip=R1_trip,R3_fail=R1_fail,
       CT1=CT11, WD11=WD9, Lock1=Lock11,
       CT3=CT1, Lock3=Lock1, c31=c111, t3=t1,
       Request3=Request1, Reset3=Reset1,
       WD3=WD1, R3=R1, cb3=cb1,
       Trp_prm1=Trp_prm11, Lock_r1=Lock_r11,
       False_trip1=False_trip11, Reset_r1=Reset_r11,
       Locked_r1=Locked_r11, Trp_bkp1=Trp_bkp11
]
endmodule


/////// R12 is main for FC6 with R2 as backup 
/////// R12 acts as backup for FC5 & R10
module Relay_R12_bool=Relay_R1_bool[
       R1_idle=R12_idle, R1_trip=R12_trip, R1_fail=R12_fail, 
       R1_lockout=R12_lockout, R1_reset=R12_reset, R1_active=R12_active,
       WD1=WD12, R1_locked=R12_locked,
       FC1=FC6, FC2=FC5,R3_trip=R10_trip,R3_fail=R10_fail,
       CT1=CT12, WD11=WD2, Lock1=Lock12,
       CT3=CT10, Lock3=Lock10, c31=c1012, t3=t10,
       Request3=Request10, Reset3=Reset10,
       WD3=WD10, R3=R10, cb3=cb10,
       Trp_prm1=Trp_prm12, Lock_r1=Lock_r12,
       False_trip1=False_trip12, Reset_r1=Reset_r12,
       Locked_r1=Locked_r12, Trp_bkp1=Trp_bkp12]
endmodule




module CT1_Chk

    CT1:[0..3];
    // 1: CTM in range, 2: CTM out of range <0.3, 3: CTM >0.4

    // CTM checked only if relay R1 and backup R11 are active
    [] CT1=0 & FC1=1 & R1_active & R11_active ->
            1/3:(CT1'=1)
          + 1/3:(CT1'=2)
          + 1/3:(CT1'=3);

endmodule




module CT2_Chk=CT1_Chk[
    CT1=CT2, FC1=FC1,
    R1_active=R2_active, R11_active=R4_active
] endmodule

module CT3_Chk=CT1_Chk[
    CT1=CT3, FC1=FC2,
    R1_active=R3_active, R11_active=R1_active
] endmodule

module CT4_Chk=CT1_Chk[
    CT1=CT4, FC1=FC2,
    R1_active=R4_active, R11_active=R6_active
] endmodule

module CT5_Chk=CT1_Chk[
    CT1=CT5, FC1=FC3,
    R1_active=R5_active, R11_active=R3_active
] endmodule

module CT6_Chk=CT1_Chk[
    CT1=CT6, FC1=FC3,
    R1_active=R6_active, R11_active=R8_active
] endmodule

module CT7_Chk=CT1_Chk[
    CT1=CT7, FC1=FC4,
    R1_active=R7_active, R11_active=R5_active
] endmodule

module CT8_Chk=CT1_Chk[
    CT1=CT8, FC1=FC4,
    R1_active=R8_active, R11_active=R10_active
] endmodule

module CT9_Chk=CT1_Chk[
    CT1=CT9, FC1=FC5,
    R1_active=R9_active, R11_active=R7_active
] endmodule

module CT10_Chk=CT1_Chk[
    CT1=CT10, FC1=FC5,
    R1_active=R10_active, R11_active=R12_active
] endmodule

module CT11_Chk=CT1_Chk[
    CT1=CT11, FC1=FC6,
    R1_active=R11_active, R11_active=R9_active
] endmodule

module CT12_Chk=CT1_Chk[
    CT1=CT12, FC1=FC6,
    R1_active=R12_active, R11_active=R2_active
] endmodule




module Signal_Disp_R1

    Lock1    : bool init false;
    Reset1   : bool init false;
    Request1 : bool init false;
    Break1   : bool init false;
	
/////	R1 acts as main for FC1 	//////

[Sig1] R1_active & !Lock1 & FC1=1 & (CT1>1 | WD11=1) -> (Lock1'=true); // Lock and prim op synced 
[Sig1] R1_active & !Lock1 & FC1=1 & (CT1=1) -> (Lock1'=true);          // CT1=1

[Trp_prm1] !Reset1 -> (Reset1'=true);  // reset synced with relay operation

[Sig1] !Request1 & R1_fail -> (Request1'=true);     // (WD1=1|WD1=2)
[Sig1] !Request1 & cb1=2 & R1_trip -> (Request1'=true);  // do we need it here?

[Sig1] !Break1 & R1_trip -> (Break1'=true); 
[Sup1] sv1=1 & !Break1 -> (Break1'=true); 
//[Sup1Sup6] sv1=1 & !Break1 -> (Break1'=true); 

/////	R1 acts as backup for FC2 & R3 	//////

[Trp_bkp1] !Lock1 & (R1_reset | R1_active) & FC2=1 -> (Lock1'=true); 
[False_trip1] !Lock1 & R1_active & FC2=1 -> (Lock1'=true);  
[] !Reset1 & (R1_trip | R1_fail) & FC2=1 -> (Reset1'=true); 
          
endmodule



module Signal_Disp_R2 = Signal_Disp_R1[
    Lock1=Lock2, Reset1=Reset2, Request1=Request2, Break1=Break2,
    CT1=CT2, WD11=WD4, cb1=cb2,
    R1_active=R2_active, R1_trip=R2_trip, R1_fail=R2_fail,
    R1_lockout=R2_lockout, R1_reset=R2_reset,
    FC1=FC1, FC2=FC6, WD1=WD2,
    Sig1=Sig2, Trp_prm1=Trp_prm2, Trp_bkp1=Trp_bkp2,
    Sup1=Sup2, sv1=sv2, False_trip1=False_trip2
] endmodule

module Signal_Disp_R3 = Signal_Disp_R1[
    Lock1=Lock3, Reset1=Reset3, Request1=Request3, Break1=Break3,
    CT1=CT3, WD11=WD1, cb1=cb3,
    R1_active=R3_active, R1_trip=R3_trip, R1_fail=R3_fail,
    R1_lockout=R3_lockout, R1_reset=R3_reset,
    FC1=FC2, FC2=FC3, WD1=WD3,
    Sig1=Sig3, Trp_prm1=Trp_prm3, Trp_bkp1=Trp_bkp3,
    Sup1=Sup3, sv1=sv3, False_trip1=False_trip3
] endmodule

module Signal_Disp_R4 = Signal_Disp_R1[
    Lock1=Lock4, Reset1=Reset4, Request1=Request4, Break1=Break4,
    CT1=CT4, WD11=WD6, cb1=cb4,
    R1_active=R4_active, R1_trip=R4_trip, R1_fail=R4_fail,
    R1_lockout=R4_lockout, R1_reset=R4_reset,
    FC1=FC2, FC2=FC1, WD1=WD4,
    Sig1=Sig4, Trp_prm1=Trp_prm4, Trp_bkp1=Trp_bkp4,
    Sup1=Sup4, sv1=sv4, False_trip1=False_trip4
] endmodule

module Signal_Disp_R5 = Signal_Disp_R1[
    Lock1=Lock5, Reset1=Reset5, Request1=Request5, Break1=Break5,
    CT1=CT5, WD11=WD3, cb1=cb5,
    R1_active=R5_active, R1_trip=R5_trip, R1_fail=R5_fail,
    R1_lockout=R5_lockout, R1_reset=R5_reset,
    FC1=FC3, FC2=FC4, WD1=WD5,
    Sig1=Sig5, Trp_prm1=Trp_prm5, Trp_bkp1=Trp_bkp5,
    Sup1=Sup5, sv1=sv5, False_trip1=False_trip5
] endmodule

module Signal_Disp_R6 = Signal_Disp_R1[
    Lock1=Lock6, Reset1=Reset6, Request1=Request6, Break1=Break6,
    CT1=CT6, WD11=WD8, cb1=cb6,
    R1_active=R6_active, R1_trip=R6_trip, R1_fail=R6_fail,
    R1_lockout=R6_lockout, R1_reset=R6_reset,
    FC1=FC3, FC2=FC2, WD1=WD6,
    Sig1=Sig6, Trp_prm1=Trp_prm6, Trp_bkp1=Trp_bkp6,
    Sup1=Sup6, sv1=sv6, False_trip1=False_trip6
] endmodule

module Signal_Disp_R7 = Signal_Disp_R1[
    Lock1=Lock7, Reset1=Reset7, Request1=Request7, Break1=Break7,
    CT1=CT7, WD11=WD5, cb1=cb7,
    R1_active=R7_active, R1_trip=R7_trip, R1_fail=R7_fail,
    R1_lockout=R7_lockout, R1_reset=R7_reset,
    FC1=FC4, FC2=FC5, WD1=WD7,
    Sig1=Sig7, Trp_prm1=Trp_prm7, Trp_bkp1=Trp_bkp7,
    Sup1=Sup7, sv1=sv7, False_trip1=False_trip7
] endmodule



module Signal_Disp_R8 = Signal_Disp_R1[
    Lock1=Lock8, Reset1=Reset8, Request1=Request8, Break1=Break8,
    CT1=CT8, WD11=WD10, cb1=cb8,
    R1_active=R8_active, R1_trip=R8_trip, R1_fail=R8_fail,
    R1_lockout=R8_lockout, R1_reset=R8_reset,
    FC1=FC4, FC2=FC3, WD1=WD8,
    Sig1=Sig8, Trp_prm1=Trp_prm8, Trp_bkp1=Trp_bkp8,
    Sup1=Sup8, sv1=sv8, False_trip1=False_trip8
] endmodule

module Signal_Disp_R9 = Signal_Disp_R1[
    Lock1=Lock9, Reset1=Reset9, Request1=Request9, Break1=Break9,
    CT1=CT9, WD11=WD7, cb1=cb9,
    R1_active=R9_active, R1_trip=R9_trip, R1_fail=R9_fail,
    R1_lockout=R9_lockout, R1_reset=R9_reset,
    FC1=FC5, FC2=FC6, WD1=WD9,
    Sig1=Sig9, Trp_prm1=Trp_prm9, Trp_bkp1=Trp_bkp9,
    Sup1=Sup9, sv1=sv9, False_trip1=False_trip9
] endmodule

module Signal_Disp_R10 = Signal_Disp_R1[
    Lock1=Lock10, Reset1=Reset10, Request1=Request10, Break1=Break10,
    CT1=CT10, WD11=WD12, cb1=cb10,
    R1_active=R10_active, R1_trip=R10_trip, R1_fail=R10_fail,
    R1_lockout=R10_lockout, R1_reset=R10_reset,
    FC1=FC5, FC2=FC4, WD1=WD10,
    Sig1=Sig10, Trp_prm1=Trp_prm10, Trp_bkp1=Trp_bkp10,
    Sup1=Sup10, sv1=sv10, False_trip1=False_trip10
] endmodule

module Signal_Disp_R11 = Signal_Disp_R1[
    Lock1=Lock11, Reset1=Reset11, Request1=Request11, Break1=Break11,
    CT1=CT11, WD11=WD9, cb1=cb11,
    R1_active=R11_active, R1_trip=R11_trip, R1_fail=R11_fail,
    R1_lockout=R11_lockout, R1_reset=R11_reset,
    FC1=FC6, FC2=FC1, WD1=WD11,
    Sig1=Sig11, Trp_prm1=Trp_prm11, Trp_bkp1=Trp_bkp11,
    Sup1=Sup11, sv1=sv11, False_trip1=False_trip11
] endmodule

module Signal_Disp_R12 = Signal_Disp_R1[
    Lock1=Lock12, Reset1=Reset12, Request1=Request12, Break1=Break12,
    CT1=CT12, WD11=WD2, cb1=cb12,
    R1_active=R12_active, R1_trip=R12_trip, R1_fail=R12_fail,
    R1_lockout=R12_lockout, R1_reset=R12_reset,
    FC1=FC6, FC2=FC5, WD1=WD12,
    Sig1=Sig12, Trp_prm1=Trp_prm12, Trp_bkp1=Trp_bkp12,
    Sup1=Sup12, sv1=sv12, False_trip1=False_trip12
] endmodule



module Channel_R1R11

    c111:[0..2] init 0;
    t1:[0..4] init 0;

    // Channel lock based on Signal dispatching
[] c111=0 & t1=0 & Lock1=true ->1-COM:(c111'=1) & (t1'=1) + COM:(c111'=2) & (t1'=1);

    // Relay R1 trips, R11 in lockout, Reset active
[] c111=1 & R1_trip & R11_lockout & Reset1=true & t1=1 -> 1-COM:(c111'=1) & (t1'=t1+1)
                                                         + COM:(c111'=2) & (t1'=t1+1);

    // Relay R1 fails, watchdog error, request triggered
[] c111=0 & R1_fail & WD1=1 & Request1=true & t1=0 -> 1-COM:(c111'=1) & (t1'=4)
                                                     + COM:(c111'=2) & (t1'=4);

    // Relay R1 fails, watchdog error, R11 lockout, reset or request triggered
[] c111=1 & R1_fail & WD1=2 & R11_lockout & (Reset1=true | Request1=true) & t1=1 ->
          1-COM:(c111'=1) & (t1'=t1+1)+ COM:(c111'=2) & (t1'=t1+1);

    // Relay R1 trip, R11 reset,  request triggered
[] c111=1 & R1_trip & R11_reset & cb1=2 & Request1=true & t1=2 -> 1-COM:(c111'=1) & (t1'=t1+1)
                                                                 + COM:(c111'=2) & (t1'=t1+1);

endmodule


module Channel_R2R4 = Channel_R1R11[
    c111=c24, Request1=Request2, Lock1=Lock2, Reset1=Reset2, t1=t2, cb1=cb2, WD1=WD2,
    R1_trip=R2_trip, R1_fail=R2_fail, R1_lockout=R2_lockout, R1_reset=R2_reset, R1_active=R2_active, R1_idle=R2_idle,
    R11_trip=R4_trip, R11_fail=R4_fail, R11_lockout=R4_lockout, R11_reset=R4_reset, R11_active=R4_active, R11_idle=R4_idle
] endmodule

module Channel_R3R1 = Channel_R1R11[
    c111=c31, Request1=Request3, Lock1=Lock3, Reset1=Reset3, t1=t3, cb1=cb3, WD1=WD3,
    R1_trip=R3_trip, R1_fail=R3_fail, R1_lockout=R3_lockout, R1_reset=R3_reset, R1_active=R3_active, R1_idle=R3_idle,
    R11_trip=R1_trip, R11_fail=R1_fail, R11_lockout=R1_lockout, R11_reset=R1_reset, R11_active=R1_active, R11_idle=R1_idle
] endmodule

module Channel_R4R6 = Channel_R1R11[
    c111=c46, Request1=Request4, Lock1=Lock4, Reset1=Reset4, t1=t4, cb1=cb4, WD1=WD4,
    R1_trip=R4_trip, R1_fail=R4_fail, R1_lockout=R4_lockout, R1_reset=R4_reset, R1_active=R4_active, R1_idle=R4_idle,
    R11_trip=R6_trip, R11_fail=R6_fail, R11_lockout=R6_lockout, R11_reset=R6_reset, R11_active=R6_active, R11_idle=R6_idle
] endmodule

module Channel_R5R3 = Channel_R1R11[
    c111=c53, Request1=Request5, Lock1=Lock5, Reset1=Reset5, t1=t5, cb1=cb5, WD1=WD5,
    R1_trip=R5_trip, R1_fail=R5_fail, R1_lockout=R5_lockout, R1_reset=R5_reset, R1_active=R5_active, R1_idle=R5_idle,
    R11_trip=R3_trip, R11_fail=R3_fail, R11_lockout=R3_lockout, R11_reset=R3_reset, R11_active=R3_active, R11_idle=R3_idle
] endmodule

module Channel_R6R8 = Channel_R1R11[
    c111=c68, Request1=Request6, Lock1=Lock6, Reset1=Reset6, t1=t6, cb1=cb6, WD1=WD6,
    R1_trip=R6_trip, R1_fail=R6_fail, R1_lockout=R6_lockout, R1_reset=R6_reset, R1_active=R6_active, R1_idle=R6_idle,
    R11_trip=R8_trip, R11_fail=R8_fail, R11_lockout=R8_lockout, R11_reset=R8_reset, R11_active=R8_active, R11_idle=R8_idle
] endmodule

module Channel_R7R5 = Channel_R1R11[
    c111=c75, Request1=Request7, Lock1=Lock7, Reset1=Reset7, t1=t7, cb1=cb7, WD1=WD7,
    R1_trip=R7_trip, R1_fail=R7_fail, R1_lockout=R7_lockout, R1_reset=R7_reset, R1_active=R7_active, R1_idle=R7_idle,
    R11_trip=R5_trip, R11_fail=R5_fail, R11_lockout=R5_lockout, R11_reset=R5_reset, R11_active=R5_active, R11_idle=R5_idle
] endmodule

module Channel_R8R10 = Channel_R1R11[
    c111=c810, Request1=Request8, Lock1=Lock8, Reset1=Reset8, t1=t8, cb1=cb8, WD1=WD8,
    R1_trip=R8_trip, R1_fail=R8_fail, R1_lockout=R8_lockout, R1_reset=R8_reset, R1_active=R8_active, R1_idle=R8_idle,
    R11_trip=R10_trip, R11_fail=R10_fail, R11_lockout=R10_lockout, R11_reset=R10_reset, R11_active=R10_active, R11_idle=R10_idle
] endmodule

module Channel_R9R7 = Channel_R1R11[
    c111=c97, Request1=Request9, Lock1=Lock9, Reset1=Reset9, t1=t9, cb1=cb9, WD1=WD9,
    R1_trip=R9_trip, R1_fail=R9_fail, R1_lockout=R9_lockout, R1_reset=R9_reset, R1_active=R9_active, R1_idle=R9_idle,
    R11_trip=R7_trip, R11_fail=R7_fail, R11_lockout=R7_lockout, R11_reset=R7_reset, R11_active=R7_active, R11_idle=R7_idle
] endmodule

module Channel_R10R12 = Channel_R1R11[
    c111=c1012, Request1=Request10, Lock1=Lock10, Reset1=Reset10, t1=t10, cb1=cb10, WD1=WD10,
    R1_trip=R10_trip, R1_fail=R10_fail, R1_lockout=R10_lockout, R1_reset=R10_reset, R1_active=R10_active, R1_idle=R10_idle,
    R11_trip=R12_trip, R11_fail=R12_fail, R11_lockout=R12_lockout, R11_reset=R12_reset, R11_active=R12_active, R11_idle=R12_idle
] endmodule

module Channel_R11R9 = Channel_R1R11[
    c111=c119, Request1=Request11, Lock1=Lock11, Reset1=Reset11, t1=t11, cb1=cb11, WD1=WD11,
    R1_trip=R11_trip, R1_fail=R11_fail, R1_lockout=R11_lockout, R1_reset=R11_reset, R1_active=R11_active, R1_idle=R11_idle,
    R11_trip=R9_trip, R11_fail=R9_fail, R11_lockout=R9_lockout, R11_reset=R9_reset, R11_active=R9_active, R11_idle=R9_idle
] endmodule

module Channel_R12R2 = Channel_R1R11[
    c111=c122, Request1=Request12, Lock1=Lock12, Reset1=Reset12, t1=t12, cb1=cb12, WD1=WD12,
    R1_trip=R12_trip, R1_fail=R12_fail, R1_lockout=R12_lockout, R1_reset=R12_reset, R1_active=R12_active, R1_idle=R12_idle,
    R11_trip=R2_trip, R11_fail=R2_fail, R11_lockout=R2_lockout, R11_reset=R2_reset, R11_active=R2_active, R11_idle=R2_idle
] endmodule


module comm_B1

	cb1:[0..2] init 0;

	[Com_b1] cb1=0& Break1=true -> 1-COM:(cb1'=1)+COM:(cb1'=2); 
	[Sup1] cb1=0 -> 1-COM:(cb1'=1)+COM:(cb1'=2); 
       // [Sup1Sup6] cb1=0 -> 1-COM:(cb1'=1)+COM:(cb1'=2);

endmodule


module comm_B2= comm_B1[cb1=cb2,Break1=Break2,Com_b1=Com_b2,Sup1=Sup2]endmodule
module comm_B3= comm_B1[cb1=cb3,Break1=Break3,Com_b1=Com_b3,Sup1=Sup3]endmodule
module comm_B4= comm_B1[cb1=cb4,Break1=Break4,Com_b1=Com_b4,Sup1=Sup4]endmodule
module comm_B5= comm_B1[cb1=cb5,Break1=Break5,Com_b1=Com_b5,Sup1=Sup5]endmodule
module comm_B6= comm_B1[cb1=cb6,Break1=Break6,Com_b1=Com_b6,Sup1=Sup6]endmodule
module comm_B7= comm_B1[cb1=cb7,Break1=Break7,Com_b1=Com_b7,Sup1=Sup7]endmodule
module comm_B8= comm_B1[cb1=cb8,Break1=Break8,Com_b1=Com_b8,Sup1=Sup8]endmodule
module comm_B9= comm_B1[cb1=cb9,Break1=Break9,Com_b1=Com_b9,Sup1=Sup9]endmodule
module comm_B10= comm_B1[cb1=cb10,Break1=Break10,Com_b1=Com_b10,Sup1=Sup10]endmodule
module comm_B11= comm_B1[cb1=cb11,Break1=Break11,Com_b1=Com_b11,Sup1=Sup11]endmodule
module comm_B12= comm_B1[cb1=cb12,Break1=Break12,Com_b1=Com_b12,Sup1=Sup12]endmodule


module Sup_SV2
	 sv2:[0..1];
	// 0: idle
	// 1: Supervisory service activated

[CU2] sv2=0 -> (sv2'=1); 
[CU2CU9]sv2=0 -> (sv2'=1);

endmodule

module Sup_SV1= Sup_SV2[sv2=sv1,CU2=CU1,CU2CU9=CU1CU6]endmodule
module Sup_SV3= Sup_SV2[sv2=sv3,CU2=CU3,CU2CU9=CU3CU8]endmodule
module Sup_SV4 = Sup_SV2[sv2=sv4,CU2=CU4,CU2CU9=CU4CU11] endmodule
module Sup_SV5 = Sup_SV2[sv2=sv5,CU2=CU5,CU2CU9=CU5CU10] endmodule
module Sup_SV6 = Sup_SV2[sv2=sv6,CU2=CU6,CU2CU9=CU1CU6] endmodule
module Sup_SV7 = Sup_SV2[sv2=sv7,CU2=CU7,CU2CU9=CU7CU12] endmodule
module Sup_SV8 = Sup_SV2[sv2=sv8,CU2=CU8,CU2CU9=CU3CU8] endmodule
module Sup_SV9 = Sup_SV2[sv2=sv9,CU2=CU9,CU2CU9=CU2CU9] endmodule
module Sup_SV10 = Sup_SV2[sv2=sv10,CU2=CU10,CU2CU9=CU5CU10] endmodule
module Sup_SV11 = Sup_SV2[sv2=sv11,CU2=CU11,CU2CU9=CU4CU11] endmodule
module Sup_SV12 = Sup_SV2[sv2=sv12,CU2=CU12,CU2CU9=CU7CU12] endmodule


module Central_Unit

 CU:[0..4] init 0;
 fail: bool init false;
// CU =1 : Activates supervisory  // 2: Safe state
// 3: Unsafe state 
// 4: special case of supervisory          

 P1:  bool init false;
 P2:  bool init false;
 P3:  bool init false;
 P4:  bool init false;
 P5:  bool init false;
 P6:  bool init false;
 P7:  bool init false;
 P8:  bool init false;
 P9:  bool init false;
 P10: bool init false;
 P11: bool init false;
 P12: bool init false;

	 //////////////////// FC1  ////////////////////

[CU4] (CU=0) & ((sup_R4_cond1|sup_R4_cond2|sup_R4_cond3)& P4=false) 
      & (!(sup_R11_cond1|sup_R11_cond2|sup_R11_cond3)& P11=false)-> (CU'=1)&(P4'=true);

[CU4] (CU=1) & ((sup_R4_cond1|sup_R4_cond2|sup_R4_cond3)& P4=false) & P11=true -> (CU'=4)&(P4'=true); 
     											       

[CU11] (CU=0) & ((sup_R11_cond1|sup_R11_cond2|sup_R11_cond3)& P11=false)
      &(!(sup_R4_cond1|sup_R4_cond2|sup_R4_cond3)& P4=false)  -> (CU'=1)&(P11'=true);  
     
[CU11] (CU=1) & (sup_R11_cond1|sup_R11_cond2|sup_R11_cond3)& P11=false & P4=true -> (CU'=4)&(P11'=true);

[CU4CU11] (CU=0) & ((sup_R4_cond1|sup_R4_cond2|sup_R4_cond3)& P4=false)
         & ((sup_R11_cond1|sup_R11_cond2|sup_R11_cond3)& P11=false)      -> (CU'=1)&(P4'=true)&(P11'=true); 




               //////////////////// FC2  ////////////////////

[CU1] (CU=0) & ((sup_R1_cond1 | sup_R1_cond2 | sup_R1_cond3) & P1=false) 
      & (!(sup_R6_cond1 | sup_R6_cond2 | sup_R6_cond3) & P6=false) -> (CU'=1) & (P1'=true);

[CU1] (CU=1) & ((sup_R1_cond1 | sup_R1_cond2 | sup_R1_cond3) & P1=false) & P6=true  -> (CU'=4) & (P1'=true);

[CU6] (CU=0) & ((sup_R6_cond1 | sup_R6_cond2 | sup_R6_cond3) & P6=false) 
      & (!(sup_R1_cond1 | sup_R1_cond2 | sup_R1_cond3) & P1=false) -> (CU'=1) & (P6'=true);

[CU6] (CU=1) & (sup_R6_cond1 | sup_R6_cond2 | sup_R6_cond3) & P6=false & P1=true -> (CU'=4) & (P6'=true);

[CU1CU6] (CU=0) & ((sup_R1_cond1 | sup_R1_cond2 | sup_R1_cond3) & P1=false)
         & ((sup_R6_cond1 | sup_R6_cond2 | sup_R6_cond3) & P6=false) -> (CU'=1) & (P1'=true) & (P6'=true);



                 /////////////////// FC6  ////////////////////

[CU2] (CU=0) & ((sup_R2_cond1 | sup_R2_cond2 | sup_R2_cond3) & P2=false) 
      & (!(sup_R9_cond1 | sup_R9_cond2 | sup_R9_cond3) & P9=false) -> (CU'=1) & (P2'=true);

[CU2] (CU=1) & ((sup_R2_cond1 | sup_R2_cond2 | sup_R2_cond3) & P2=false) & P9=true 
      -> (CU'=4) & (P2'=true);

[CU9] (CU=0) & ((sup_R9_cond1 | sup_R9_cond2 | sup_R9_cond3) & P9=false) 
      & (!(sup_R2_cond1 | sup_R2_cond2 | sup_R2_cond3) & P2=false) -> (CU'=1) & (P9'=true);

[CU9] (CU=1) & (sup_R9_cond1 | sup_R9_cond2 | sup_R9_cond3) & P9=false & P2=true 
      -> (CU'=4) & (P9'=true);

[CU2CU9] (CU=0) & ((sup_R2_cond1 | sup_R2_cond2 | sup_R2_cond3) & P2=false)
         & ((sup_R9_cond1 | sup_R9_cond2 | sup_R9_cond3) & P9=false) 
      -> (CU'=1) & (P2'=true) & (P9'=true);


                     //////////////////// FC3  ////////////////////

[CU3] (CU=0) & ((sup_R3_cond1 | sup_R3_cond2 | sup_R3_cond3) & P3=false) 
      & (!(sup_R8_cond1 | sup_R8_cond2 | sup_R8_cond3) & P8=false) -> (CU'=1) & (P3'=true);

[CU3] (CU=1) & ((sup_R3_cond1 | sup_R3_cond2 | sup_R3_cond3) & P3=false) & P8=true 
      -> (CU'=4) & (P3'=true);

[CU8] (CU=0) & ((sup_R8_cond1 | sup_R8_cond2 | sup_R8_cond3) & P8=false) 
      & (!(sup_R3_cond1 | sup_R3_cond2 | sup_R3_cond3) & P3=false) -> (CU'=1) & (P8'=true);

[CU8] (CU=1) & (sup_R8_cond1 | sup_R8_cond2 | sup_R8_cond3) & P8=false & P3=true 
      -> (CU'=4) & (P8'=true);

[CU3CU8] (CU=0) & ((sup_R3_cond1 | sup_R3_cond2 | sup_R3_cond3) & P3=false)
         & ((sup_R8_cond1 | sup_R8_cond2 | sup_R8_cond3) & P8=false) 
      -> (CU'=1) & (P3'=true) & (P8'=true);


                  //////////////////// FC4  ////////////////////

[CU5] (CU=0) & ((sup_R5_cond1 | sup_R5_cond2 | sup_R5_cond3) & P5=false) 
      & (!(sup_R10_cond1 | sup_R10_cond2 | sup_R10_cond3) & P10=false) -> (CU'=1) & (P5'=true);

[CU5] (CU=1) & ((sup_R5_cond1 | sup_R5_cond2 | sup_R5_cond3) & P5=false) & P10=true 
      -> (CU'=4) & (P5'=true);

[CU10] (CU=0) & ((sup_R10_cond1 | sup_R10_cond2 | sup_R10_cond3) & P10=false) 
       & (!(sup_R5_cond1 | sup_R5_cond2 | sup_R5_cond3) & P5=false) -> (CU'=1) & (P10'=true);

[CU10] (CU=1) & (sup_R10_cond1 | sup_R10_cond2 | sup_R10_cond3) & P10=false & P5=true 
       -> (CU'=4) & (P10'=true);

[CU5CU10] (CU=0) & ((sup_R5_cond1 | sup_R5_cond2 | sup_R5_cond3) & P5=false)
          & ((sup_R10_cond1 | sup_R10_cond2 | sup_R10_cond3) & P10=false) 
       -> (CU'=1) & (P5'=true) & (P10'=true);


                 //////////////////// FC5  ////////////////////

[CU7] (CU=0) & ((sup_R7_cond1 | sup_R7_cond2 | sup_R7_cond3) & P7=false) 
      & (!(sup_R12_cond1 | sup_R12_cond2 | sup_R12_cond3) & P12=false) -> (CU'=1) & (P7'=true);

[CU7] (CU=1) & ((sup_R7_cond1 | sup_R7_cond2 | sup_R7_cond3) & P7=false) & P12=true 
      -> (CU'=4) & (P7'=true);

[CU12] (CU=0) & ((sup_R12_cond1 | sup_R12_cond2 | sup_R12_cond3) & P12=false) 
       & (!(sup_R7_cond1 | sup_R7_cond2 | sup_R7_cond3) & P7=false) -> (CU'=1) & (P12'=true);

[CU12] (CU=1) & (sup_R12_cond1 | sup_R12_cond2 | sup_R12_cond3) & P12=false & P7=true 
       -> (CU'=4) & (P12'=true);

[CU7CU12] (CU=0) & ((sup_R7_cond1 | sup_R7_cond2 | sup_R7_cond3) & P7=false)
          & ((sup_R12_cond1 | sup_R12_cond2 | sup_R12_cond3) & P12=false) 
       -> (CU'=1) & (P7'=true) & (P12'=true);




///////////////////////////////////////////////////

[FC1_clrd]  ((CU=0|CU=1|CU=4)& L1_Isol)  -> (CU'= 2);
[FC2_clrd]  ((CU=0|CU=1|CU=4)& L2_Isol)  -> (CU'= 2);
[FC3_clrd]  ((CU=0|CU=1|CU=4)& L3_Isol)  -> (CU'= 2);
[FC4_clrd]  ((CU=0|CU=1|CU=4)& L4_Isol)  -> (CU'= 2);
[FC5_clrd]  ((CU=0|CU=1|CU=4)& L5_Isol)  -> (CU'= 2);
[FC6_clrd]  ((CU=0|CU=1|CU=4)& L6_Isol)  -> (CU'= 2);


[Fail_L1]  ((CU=0|CU=1|CU=4)& L1_Fail)  -> (CU'= 3);
[Fail_L2]  ((CU=0|CU=1|CU=4)& L2_Fail)  -> (CU'= 3);
[Fail_L3]  ((CU=0|CU=1|CU=4)& L3_Fail)  -> (CU'= 3);
[Fail_L4]  ((CU=0|CU=1|CU=4)& L4_Fail)  -> (CU'= 3);
[Fail_L5]  ((CU=0|CU=1|CU=4)& L5_Fail)  -> (CU'= 3);
[Fail_L6]  ((CU=0|CU=1|CU=4)& L6_Fail)  -> (CU'= 3);

      



endmodule



// LABELS FOR PROPERTIES VERIFICATION

label "L1_Risk" = FC1=1 &((sv11=1&cb11=2)|(sv4=1&cb4=2));
label "L2_Risk" = FC2=1 &((sv1=1&cb1=2)|(sv6=1&cb6=2));
label "L3_Risk" = FC3=1 &((sv3=1&cb3=2)|(sv8=1&cb8=2));
label "L4_Risk" = FC4=1 &((sv5=1&cb5=2)|(sv10=1&cb10=2));
label "L5_Risk" = FC5=1 &((sv7=1&cb7=2)|(sv12=1&cb12=2));
label "L6_Risk" = FC6=1 &((sv9=1&cb9=2)|(sv2=1&cb2=2));

label "L1_False_Trip" = FC1=1 &
      ((CT1=2 & Lock1=true & c111=2 & t1=1 & R1_trip & R11_trip)
      |(CT2=2 & Lock2=true & c24=2  & t2=1 & R2_trip & R4_trip));

label "L2_False_Trip" = FC2=1 &
        ((CT3=2 & Lock3=true & c31=2 & t3=1 & R3_trip & R1_trip)
        |(CT4=2 & Lock4=true & c46=2 & t4=1 & R4_trip & R6_trip));

label "L3_False_Trip" = FC3=1 &
      ((CT5=2 & Lock5=true & c53=2 & t5=1 & R5_trip & R3_trip)
      |(CT6=2 & Lock6=true & c68=2 & t6=1 & R6_trip & R8_trip));

label "L4_False_Trip" = FC4=1 &
      ((CT7=2 & Lock7=true & c75=2 & t7=1 & R7_trip & R5_trip)
      |(CT8=2 & Lock8=true & c810=2 & t8=1 & R8_trip & R10_trip));

label "L5_False_Trip" = FC5=1 &
       ((CT9=2 & Lock9=true & c97=2   & t9=1 & R9_trip & R7_trip)
       |(CT10=2 & Lock10=true & c1012=2 & t10=1 & R10_trip & R12_trip));

label "L6_False_Trip" = FC6=1 &
      ((CT11=2 & Lock11=true & c119=2 & t11=1 & R11_trip & R9_trip)
      |(CT12=2 & Lock12=true & c122=2 & t12=1 & R12_trip & R2_trip));

label "L1_Isol" = FC1=1 &(((Break1=true & cb1=1)|(Break11=true&cb11=1))
                  &((Break2=true&cb2=1)|(Break4=true&cb4=1))
                  & (!(sv11=0&cb11=2)& !(sv4=0&cb4=2))); 

label "L2_Isol" = FC2=1 &(((Break3=true & cb3=1)|(Break1=true&cb1=1))
                             &((Break4=true&cb4=1)|(Break6=true&cb6=1))
                        & (!(sv1=0&cb1=2)& !(sv6=0&cb6=2)));
 
label "L3_Isol" = FC3=1 &(((Break5=true & cb5=1)|(Break3=true&cb3=1))
                             &((Break6=true&cb6=1)|(Break8=true&cb8=1))
			& (!(sv3=0&cb3=2)& !(sv8=0&cb8=2)));
 
label "L4_Isol" = FC4=1 &(((Break7=true & cb7=1)|(Break5=true&cb5=1))
                             &((Break8=true&cb8=1)|(Break10=true&cb10=1)) 
			& (!(sv5=0&cb5=2)& !(sv10=0&cb10=2)));

label "L5_Isol" = FC5=1 &(((Break9=true & cb9=1)|(Break7=true&cb7=1))
                             &((Break10=true&cb10=1)|(Break12=true&cb12=1))
 			& (!(sv7=0&cb7=2)& !(sv12=0&cb12=2))); 

label "L6_Isol" = FC6=1 &(((Break11=true & cb11=1)|(Break9=true&cb9=1))
                             &((Break12=true&cb12=1)|(Break2=true&cb2=1)) 
			& (!(sv9=0&cb9=2)& !(sv2=0&cb2=2))); 


label "L1_Fail" = (FC1=1)&(((sv11=0&WD1=1&WD11=2&cb11=2)|(sv4=0&WD2=1&WD4=2&cb4=2))
                           |((sv11=0&cb11=2)|(sv4=0&cb4=2)));
                         
label "L2_Fail" =     (FC2=1) & (((sv1=0 & WD3=1&WD1=2&cb1=2)|(sv6=0 & WD4=1&WD6=2&cb6=2)) 
                       |((sv1=0&cb1=2)|(sv6=0&cb6=2)));                   
                           
label "L3_Fail" =       (FC3=1) & (((sv3=0 & WD5=1&WD3=2&cb3=2)| (sv8=0 & WD6=1&WD8=2&cb8=2))                 
                          |((sv3=0&cb3=2)|(sv8=0&cb8=2)));
                         
label "L4_Fail" =       (FC4=1) & (((sv5=0 & WD7=1&WD5=2&cb5=2)| (sv10=0 & WD8=1&WD10=2&cb10=2))                 
                          |((sv5=0&cb5=2)|(sv10=0&cb10=2)));
                          
 
label "L5_Fail" =       (FC5=1) & (((sv7=0 & WD9=1&WD7=2&cb7=2)| (sv12=0 & WD10=1&WD12=2&cb12=2))                 
                          |((sv7=0&cb7=2)|(sv12=0&cb12=2)));
                          
label "L6_Fail" =       (FC6=1) & (((sv9=0 & WD11=1&WD9=2&cb9=2)| (sv2=0 & WD12=1&WD2=2&cb2=2))                 
                          |((sv9=0&cb9=2)|(sv2=0&cb2=2)));
                                                 
