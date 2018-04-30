#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Mon Apr 23 13:53:23 2018                
#                                                     
#######################################################

#@(#)CDS: Encounter v13.27-s024_1 (64bit) 07/22/2014 12:41 (Linux 2.6)
#@(#)CDS: NanoRoute v13.27-s002 NR140623-1045/13_20-UB (database version 2.30, 211.6.1) {superthreading v1.19}
#@(#)CDS: CeltIC v13.27-s002_1 (64bit) 07/03/2014 03:57:28 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 13.27-s005 (64bit) 07/22/2014 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 13.27-s004_1 (64bit) Jul  8 2014 04:11:35 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v13.27-s017
#@(#)CDS: IQRC/TQRC 13.1.0-s302 (64bit) Mon Jan 13 11:11:46 PST 2014 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set init_design_settop 0
set init_pwr_net VDD
set init_gnd_net VSS
set init_lef_file lib/lef/NangateOpenCellLibrary.lef
set init_mmmc_file pmul32_4_fm.view
set init_verilog pmul32_4_fm.v
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.989466530751 0.5 1 1 1 1
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.983243635253 0.499999 1.12 1.12 1.0 1.0
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.972572838569 0.5 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.961981349341 0.499997 5.04 5.04 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
saveDesign floorplan.enc
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -stacked_via_top_layer metal10 -around core -jog_distance 0.095 -threshold 0.095 -nets {VDD VSS} -stacked_via_bottom_layer metal1 -layer {bottom metal1 top metal1 right metal2 left metal2} -width 1 -spacing 1 -offset 0.095
addRing -stacked_via_top_layer metal10 -around core -jog_distance 0.095 -threshold 0.095 -nets {VDD VSS} -stacked_via_bottom_layer metal1 -layer {bottom metal1 top metal1 right metal2 left metal2} -width 1 -spacing 1 -offset 0.095
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal10 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -stripeSCpinTarget { firstAfterRowEnd } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer metal1 -allowLayerChange 1 -targetViaTopLayer metal10 -crossoverViaTopLayer metal10 -targetViaBottomLayer metal1 -nets { VDD VSS }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal10 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -stripeSCpinTarget { firstAfterRowEnd } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer metal1 -allowLayerChange 1 -targetViaTopLayer metal10 -crossoverViaTopLayer metal10 -targetViaBottomLayer metal1 -nets { VDD VSS }
saveDesign pg.enc
setPlaceMode -fp false
placeDesign -noPrePlaceOpt
fit
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM7Cont -isVisible 0
setLayerPreference allM7 -isVisible 0
setLayerPreference allM8Cont -isVisible 0
setLayerPreference allM8 -isVisible 0
setLayerPreference allM9Cont -isVisible 0
setLayerPreference allM9 -isVisible 0
setLayerPreference allM10Cont -isVisible 0
setLayerPreference allM10 -isVisible 0
saveDesign pl.enc
setDelayCalMode -siAware false
timeDesign -preCTS
report_timing
optDesign -preCTS
saveDesign prectsopt.enc
clockDesign -specFile pmul32_4_fm.ctstch outDir clk_report
clockDesign -specFile pmul32_4_fm.ctstch -outDir clk_report
displayClockTree -mCLK -level1
displayClockTree -g_inClk -level1
displayClockTree -clk g_inClk -level1
displayClockTree -clk mCLK -level1
saveDesign cts.enc
timeDesign -postCTS
optDesign -postCTS
saveDesign postctsopt.enc
timeDesign -postCTS
setNanoRouteMode -quiet -drouteFixAntenna 0
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
saveDesign route.enc
fit
timeDesign -postRoute
optDesign -postRoute
saveDesign postrouteopt.enc
fit
fit
fit
fit
fit
fit
fit
fit
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM7Cont -isVisible 1
setLayerPreference allM7 -isVisible 1
setLayerPreference allM8Cont -isVisible 1
setLayerPreference allM8 -isVisible 1
setLayerPreference allM9Cont -isVisible 1
setLayerPreference allM9 -isVisible 1
setLayerPreference allM10Cont -isVisible 1
setLayerPreference allM10 -isVisible 1
setMetalFill -layer metal1 -maxWidth 0.14 -minWidth 0.07 -opcActiveSpacing 0.065 -maxLength 0.7 -minLength 0.14
setMetalFill -layer metal2 -minLength 0.14 -maxWidth 0.14 -minWidth 0.07 -opcActiveSpacing 0.070 -maxLength 0.7
setMetalFill -layer metal3 -minLength 0.14 -maxWidth 0.14 -minWidth 0.07 -opcActiveSpacing 0.070 -maxLength 0.7
setMetalFill -layer metal4 -minLength 0.28 -maxWidth 0.28 -minWidth 0.14 -opcActiveSpacing 0.140 -maxLength 1.4
setMetalFill -layer metal5 -minLength 0.28 -maxWidth 0.28 -minWidth 0.14 -opcActiveSpacing 0.140 -maxLength 1.4
setMetalFill -layer metal6 -minLength 0.28 -maxWidth 0.28 -minWidth 0.14 -opcActiveSpacing 0.140 -maxLength 1.4
setMetalFill -layer metal7 -minLength 0.8 -maxWidth 0.8 -minWidth 0.4 -opcActiveSpacing 0.400 -maxLength 4.0
setMetalFill -layer metal8 -minLength 0.8 -maxWidth 0.8 -minWidth 0.4 -opcActiveSpacing 0.400 -maxLength 4.0
setMetalFill -layer metal9 -minLength 1.6 -maxWidth 1.6 -maxLength 8.0
setMetalFill -layer metal10 -minLength 1.6 -maxLength 8.0 -maxWidth 1.6
addMetalFill -layer { metal1 metal2 metal3 metal4 metal5 metal6 metal7 metal8 metal9 metal10 } -nets { VSS VDD }
timeDesign -postRoute
saveDesign fill.enc
