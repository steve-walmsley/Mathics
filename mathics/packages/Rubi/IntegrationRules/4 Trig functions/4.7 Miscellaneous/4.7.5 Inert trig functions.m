(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[(a_.*F_[c_.+d_.*x_]^p_)^n_,x_Symbol] :=
  With[{v=ActivateTrig[F[c+d*x]]},
  a^IntPart[n]*(v/NonfreeFactors[v,x])^(p*IntPart[n])*(a*v^p)^FracPart[n]/NonfreeFactors[v,x]^(p*FracPart[n])*
    Int[NonfreeFactors[v,x]^(n*p),x]] /;
FreeQ[{a,c,d,n,p},x] && InertTrigQ[F] && Not[IntegerQ[n]] && IntegerQ[p]


(* ::Code:: *)
Int[(a_.*(b_.*F_[c_.+d_.*x_])^p_)^n_.,x_Symbol] :=
  With[{v=ActivateTrig[F[c+d*x]]},
  a^IntPart[n]*(a*(b*v)^p)^FracPart[n]/(b*v)^(p*FracPart[n])*Int[(b*v)^(n*p),x]] /;
FreeQ[{a,b,c,d,n,p},x] && InertTrigQ[F] && Not[IntegerQ[n]] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Cos] || EqQ[F,cos])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[1,Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Sin] || EqQ[F,sin])


(* ::Code:: *)
Int[u_*Cosh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*Sinh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Cot] || EqQ[F,cot])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -1/(b*c)*Subst[Int[SubstFor[1/x,Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Tan] || EqQ[F,tan])


(* ::Code:: *)
Int[u_*Coth[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*Tanh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Tan[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Tan[c*(a+b*x)]/d,u,x],x],x,Tan[c*(a+b*x)]/d] /;
 FunctionOfQ[Tan[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u] && (EqQ[F,Sec] || EqQ[F,sec])


(* ::Code:: *)
Int[u_/cos[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Tan[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Tan[c*(a+b*x)]/d,u,x],x],x,Tan[c*(a+b*x)]/d] /;
 FunctionOfQ[Tan[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Cot[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[1,Cot[c*(a+b*x)]/d,u,x],x],x,Cot[c*(a+b*x)]/d] /;
 FunctionOfQ[Cot[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u] && (EqQ[F,Csc] || EqQ[F,csc])


(* ::Code:: *)
Int[u_/sin[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Cot[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[1,Cot[c*(a+b*x)]/d,u,x],x],x,Cot[c*(a+b*x)]/d] /;
 FunctionOfQ[Cot[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Sech[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Tanh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Tanh[c*(a+b*x)]/d,u,x],x],x,Tanh[c*(a+b*x)]/d] /;
 FunctionOfQ[Tanh[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Csch[c_.*(a_.+b_.*x_)]^2,x_Symbol] :=
  With[{d=FreeFactors[Coth[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[1,Coth[c*(a+b*x)]/d,u,x],x],x,Coth[c*(a+b*x)]/d] /;
 FunctionOfQ[Coth[c*(a+b*x)]/d,u,x,True]] /;
FreeQ[{a,b,c},x] && NonsumQ[u]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_.,x_Symbol] :=
  With[{d=FreeFactors[Tan[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[1/(x^n*(1+d^2*x^2)),Tan[c*(a+b*x)]/d,u,x],x],x,Tan[c*(a+b*x)]/d] /;
 FunctionOfQ[Tan[c*(a+b*x)]/d,u,x,True] && TryPureTanSubst[ActivateTrig[u]*Cot[c*(a+b*x)]^n,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[n] && (EqQ[F,Cot] || EqQ[F,cot])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_.,x_Symbol] :=
  With[{d=FreeFactors[Cot[c*(a+b*x)],x]},
  -1/(b*c*d^(n-1))*Subst[Int[SubstFor[1/(x^n*(1+d^2*x^2)),Cot[c*(a+b*x)]/d,u,x],x],x,Cot[c*(a+b*x)]/d] /;
 FunctionOfQ[Cot[c*(a+b*x)]/d,u,x,True] && TryPureTanSubst[ActivateTrig[u]*Tan[c*(a+b*x)]^n,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[n] && (EqQ[F,Tan] || EqQ[F,tan])


(* ::Code:: *)
Int[u_*Coth[c_.*(a_.+b_.*x_)]^n_.,x_Symbol] :=
  With[{d=FreeFactors[Tanh[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[1/(x^n*(1-d^2*x^2)),Tanh[c*(a+b*x)]/d,u,x],x],x,Tanh[c*(a+b*x)]/d] /;
 FunctionOfQ[Tanh[c*(a+b*x)]/d,u,x,True] && TryPureTanSubst[ActivateTrig[u]*Coth[c*(a+b*x)]^n,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[n]


(* ::Code:: *)
Int[u_*Tanh[c_.*(a_.+b_.*x_)]^n_.,x_Symbol] :=
  With[{d=FreeFactors[Coth[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[1/(x^n*(1-d^2*x^2)),Coth[c*(a+b*x)]/d,u,x],x],x,Coth[c*(a+b*x)]/d] /;
 FunctionOfQ[Coth[c*(a+b*x)]/d,u,x,True] && TryPureTanSubst[ActivateTrig[u]*Tanh[c*(a+b*x)]^n,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[n]


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Cot[a+b*x]],x]","-1/b*Subst[Int[F[x]/(1+x^2),x],x,Cot[a+b*x]]",Hold[
  With[{d=FreeFactors[Cot[v],x]},
  Dist[-d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Cot[v]/d,u,x],x],x,Cot[v]/d],x]]]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Cot[v],x],u,x,True] && TryPureTanSubst[ActivateTrig[u],x]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Cot[v],x]},
  Dist[-d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Cot[v]/d,u,x],x],x,Cot[v]/d],x]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Cot[v],x],u,x,True] && TryPureTanSubst[ActivateTrig[u],x]]]


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Tan[a+b*x]],x]","1/b*Subst[Int[F[x]/(1+x^2),x],x,Tan[a+b*x]]",Hold[
  With[{d=FreeFactors[Tan[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v]/d,u,x],x],x,Tan[v]/d],x]]]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Tan[v],x],u,x,True] && TryPureTanSubst[ActivateTrig[u],x]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Tan[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v]/d,u,x],x],x,Tan[v]/d],x]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Tan[v],x],u,x,True] && TryPureTanSubst[ActivateTrig[u],x]]]


(* ::Code:: *)
Int[F_[a_.+b_.*x_]^p_.*G_[c_.+d_.*x_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[ActivateTrig[F[a+b*x]^p*G[c+d*x]^q],x],x] /;
FreeQ[{a,b,c,d},x] && (EqQ[F,sin] || EqQ[F,cos]) && (EqQ[G,sin] || EqQ[G,cos]) && IGtQ[p,0] && IGtQ[q,0]


(* ::Code:: *)
Int[F_[a_.+b_.*x_]^p_.*G_[c_.+d_.*x_]^q_.*H_[e_.+f_.*x_]^r_.,x_Symbol] :=
  Int[ExpandTrigReduce[ActivateTrig[F[a+b*x]^p*G[c+d*x]^q*H[e+f*x]^r],x],x] /;
FreeQ[{a,b,c,d,e,f},x] && (EqQ[F,sin] || EqQ[F,cos]) && (EqQ[G,sin] || EqQ[G,cos]) && (EqQ[H,sin] || EqQ[H,cos]) && IGtQ[p,0] && IGtQ[q,0] && IGtQ[r,0]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Cos] || EqQ[F,cos])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[1,Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Sin] || EqQ[F,sin])


(* ::Code:: *)
Int[u_*Cosh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*Sinh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[1,Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Cot] || EqQ[F,cot])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -1/(b*c)*Subst[Int[SubstFor[1/x,Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && (EqQ[F,Tan] || EqQ[F,tan])


(* ::Code:: *)
Int[u_*Coth[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*Tanh[c_.*(a_.+b_.*x_)],x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  1/(b*c)*Subst[Int[SubstFor[1/x,Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(1-d^2*x^2)^((n-1)/2),Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Cos] || EqQ[F,cos])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(1-d^2*x^2)^((-n-1)/2),Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Sec] || EqQ[F,sec])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[(1-d^2*x^2)^((n-1)/2),Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Sin] || EqQ[F,sin])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -d/(b*c)*Subst[Int[SubstFor[(1-d^2*x^2)^((-n-1)/2),Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Csc] || EqQ[F,csc])


(* ::Code:: *)
Int[u_*Cosh[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(1+d^2*x^2)^((n-1)/2),Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Sech[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(1+d^2*x^2)^((-n-1)/2),Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Sinh[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(-1+d^2*x^2)^((n-1)/2),Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Csch[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  d/(b*c)*Subst[Int[SubstFor[(-1+d^2*x^2)^((-n-1)/2),Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sin[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[(1-d^2*x^2)^((n-1)/2)/x^n,Sin[c*(a+b*x)]/d,u,x],x],x,Sin[c*(a+b*x)]/d] /;
 FunctionOfQ[Sin[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Cot] || EqQ[F,cot])


(* ::Code:: *)
Int[u_*F_[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cos[c*(a+b*x)],x]},
  -1/(b*c*d^(n-1))*Subst[Int[SubstFor[(1-d^2*x^2)^((n-1)/2)/x^n,Cos[c*(a+b*x)]/d,u,x],x],x,Cos[c*(a+b*x)]/d] /;
 FunctionOfQ[Cos[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Tan] || EqQ[F,tan])


(* ::Code:: *)
Int[u_*Coth[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Sinh[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[(1+d^2*x^2)^((n-1)/2)/x^n,Sinh[c*(a+b*x)]/d,u,x],x],x,Sinh[c*(a+b*x)]/d] /;
 FunctionOfQ[Sinh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*Tanh[c_.*(a_.+b_.*x_)]^n_,x_Symbol] :=
  With[{d=FreeFactors[Cosh[c*(a+b*x)],x]},
  1/(b*c*d^(n-1))*Subst[Int[SubstFor[(-1+d^2*x^2)^((n-1)/2)/x^n,Cosh[c*(a+b*x)]/d,u,x],x],x,Cosh[c*(a+b*x)]/d] /;
 FunctionOfQ[Cosh[c*(a+b*x)]/d,u,x]] /;
FreeQ[{a,b,c},x] && IntegerQ[(n-1)/2] && NonsumQ[u]


(* ::Code:: *)
Int[u_*(v_+d_.*F_[c_.*(a_.+b_.*x_)]^n_.),x_Symbol] :=
  With[{e=FreeFactors[Sin[c*(a+b*x)],x]},
  Int[ActivateTrig[u*v],x] + d*Int[ActivateTrig[u]*Cos[c*(a+b*x)]^n,x] /;
 FunctionOfQ[Sin[c*(a+b*x)]/e,u,x]] /;
FreeQ[{a,b,c,d},x] && Not[FreeQ[v,x]] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Cos] || EqQ[F,cos])


(* ::Code:: *)
Int[u_*(v_+d_.*F_[c_.*(a_.+b_.*x_)]^n_.),x_Symbol] :=
  With[{e=FreeFactors[Cos[c*(a+b*x)],x]},
  Int[ActivateTrig[u*v],x] + d*Int[ActivateTrig[u]*Sin[c*(a+b*x)]^n,x] /;
 FunctionOfQ[Cos[c*(a+b*x)]/e,u,x]] /;
FreeQ[{a,b,c,d},x] && Not[FreeQ[v,x]] && IntegerQ[(n-1)/2] && NonsumQ[u] && (EqQ[F,Sin] || EqQ[F,sin])


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Sin[a+b*x]]*Cos[a+b*x],x]","Subst[Int[F[x],x],x,Sin[a+b*x]]/b",Hold[
  With[{d=FreeFactors[Sin[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1,Sin[v]/d,u/Cos[v],x],x],x,Sin[v]/d],x]]]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Sin[v],x],u/Cos[v],x]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Sin[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1,Sin[v]/d,u/Cos[v],x],x],x,Sin[v]/d],x]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Sin[v],x],u/Cos[v],x]]]


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Cos[a+b*x]]*Sin[a+b*x],x]","-Subst[Int[F[x],x],x,Cos[a+b*x]]/b",Hold[
  With[{d=FreeFactors[Cos[v],x]},
  Dist[-d/Coefficient[v,x,1],Subst[Int[SubstFor[1,Cos[v]/d,u/Sin[v],x],x],x,Cos[v]/d],x]]]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Cos[v],x],u/Sin[v],x]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Cos[v],x]},
  Dist[-d/Coefficient[v,x,1],Subst[Int[SubstFor[1,Cos[v]/d,u/Sin[v],x],x],x,Cos[v]/d],x]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Cos[v],x],u/Sin[v],x]]]


(* ::Code:: *)
Int[u_.*(a_.+b_.*cos[d_.+e_.*x_]^2+c_.*sin[d_.+e_.*x_]^2)^p_.,x_Symbol] :=
  (a+c)^p*Int[ActivateTrig[u],x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[b-c,0]


(* ::Code:: *)
Int[u_.*(a_.+b_.*tan[d_.+e_.*x_]^2+c_.*sec[d_.+e_.*x_]^2)^p_.,x_Symbol] :=
  (a+c)^p*Int[ActivateTrig[u],x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[b+c,0]


(* ::Code:: *)
Int[u_.*(a_.+b_.*cot[d_.+e_.*x_]^2+c_.*csc[d_.+e_.*x_]^2)^p_.,x_Symbol] :=
  (a+c)^p*Int[ActivateTrig[u],x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[b+c,0]


(* ::Code:: *)
Int[u_/y_,x_Symbol] :=
  With[{q=DerivativeDivides[ActivateTrig[y],ActivateTrig[u],x]},
    q*Log[RemoveContent[ActivateTrig[y],x]] /;
 Not[FalseQ[q]]] /;
Not[InertTrigFreeQ[u]]


(* ::Code:: *)
Int[u_/(y_*w_),x_Symbol] :=
  With[{q=DerivativeDivides[ActivateTrig[y*w],ActivateTrig[u],x]},
    q*Log[RemoveContent[ActivateTrig[y*w],x]] /;
 Not[FalseQ[q]]] /;
Not[InertTrigFreeQ[u]]


(* ::Code:: *)
Int[u_*y_^m_.,x_Symbol] :=
  With[{q=DerivativeDivides[ActivateTrig[y],ActivateTrig[u],x]},
   q*ActivateTrig[y^(m+1)]/(m+1) /;
 Not[FalseQ[q]]] /;
FreeQ[m,x] && NeQ[m,-1] && Not[InertTrigFreeQ[u]]


(* ::Code:: *)
Int[u_*y_^m_.*z_^n_.,x_Symbol] :=
  With[{q=DerivativeDivides[ActivateTrig[y*z],ActivateTrig[u*z^(n-m)],x]},
   q*ActivateTrig[y^(m+1)*z^(m+1)]/(m+1) /;
 Not[FalseQ[q]]] /;
FreeQ[{m,n},x] && NeQ[m,-1] && Not[InertTrigFreeQ[u]]


(* ::Code:: *)
Int[u_.*(a_.*F_[c_.+d_.*x_]^p_)^n_,x_Symbol] :=
  With[{v=ActivateTrig[F[c+d*x]]},
  a^IntPart[n]*(v/NonfreeFactors[v,x])^(p*IntPart[n])*(a*v^p)^FracPart[n]/NonfreeFactors[v,x]^(p*FracPart[n])*
    Int[ActivateTrig[u]*NonfreeFactors[v,x]^(n*p),x]] /;
FreeQ[{a,c,d,n,p},x] && InertTrigQ[F] && Not[IntegerQ[n]] && IntegerQ[p]


(* ::Code:: *)
Int[u_.*(a_.*(b_.*F_[c_.+d_.*x_])^p_)^n_.,x_Symbol] :=
  With[{v=ActivateTrig[F[c+d*x]]},
  a^IntPart[n]*(a*(b*v)^p)^FracPart[n]/(b*v)^(p*FracPart[n])*Int[ActivateTrig[u]*(b*v)^(n*p),x]] /;
FreeQ[{a,b,c,d,n,p},x] && InertTrigQ[F] && Not[IntegerQ[n]] && Not[IntegerQ[p]]


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Tan[a+b*x]],x]","1/b*Subst[Int[F[x]/(1+x^2),x],x,Tan[a+b*x]]",Hold[
  With[{d=FreeFactors[Tan[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v]/d,u,x],x],x,Tan[v]/d],x]]]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Tan[v],x],u,x]] /;
SimplifyFlag && InverseFunctionFreeQ[u,x] && 
  Not[MatchQ[u,v_.*(c_.*tan[w_]^n_.*tan[z_]^n_.)^p_. /; FreeQ[{c,p},x] && IntegerQ[n] && LinearQ[w,x] && EqQ[z,2*w]]],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Tan[v],x]},
  Dist[d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v]/d,u,x],x],x,Tan[v]/d],x]] /;
 Not[FalseQ[v]] && FunctionOfQ[NonfreeFactors[Tan[v],x],u,x]] /;
InverseFunctionFreeQ[u,x] && 
  Not[MatchQ[u,v_.*(c_.*tan[w_]^n_.*tan[z_]^n_.)^p_. /; FreeQ[{c,p},x] && IntegerQ[n] && LinearQ[w,x] && EqQ[z,2*w]]]]


(* ::Code:: *)
Int[u_*(c_.*sin[v_])^m_,x_Symbol] :=
  With[{w=FunctionOfTrig[u*Sin[v/2]^(2*m)/(c*Tan[v/2])^m,x]},
  (c*Sin[v])^m*(c*Tan[v/2])^m/Sin[v/2]^(2*m)*Int[u*Sin[v/2]^(2*m)/(c*Tan[v/2])^m,x] /;
 Not[FalseQ[w]] && FunctionOfQ[NonfreeFactors[Tan[w],x],u*Sin[v/2]^(2*m)/(c*Tan[v/2])^m,x]] /;
FreeQ[c,x] && LinearQ[v,x] && IntegerQ[m+1/2] && Not[SumQ[u]] && InverseFunctionFreeQ[u,x]


(* ::Code:: *)
Int[u_.*(a_.*tan[c_.+d_.*x_]^n_.+b_.*sec[c_.+d_.*x_]^n_.)^p_,x_Symbol] :=
  Int[ActivateTrig[u]*Sec[c+d*x]^(n*p)*(b+a*Sin[c+d*x]^n)^p,x] /;
FreeQ[{a,b,c,d},x] && IntegersQ[n,p]


(* ::Code:: *)
Int[u_.*(a_.*cot[c_.+d_.*x_]^n_.+b_.*csc[c_.+d_.*x_]^n_.)^p_,x_Symbol] :=
  Int[ActivateTrig[u]*Csc[c+d*x]^(n*p)*(b+a*Cos[c+d*x]^n)^p,x] /;
FreeQ[{a,b,c,d},x] && IntegersQ[n,p]


(* ::Code:: *)
Int[u_*(a_*F_[c_.+d_.*x_]^p_.+b_.*F_[c_.+d_.*x_]^q_.)^n_.,x_Symbol] :=
  Int[ActivateTrig[u*F[c+d*x]^(n*p)*(a+b*F[c+d*x]^(q-p))^n],x] /;
FreeQ[{a,b,c,d,p,q},x] && InertTrigQ[F] && IntegerQ[n] && PosQ[q-p]


(* ::Code:: *)
Int[u_*(a_*F_[d_.+e_.*x_]^p_.+b_.*F_[d_.+e_.*x_]^q_.+c_.*F_[d_.+e_.*x_]^r_.)^n_.,x_Symbol] :=
  Int[ActivateTrig[u*F[d+e*x]^(n*p)*(a+b*F[d+e*x]^(q-p)+c*F[d+e*x]^(r-p))^n],x] /;
FreeQ[{a,b,c,d,e,p,q,r},x] && InertTrigQ[F] && IntegerQ[n] && PosQ[q-p] && PosQ[r-p]


(* ::Code:: *)
Int[u_*(a_+b_.*F_[d_.+e_.*x_]^p_.+c_.*F_[d_.+e_.*x_]^q_.)^n_.,x_Symbol] :=
  Int[ActivateTrig[u*F[d+e*x]^(n*p)*(b+a*F[d+e*x]^(-p)+c*F[d+e*x]^(q-p))^n],x] /;
FreeQ[{a,b,c,d,e,p,q},x] && InertTrigQ[F] && IntegerQ[n] && NegQ[p]


(* ::Code:: *)
Int[u_.*(a_.*cos[c_.+d_.*x_]+b_.*sin[c_.+d_.*x_])^n_.,x_Symbol] :=
  Int[ActivateTrig[u]*(a*E^(-a/b*(c+d*x)))^n,x] /;
FreeQ[{a,b,c,d,n},x] && EqQ[a^2+b^2,0]


(* ::Code:: *)
Int[u_,x_Symbol] :=
  Int[TrigSimplify[u],x] /;
TrigSimplifyQ[u]


(* ::Code:: *)
Int[u_.*(a_*v_)^p_,x_Symbol] :=
  With[{uu=ActivateTrig[u],vv=ActivateTrig[v]},
  a^IntPart[p]*(a*vv)^FracPart[p]/(vv^FracPart[p])*Int[uu*vv^p,x]] /;
FreeQ[{a,p},x] && Not[IntegerQ[p]] && Not[InertTrigFreeQ[v]]


(* ::Code:: *)
Int[u_.*(v_^m_)^p_,x_Symbol] :=
  With[{uu=ActivateTrig[u],vv=ActivateTrig[v]},
  (vv^m)^FracPart[p]/(vv^(m*FracPart[p]))*Int[uu*vv^(m*p),x]] /;
FreeQ[{m,p},x] && Not[IntegerQ[p]] && Not[InertTrigFreeQ[v]]


(* ::Code:: *)
Int[u_.*(v_^m_.*w_^n_.)^p_,x_Symbol] :=
  With[{uu=ActivateTrig[u],vv=ActivateTrig[v],ww=ActivateTrig[w]},
  (vv^m*ww^n)^FracPart[p]/(vv^(m*FracPart[p])*ww^(n*FracPart[p]))*Int[uu*vv^(m*p)*ww^(n*p),x]] /;
FreeQ[{m,n,p},x] && Not[IntegerQ[p]] && (Not[InertTrigFreeQ[v]] || Not[InertTrigFreeQ[w]])


(* ::Code:: *)
Int[u_,x_Symbol] :=
  With[{v=ExpandTrig[u,x]},
  Int[v,x] /;
 SumQ[v]] /;
Not[InertTrigFreeQ[u]]


(* ::Code:: *)
If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{w=Block[{$ShowSteps=False,$StepCounter=Null}, 
			Int[SubstFor[1/(1+FreeFactors[Tan[FunctionOfTrig[u,x]/2],x]^2*x^2),Tan[FunctionOfTrig[u,x]/2]/FreeFactors[Tan[FunctionOfTrig[u,x]/2],x],u,x],x]]},  
  ShowStep["","Int[F[Sin[a+b*x],Cos[a+b*x]],x]","2/b*Subst[Int[1/(1+x^2)*F[2*x/(1+x^2),(1-x^2)/(1+x^2)],x],x,Tan[(a+b*x)/2]]",Hold[
  Module[{v=FunctionOfTrig[u,x],d},
  d=FreeFactors[Tan[v/2],x];
  Dist[2*d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v/2]/d,u,x],x],x,Tan[v/2]/d],x]]]] /;
 CalculusFreeQ[w,x]] /;
SimplifyFlag && InverseFunctionFreeQ[u,x] && Not[FalseQ[FunctionOfTrig[u,x]]],

Int[u_,x_Symbol] :=
  With[{w=Block[{$ShowSteps=False,$StepCounter=Null}, 
			Int[SubstFor[1/(1+FreeFactors[Tan[FunctionOfTrig[u,x]/2],x]^2*x^2),Tan[FunctionOfTrig[u,x]/2]/FreeFactors[Tan[FunctionOfTrig[u,x]/2],x],u,x],x]]},  
  Module[{v=FunctionOfTrig[u,x],d},
  d=FreeFactors[Tan[v/2],x];
  Dist[2*d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v/2]/d,u,x],x],x,Tan[v/2]/d],x]] /;
 CalculusFreeQ[w,x]] /;
InverseFunctionFreeQ[u,x] && Not[FalseQ[FunctionOfTrig[u,x]]]]


(* ::Code:: *)
(* If[TrueQ[$LoadShowSteps],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  ShowStep["","Int[F[Sin[a+b*x],Cos[a+b*x]],x]","2/b*Subst[Int[1/(1+x^2)*F[2*x/(1+x^2),(1-x^2)/(1+x^2)],x],x,Tan[(a+b*x)/2]]",Hold[
  With[{d=FreeFactors[Tan[v/2],x]},
  Dist[2*d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v/2]/d,u,x],x],x,Tan[v/2]/d],x]]]] /;
 Not[FalseQ[v]]] /;
SimplifyFlag && InverseFunctionFreeQ[u,x],

Int[u_,x_Symbol] :=
  With[{v=FunctionOfTrig[u,x]},
  With[{d=FreeFactors[Tan[v/2],x]},
  Dist[2*d/Coefficient[v,x,1],Subst[Int[SubstFor[1/(1+d^2*x^2),Tan[v/2]/d,u,x],x],x,Tan[v/2]/d],x]] /;
 Not[FalseQ[v]]] /;
InverseFunctionFreeQ[u,x]] *)


(* ::Code:: *)
Int[u_,x_Symbol] :=
  With[{v=ActivateTrig[u]},
   CannotIntegrate[v,x]] /;
Not[InertTrigFreeQ[u]]



