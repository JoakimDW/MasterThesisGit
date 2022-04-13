(*
 *
 * File: MasterSubsystems.st
 *
 * IEC 61131-3 Structured Text (ST) code generated for subsystem "MasterSubsystems/VariableBulkModulus"
 *
 * Model name                      : MasterSubsystems
 * Model version                   : 1.23
 * Model creator                   : rrai-HIL
 * Model last modified by          : rrai-HIL
 * Model last modified on          : Mon Feb 14 12:57:36 2022
 * Model sample time               : 0.001s
 * Subsystem name                  : MasterSubsystems/VariableBulkModulus
 * Subsystem sample time           : 0.001s
 * Simulink PLC Coder version      : 3.5 (R2021b) 14-May-2021
 * ST code generated on            : Mon Feb 14 12:57:51 2022
 *
 * Target IDE selection            : PLCopen XML
 * Test Bench included             : No
 *
 *)
FUNCTION_BLOCK VariableBulkModulus
VAR_INPUT
    OilBulkModulus: LREAL;
    AdiatricAirConstant: LREAL;
    AtmosphericPressure: LREAL;
    CapacitancePressure: LREAL;
    VolumetricAirContentOfOil: LREAL;
END_VAR
VAR_OUTPUT
    VariableBulkModulusb: LREAL;
END_VAR
VAR_TEMP
    rtb_Add: LREAL;
END_VAR
(* Outputs for Atomic SubSystem: '<Root>/VariableBulkModulus' *)
(* Sum: '<S1>/Add' *)
rtb_Add := AtmosphericPressure + CapacitancePressure;
(* Outport: '<Root>/VariableBulkModulusb' incorporates:
 *  Constant: '<S1>/Constant10'
 *  Constant: '<S1>/Constant4'
 *  Constant: '<S1>/Constant5'
 *  Constant: '<S1>/Constant6'
 *  Constant: '<S1>/Constant8'
 *  Constant: '<S1>/Constant9'
 *  Math: '<S1>/Math Function'
 *  Product: '<S1>/Divide'
 *  Product: '<S1>/Divide2'
 *  Product: '<S1>/Divide3'
 *  Product: '<S1>/Divide5'
 *  Product: '<S1>/Divide7'
 *  Product: '<S1>/Divide8'
 *  Product: '<S1>/Product'
 *  Product: '<S1>/Product3'
 *  Product: '<S1>/Product4'
 *  Sum: '<S1>/Add10'
 *  Sum: '<S1>/Add3'
 *  Sum: '<S1>/Add4' *)
VariableBulkModulusb := 1.0 / ((1.0 / OilBulkModulus) - (1.0 / ((((VolumetricAirContentOfOil - 1.0) / (EXPT(AtmosphericPressure / rtb_Add, 1.0 / AdiatricAirConstant) * VolumetricAirContentOfOil)) - 1.0) * (rtb_Add * AdiatricAirConstant))));
(* End of Outputs for SubSystem: '<Root>/VariableBulkModulus' *)
END_FUNCTION_BLOCK
