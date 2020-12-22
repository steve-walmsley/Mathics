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
Int[(g_.*tan[e_.+f_.*x_])^p_./(a_+b_.*sin[e_.+f_.*x_]),x_Symbol] :=
  1/a*Int[Sec[e+f*x]^2*(g*Tan[e+f*x])^p,x] - 1/(b*g)*Int[Sec[e+f*x]*(g*Tan[e+f*x])^(p+1),x] /;
FreeQ[{a,b,e,f,g,p},x] && EqQ[a^2-b^2,0] && NeQ[p,-1]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  1/f*Subst[Int[x^p*(a+x)^(m-(p+1)/2)/(a-x)^((p+1)/2),x],x,b*Sin[e+f*x]] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && IntegerQ[(p+1)/2]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  a^p*Int[Sin[e+f*x]^p/(a-b*Sin[e+f*x])^m,x] /;
FreeQ[{a,b,e,f},x] && EqQ[a^2-b^2,0] && IntegersQ[m,p] && EqQ[p,2*m]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  a^p*Int[ExpandIntegrand[Sin[e+f*x]^p*(a+b*Sin[e+f*x])^(m-p/2)/(a-b*Sin[e+f*x])^(p/2),x],x] /;
FreeQ[{a,b,e,f},x] && EqQ[a^2-b^2,0] && IntegersQ[m,p/2] && (LtQ[p,0] || GtQ[m-p/2,0])


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  Int[ExpandIntegrand[(g*Tan[e+f*x])^p,(a+b*Sin[e+f*x])^m,x],x] /;
FreeQ[{a,b,e,f,g,p},x] && EqQ[a^2-b^2,0] && IGtQ[m,0]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  a^(2*m)*Int[ExpandIntegrand[(g*Tan[e+f*x])^p*Sec[e+f*x]^(-m),(a*Sec[e+f*x]-b*Tan[e+f*x])^(-m),x],x] /;
FreeQ[{a,b,e,f,g,p},x] && EqQ[a^2-b^2,0] && ILtQ[m,0]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^2*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  b*(a+b*Sin[e+f*x])^m/(a*f*(2*m-1)*Cos[e+f*x]) - 
  1/(a^2*(2*m-1))*Int[(a+b*Sin[e+f*x])^(m+1)*(a*m-b*(2*m-1)*Sin[e+f*x])/Cos[e+f*x]^2,x] /;
FreeQ[{a,b,e,f},x] && EqQ[a^2-b^2,0] && Not[IntegerQ[m]] && LtQ[m,0]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^2*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  -(a+b*Sin[e+f*x])^(m+1)/(b*f*m*Cos[e+f*x]) + 
  1/(b*m)*Int[(a+b*Sin[e+f*x])^m*(b*(m+1)+a*Sin[e+f*x])/Cos[e+f*x]^2,x] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && Not[IntegerQ[m]] && Not[LtQ[m,0]]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^4*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  Int[(a+b*Sin[e+f*x])^m,x] - Int[(a+b*Sin[e+f*x])^m*(1-2*Sin[e+f*x]^2)/Cos[e+f*x]^4,x] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && IntegerQ[m-1/2]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^2,x_Symbol] :=
  -(a+b*Sin[e+f*x])^(m+1)/(a*f*Tan[e+f*x]) + 
  1/b^2*Int[(a+b*Sin[e+f*x])^(m+1)*(b*m-a*(m+1)*Sin[e+f*x])/Sin[e+f*x],x] /;
FreeQ[{a,b,e,f},x] && EqQ[a^2-b^2,0] && IntegerQ[m-1/2] && LtQ[m,-1]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_./tan[e_.+f_.*x_]^2,x_Symbol] :=
  -(a+b*Sin[e+f*x])^m/(f*Tan[e+f*x]) + 
  1/a*Int[(a+b*Sin[e+f*x])^m*(b*m-a*(m+1)*Sin[e+f*x])/Sin[e+f*x],x] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && IntegerQ[m-1/2] && Not[LtQ[m,-1]]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^4,x_Symbol] :=
  -2/(a*b)*Int[(a+b*Sin[e+f*x])^(m+2)/Sin[e+f*x]^3,x] + 
  1/a^2*Int[(a+b*Sin[e+f*x])^(m+2)*(1+Sin[e+f*x]^2)/Sin[e+f*x]^4,x] /;
FreeQ[{a,b,e,f},x] && EqQ[a^2-b^2,0] && IntegerQ[m-1/2] && LtQ[m,-1]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^4,x_Symbol] :=
  Int[(a+b*Sin[e+f*x])^m,x] + Int[(a+b*Sin[e+f*x])^m*(1-2*Sin[e+f*x]^2)/Sin[e+f*x]^4,x] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && IntegerQ[m-1/2] && Not[LtQ[m,-1]]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  Sqrt[a+b*Sin[e+f*x]]*Sqrt[a-b*Sin[e+f*x]]/(b*f*Cos[e+f*x])*
    Subst[Int[x^p*(a+x)^(m-(p+1)/2)/(a-x)^((p+1)/2),x],x,b*Sin[e+f*x]] /;
FreeQ[{a,b,e,f,m},x] && EqQ[a^2-b^2,0] && Not[IntegerQ[m]] && IntegerQ[p/2]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  (g*Tan[e+f*x])^(p+1)*(a-b*Sin[e+f*x])^((p+1)/2)*(a+b*Sin[e+f*x])^((p+1)/2)/(f*g*(b*Sin[e+f*x])^(p+1))*
    Subst[Int[x^p*(a+x)^(m-(p+1)/2)/(a-x)^((p+1)/2),x],x,b*Sin[e+f*x]] /;
FreeQ[{a,b,e,f,g,m,p},x] && EqQ[a^2-b^2,0] && Not[IntegerQ[m]] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  1/f*Subst[Int[(x^p*(a+x)^m)/(b^2-x^2)^((p+1)/2),x],x,b*Sin[e+f*x]] /;
FreeQ[{a,b,e,f,m},x] && NeQ[a^2-b^2,0] && IntegerQ[(p+1)/2]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  Int[ExpandIntegrand[(g*Tan[e+f*x])^p,(a+b*Sin[e+f*x])^m,x],x] /;
FreeQ[{a,b,e,f,g,p},x] && NeQ[a^2-b^2,0] && IGtQ[m,0]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^2,x_Symbol] :=
  Int[(a+b*Sin[e+f*x])^m*(1-Sin[e+f*x]^2)/Sin[e+f*x]^2,x] /;
FreeQ[{a,b,e,f,m},x] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^4,x_Symbol] :=
  -Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(3*a*f*Sin[e+f*x]^3) - 
  (3*a^2+b^2*(m-2))*Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(3*a^2*b*f*(m+1)*Sin[e+f*x]^2) - 
  1/(3*a^2*b*(m+1))*Int[(a+b*Sin[e+f*x])^(m+1)/Sin[e+f*x]^3*
    Simp[6*a^2-b^2*(m-1)*(m-2)+a*b*(m+1)*Sin[e+f*x]-(3*a^2-b^2*m*(m-2))*Sin[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f},x] && NeQ[a^2-b^2,0] && LtQ[m,-1] && IntegerQ[2*m]


(* ::Code:: *)
(* Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^4,x_Symbol] :=
  -Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(3*a*f*Sin[e+f*x]^3) - 
  Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(b*f*m*Sin[e+f*x]^2) - 
  1/(3*a*b*m)*Int[(a+b*Sin[e+f*x])^m/Sin[e+f*x]^3*
    Simp[6*a^2-b^2*m*(m-2)+a*b*(m+3)*Sin[e+f*x]-(3*a^2-b^2*m*(m-1))*Sin[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,m},x] && NeQ[a^2-b^2,0] && Not[LtQ[m,-1]] && IntegerQ[2*m] *)


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^4,x_Symbol] :=
  -Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(3*a*f*Sin[e+f*x]^3) - 
  b*(m-2)*Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(6*a^2*f*Sin[e+f*x]^2) - 
  1/(6*a^2)*Int[(a+b*Sin[e+f*x])^m/Sin[e+f*x]^2*
    Simp[8*a^2-b^2*(m-1)*(m-2)+a*b*m*Sin[e+f*x]-(6*a^2-b^2*m*(m-2))*Sin[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,m},x] && NeQ[a^2-b^2,0] && Not[LtQ[m,-1]] && IntegerQ[2*m]


(* ::Code:: *)
Int[(a_+b_.*sin[e_.+f_.*x_])^m_/tan[e_.+f_.*x_]^6,x_Symbol] :=
  -Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(5*a*f*Sin[e+f*x]^5) - 
  b*(m-4)*Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(20*a^2*f*Sin[e+f*x]^4) + 
  a*Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(b^2*f*m*(m-1)*Sin[e+f*x]^3) + 
  Cos[e+f*x]*(a+b*Sin[e+f*x])^(m+1)/(b*f*m*Sin[e+f*x]^2) + 
  1/(20*a^2*b^2*m*(m-1))*Int[(a+b*Sin[e+f*x])^m/Sin[e+f*x]^4*
    Simp[60*a^4-44*a^2*b^2*(m-1)*m+b^4*m*(m-1)*(m-3)*(m-4)+a*b*m*(20*a^2-b^2*m*(m-1))*Sin[e+f*x]-
      (40*a^4+b^4*m*(m-1)*(m-2)*(m-4)-20*a^2*b^2*(m-1)*(2*m+1))*Sin[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,m},x] && NeQ[a^2-b^2,0] && NeQ[m,1] && IntegerQ[2*m]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_/(a_+b_.*sin[e_.+f_.*x_]),x_Symbol] :=
  a/(a^2-b^2)*Int[(g*Tan[e+f*x])^p/Sin[e+f*x]^2,x] - 
  b*g/(a^2-b^2)*Int[(g*Tan[e+f*x])^(p-1)/Cos[e+f*x],x] - 
  a^2*g^2/(a^2-b^2)*Int[(g*Tan[e+f*x])^(p-2)/(a+b*Sin[e+f*x]),x] /;
FreeQ[{a,b,e,f,g},x] && NeQ[a^2-b^2,0] && IntegersQ[2*p] && GtQ[p,1]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_/(a_+b_.*sin[e_.+f_.*x_]),x_Symbol] :=
  1/a*Int[(g*Tan[e+f*x])^p/Cos[e+f*x]^2,x] - 
  b/(a^2*g)*Int[(g*Tan[e+f*x])^(p+1)/Cos[e+f*x],x] - 
  (a^2-b^2)/(a^2*g^2)*Int[(g*Tan[e+f*x])^(p+2)/(a+b*Sin[e+f*x]),x] /;
FreeQ[{a,b,e,f,g},x] && NeQ[a^2-b^2,0] && IntegersQ[2*p] && LtQ[p,-1]


(* ::Code:: *)
Int[Sqrt[g_.*tan[e_.+f_.*x_]]/(a_+b_.*sin[e_.+f_.*x_]),x_Symbol] :=
  Sqrt[Cos[e+f*x]]*Sqrt[g*Tan[e+f*x]]/Sqrt[Sin[e+f*x]]*Int[Sqrt[Sin[e+f*x]]/(Sqrt[Cos[e+f*x]]*(a+b*Sin[e+f*x])),x] /;
FreeQ[{a,b,e,f,g},x] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[1/(Sqrt[g_*tan[e_.+f_.*x_]]*(a_+b_.*sin[e_.+f_.*x_])),x_Symbol] :=
  Sqrt[Sin[e+f*x]]/(Sqrt[Cos[e+f*x]]*Sqrt[g*Tan[e+f*x]])*Int[Sqrt[Cos[e+f*x]]/(Sqrt[Sin[e+f*x]]*(a+b*Sin[e+f*x])),x] /;
FreeQ[{a,b,e,f,g},x] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[tan[e_.+f_.*x_]^p_*(a_+b_.*sin[e_.+f_.*x_])^m_,x_Symbol] :=
  Int[ExpandIntegrand[Sin[e+f*x]^p*(a+b*Sin[e+f*x])^m/(1-Sin[e+f*x]^2)^(p/2),x],x] /;
FreeQ[{a,b,e,f},x] && NeQ[a^2-b^2,0] && IntegersQ[m,p/2]


(* ::Code:: *)
Int[(g_.*tan[e_.+f_.*x_])^p_.*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  Unintegrable[(g*Tan[e+f*x])^p*(a+b*Sin[e+f*x])^m,x] /;
FreeQ[{a,b,e,f,g,m,p},x]


(* ::Code:: *)
Int[(g_.*cot[e_.+f_.*x_])^p_*(a_+b_.*sin[e_.+f_.*x_])^m_.,x_Symbol] :=
  g^(2*IntPart[p])*(g*Cot[e+f*x])^FracPart[p]*(g*Tan[e+f*x])^FracPart[p]*Int[(a+b*Sin[e+f*x])^m/(g*Tan[e+f*x])^p,x] /;
FreeQ[{a,b,e,f,g,m,p},x] && Not[IntegerQ[p]]



