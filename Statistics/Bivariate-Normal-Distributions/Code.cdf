(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     12280,        294]
NotebookOptionsPosition[     12488,        279]
NotebookOutlinePosition[     13095,        303]
CellTagsIndexPosition[     13052,        300]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 StyleBox[
  RowBox[{"Bivariate", " ", "Normal", " ", "Distribution", " ", "Plots"}], 
  "Title"]], "Input", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Manipulate", "[", 
    RowBox[{
     RowBox[{"{", "\n", 
      RowBox[{
       RowBox[{"Plot3D", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"BinormalDistribution", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"\[Mu]1", ",", "\[Mu]2"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\[Sigma]1", ",", "\[Sigma]2"}], "}"}], " ", ",", 
             "\[Rho]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"-", "13"}], ",", "13"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", 
           RowBox[{"-", "13"}], ",", "13"}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
         RowBox[{"ColorFunction", "\[Rule]", 
          RowBox[{"Function", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x", ",", "y", ",", "z"}], "}"}], ",", 
            RowBox[{"Hue", "[", "z", "]"}]}], "]"}]}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<3D PDF Plot\>\"", ",", 
            RowBox[{"FontSize", "\[Rule]", "18"}]}], " ", "]"}]}]}], "]"}], 
       ",", 
       RowBox[{"ContourPlot", "[", 
        RowBox[{
         RowBox[{"PDF", "[", 
          RowBox[{
           RowBox[{"BinormalDistribution", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"\[Mu]1", ",", "\[Mu]2"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\[Sigma]1", ",", "\[Sigma]2"}], "}"}], " ", ",", 
             "\[Rho]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"-", "13."}], ",", "13."}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", 
           RowBox[{"-", "13."}], ",", "13."}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
         RowBox[{"ColorFunction", "\[Rule]", "\"\<BlueGreenYellow\>\""}], ",", 
         RowBox[{"PlotLegends", "\[Rule]", "Automatic"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<PDF Contour Plot\>\"", ",", 
            RowBox[{"FontSize", "\[Rule]", "18"}]}], " ", "]"}]}]}], "]"}], 
       ",", 
       RowBox[{"Plot3D", "[", 
        RowBox[{
         RowBox[{"CDF", "[", 
          RowBox[{
           RowBox[{"BinormalDistribution", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"\[Mu]1", ",", "\[Mu]2"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\[Sigma]1", ",", "\[Sigma]2"}], "}"}], " ", ",", 
             "\[Rho]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"-", "13."}], ",", "13."}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", 
           RowBox[{"-", "13."}], ",", "13."}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
         RowBox[{"ColorFunction", "\[Rule]", "\"\<BlueGreenYellow\>\""}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<3D CDF Plot\>\"", ",", 
            RowBox[{"FontSize", "\[Rule]", "18"}]}], " ", "]"}]}]}], "]"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"ContourPlot", "[", 
        RowBox[{
         RowBox[{"CDF", "[", 
          RowBox[{
           RowBox[{"BinormalDistribution", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"\[Mu]1", ",", "\[Mu]2"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\[Sigma]1", ",", "\[Sigma]2"}], "}"}], " ", ",", 
             "\[Rho]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", 
           RowBox[{"-", "13."}], ",", "13."}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", 
           RowBox[{"-", "21."}], ",", "21."}], "}"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
         RowBox[{"ColorFunction", "\[Rule]", "\"\<BlueGreenYellow\>\""}], ",", 
         RowBox[{"PlotLegends", "\[Rule]", "Automatic"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<CDF Contour Plot\>\"", ",", 
            RowBox[{"FontSize", "\[Rule]", "18"}]}], " ", "]"}]}]}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", ",", 
     RowBox[{"{", 
      RowBox[{"\[Mu]1", ",", 
       RowBox[{"-", "1"}], ",", "1", ",", " ", ".1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Mu]2", ",", 
       RowBox[{"-", "1"}], ",", "1", ",", " ", ".1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Sigma]1", ",", ".1", ",", "2", ",", " ", ".1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Sigma]2", ",", ".01", ",", "2.", ",", " ", ".1"}], "}"}], 
     " ", ",", 
     RowBox[{"{", 
      RowBox[{"\[Rho]", ",", 
       RowBox[{"-", ".99"}], ",", ".99", ",", " ", ".1"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]"}]}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`\[Mu]1$$ = 0, $CellContext`\[Mu]2$$ = 
    0, $CellContext`\[Rho]$$ = 0.9100000000000001, $CellContext`\[Sigma]1$$ = 
    1.3000000000000003`, $CellContext`\[Sigma]2$$ = 0.7100000000000001, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`\[Mu]1$$], -1, 1, 0.1}, {
      Hold[$CellContext`\[Mu]2$$], -1, 1, 0.1}, {
      Hold[$CellContext`\[Sigma]1$$], 0.1, 2, 0.1}, {
      Hold[$CellContext`\[Sigma]2$$], 0.01, 2., 0.1}, {
      Hold[$CellContext`\[Rho]$$], -0.99, 0.99, 0.1}}, Typeset`size$$ = {
    493., {422., 132.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`\[Mu]1$393408$$ = 
    0, $CellContext`\[Mu]2$393409$$ = 0, $CellContext`\[Sigma]1$393410$$ = 
    0, $CellContext`\[Sigma]2$393411$$ = 0, $CellContext`\[Rho]$393412$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`\[Mu]1$$ = -1, $CellContext`\[Mu]2$$ = -1, \
$CellContext`\[Rho]$$ = -0.99, $CellContext`\[Sigma]1$$ = 
        0.1, $CellContext`\[Sigma]2$$ = 0.01}, "ControllerVariables" :> {
        Hold[$CellContext`\[Mu]1$$, $CellContext`\[Mu]1$393408$$, 0], 
        Hold[$CellContext`\[Mu]2$$, $CellContext`\[Mu]2$393409$$, 0], 
        Hold[$CellContext`\[Sigma]1$$, $CellContext`\[Sigma]1$393410$$, 0], 
        Hold[$CellContext`\[Sigma]2$$, $CellContext`\[Sigma]2$393411$$, 0], 
        Hold[$CellContext`\[Rho]$$, $CellContext`\[Rho]$393412$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> {
        Plot3D[
         PDF[
          
          BinormalDistribution[{$CellContext`\[Mu]1$$, \
$CellContext`\[Mu]2$$}, {$CellContext`\[Sigma]1$$, $CellContext`\[Sigma]2$$}, \
$CellContext`\[Rho]$$], {$CellContext`x, $CellContext`y}], {$CellContext`x, \
-13, 13}, {$CellContext`y, -13, 13}, PlotRange -> All, ColorFunction -> 
         Function[{$CellContext`x, $CellContext`y, $CellContext`z}, 
           Hue[$CellContext`z]], PlotLabel -> 
         Style["3D PDF Plot", FontSize -> 18]], 
        ContourPlot[
         PDF[
          
          BinormalDistribution[{$CellContext`\[Mu]1$$, \
$CellContext`\[Mu]2$$}, {$CellContext`\[Sigma]1$$, $CellContext`\[Sigma]2$$}, \
$CellContext`\[Rho]$$], {$CellContext`x, $CellContext`y}], {$CellContext`x, \
-13., 13.}, {$CellContext`y, -13., 13.}, PlotRange -> All, ColorFunction -> 
         "BlueGreenYellow", PlotLegends -> Automatic, PlotLabel -> 
         Style["PDF Contour Plot", FontSize -> 18]], 
        Plot3D[
         CDF[
          
          BinormalDistribution[{$CellContext`\[Mu]1$$, \
$CellContext`\[Mu]2$$}, {$CellContext`\[Sigma]1$$, $CellContext`\[Sigma]2$$}, \
$CellContext`\[Rho]$$], {$CellContext`x, $CellContext`y}], {$CellContext`x, \
-13., 13.}, {$CellContext`y, -13., 13.}, PlotRange -> All, ColorFunction -> 
         "BlueGreenYellow", PlotLabel -> 
         Style["3D CDF Plot", FontSize -> 18]], 
        ContourPlot[
         CDF[
          
          BinormalDistribution[{$CellContext`\[Mu]1$$, \
$CellContext`\[Mu]2$$}, {$CellContext`\[Sigma]1$$, $CellContext`\[Sigma]2$$}, \
$CellContext`\[Rho]$$], {$CellContext`x, $CellContext`y}], {$CellContext`x, \
-13., 13.}, {$CellContext`y, -21., 21.}, PlotRange -> All, ColorFunction -> 
         "BlueGreenYellow", PlotLegends -> Automatic, PlotLabel -> 
         Style["CDF Contour Plot", FontSize -> 18]]}, 
      "Specifications" :> {{$CellContext`\[Mu]1$$, -1, 1, 
         0.1}, {$CellContext`\[Mu]2$$, -1, 1, 0.1}, {$CellContext`\[Sigma]1$$,
          0.1, 2, 0.1}, {$CellContext`\[Sigma]2$$, 0.01, 2., 
         0.1}, {$CellContext`\[Rho]$$, -0.99, 0.99, 0.1}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{548., {391., 396.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 StyleBox["Interactivity Notes\n", "Subsection"],
 "To zoom in on the 3D plots, press the Ctrl key and drag across the picture \
to zoom in and out.\nTo rotate the 3D plots, click and drage on the plot.\n\
All the plots can be resized by clicking on the plot and dragging the red \
window.\nN.B. If the plot seems jagged and low quality--give it a few seconds \
between steps. This may occur in some systems because the CDF format computes \
values at each point for each plot as the parameters are changed (~70,000 \
calculations/view).  \n",
 StyleBox["Statistical Notes", "Subsection"],
 "\nThe PDF and CDF correspond to the typical Probability Density Function \
and Cumulative Density Function, respectively.\nRecall that when \[Rho]=0 \
here, the two random variables are independently normal with their respective \
mean and standard deviation.\n\n"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[""], "Input", "PluginEmbeddedContent"]
},
WindowSize->{935, 1441},
WindowMargins->{{36, Automatic}, {Automatic, 0}},
Visible->True,
AuthoredSize->{935.3333333333334, 1441.67},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
Magnification->1.100000023841858,
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1463, 33, 147, 3, 67, "Input"],
Cell[CellGroupData[{
Cell[1635, 40, 5369, 132, 297, "Input"],
Cell[7007, 174, 4499, 84, 789, "Output"]
}, Open  ]],
Cell[11521, 261, 909, 14, 249, "Text"],
Cell[12433, 277, 51, 0, 16, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xxDnEn1Q8sikyC1ygcGMkI54 *)
