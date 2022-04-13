function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Add */
	this.urlHashMap["MasterSubsystems:156"] = "MasterSubsystems.st:37";
	/* <S1>/Add10 */
	this.urlHashMap["MasterSubsystems:194"] = "MasterSubsystems.st:56";
	/* <S1>/Add3 */
	this.urlHashMap["MasterSubsystems:162"] = "MasterSubsystems.st:57";
	/* <S1>/Add4 */
	this.urlHashMap["MasterSubsystems:163"] = "MasterSubsystems.st:58";
	/* <S1>/Constant10 */
	this.urlHashMap["MasterSubsystems:185"] = "MasterSubsystems.st:40";
	/* <S1>/Constant4 */
	this.urlHashMap["MasterSubsystems:178"] = "MasterSubsystems.st:41";
	/* <S1>/Constant5 */
	this.urlHashMap["MasterSubsystems:179"] = "MasterSubsystems.st:42";
	/* <S1>/Constant6 */
	this.urlHashMap["MasterSubsystems:180"] = "MasterSubsystems.st:43";
	/* <S1>/Constant8 */
	this.urlHashMap["MasterSubsystems:183"] = "MasterSubsystems.st:44";
	/* <S1>/Constant9 */
	this.urlHashMap["MasterSubsystems:184"] = "MasterSubsystems.st:45";
	/* <S1>/Divide */
	this.urlHashMap["MasterSubsystems:152"] = "MasterSubsystems.st:47";
	/* <S1>/Divide2 */
	this.urlHashMap["MasterSubsystems:154"] = "MasterSubsystems.st:48";
	/* <S1>/Divide3 */
	this.urlHashMap["MasterSubsystems:164"] = "MasterSubsystems.st:49";
	/* <S1>/Divide5 */
	this.urlHashMap["MasterSubsystems:166"] = "MasterSubsystems.st:50";
	/* <S1>/Divide7 */
	this.urlHashMap["MasterSubsystems:188"] = "MasterSubsystems.st:51";
	/* <S1>/Divide8 */
	this.urlHashMap["MasterSubsystems:189"] = "MasterSubsystems.st:52";
	/* <S1>/Math
Function */
	this.urlHashMap["MasterSubsystems:204"] = "MasterSubsystems.st:46";
	/* <S1>/Product */
	this.urlHashMap["MasterSubsystems:155"] = "MasterSubsystems.st:53";
	/* <S1>/Product3 */
	this.urlHashMap["MasterSubsystems:168"] = "MasterSubsystems.st:54";
	/* <S1>/Product4 */
	this.urlHashMap["MasterSubsystems:169"] = "MasterSubsystems.st:55";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "MasterSubsystems"};
	this.sidHashMap["MasterSubsystems"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/OilBulkModulus"] = {sid: "MasterSubsystems:197"};
	this.sidHashMap["MasterSubsystems:197"] = {rtwname: "<S1>/OilBulkModulus"};
	this.rtwnameHashMap["<S1>/AdiatricAirConstant"] = {sid: "MasterSubsystems:198"};
	this.sidHashMap["MasterSubsystems:198"] = {rtwname: "<S1>/AdiatricAirConstant"};
	this.rtwnameHashMap["<S1>/AtmosphericPressure"] = {sid: "MasterSubsystems:199"};
	this.sidHashMap["MasterSubsystems:199"] = {rtwname: "<S1>/AtmosphericPressure"};
	this.rtwnameHashMap["<S1>/CapacitancePressure"] = {sid: "MasterSubsystems:200"};
	this.sidHashMap["MasterSubsystems:200"] = {rtwname: "<S1>/CapacitancePressure"};
	this.rtwnameHashMap["<S1>/VolumetricAirContentOfOil"] = {sid: "MasterSubsystems:201"};
	this.sidHashMap["MasterSubsystems:201"] = {rtwname: "<S1>/VolumetricAirContentOfOil"};
	this.rtwnameHashMap["<S1>/Add"] = {sid: "MasterSubsystems:156"};
	this.sidHashMap["MasterSubsystems:156"] = {rtwname: "<S1>/Add"};
	this.rtwnameHashMap["<S1>/Add10"] = {sid: "MasterSubsystems:194"};
	this.sidHashMap["MasterSubsystems:194"] = {rtwname: "<S1>/Add10"};
	this.rtwnameHashMap["<S1>/Add3"] = {sid: "MasterSubsystems:162"};
	this.sidHashMap["MasterSubsystems:162"] = {rtwname: "<S1>/Add3"};
	this.rtwnameHashMap["<S1>/Add4"] = {sid: "MasterSubsystems:163"};
	this.sidHashMap["MasterSubsystems:163"] = {rtwname: "<S1>/Add4"};
	this.rtwnameHashMap["<S1>/Constant10"] = {sid: "MasterSubsystems:185"};
	this.sidHashMap["MasterSubsystems:185"] = {rtwname: "<S1>/Constant10"};
	this.rtwnameHashMap["<S1>/Constant4"] = {sid: "MasterSubsystems:178"};
	this.sidHashMap["MasterSubsystems:178"] = {rtwname: "<S1>/Constant4"};
	this.rtwnameHashMap["<S1>/Constant5"] = {sid: "MasterSubsystems:179"};
	this.sidHashMap["MasterSubsystems:179"] = {rtwname: "<S1>/Constant5"};
	this.rtwnameHashMap["<S1>/Constant6"] = {sid: "MasterSubsystems:180"};
	this.sidHashMap["MasterSubsystems:180"] = {rtwname: "<S1>/Constant6"};
	this.rtwnameHashMap["<S1>/Constant8"] = {sid: "MasterSubsystems:183"};
	this.sidHashMap["MasterSubsystems:183"] = {rtwname: "<S1>/Constant8"};
	this.rtwnameHashMap["<S1>/Constant9"] = {sid: "MasterSubsystems:184"};
	this.sidHashMap["MasterSubsystems:184"] = {rtwname: "<S1>/Constant9"};
	this.rtwnameHashMap["<S1>/Divide"] = {sid: "MasterSubsystems:152"};
	this.sidHashMap["MasterSubsystems:152"] = {rtwname: "<S1>/Divide"};
	this.rtwnameHashMap["<S1>/Divide2"] = {sid: "MasterSubsystems:154"};
	this.sidHashMap["MasterSubsystems:154"] = {rtwname: "<S1>/Divide2"};
	this.rtwnameHashMap["<S1>/Divide3"] = {sid: "MasterSubsystems:164"};
	this.sidHashMap["MasterSubsystems:164"] = {rtwname: "<S1>/Divide3"};
	this.rtwnameHashMap["<S1>/Divide5"] = {sid: "MasterSubsystems:166"};
	this.sidHashMap["MasterSubsystems:166"] = {rtwname: "<S1>/Divide5"};
	this.rtwnameHashMap["<S1>/Divide7"] = {sid: "MasterSubsystems:188"};
	this.sidHashMap["MasterSubsystems:188"] = {rtwname: "<S1>/Divide7"};
	this.rtwnameHashMap["<S1>/Divide8"] = {sid: "MasterSubsystems:189"};
	this.sidHashMap["MasterSubsystems:189"] = {rtwname: "<S1>/Divide8"};
	this.rtwnameHashMap["<S1>/Math Function"] = {sid: "MasterSubsystems:204"};
	this.sidHashMap["MasterSubsystems:204"] = {rtwname: "<S1>/Math Function"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "MasterSubsystems:155"};
	this.sidHashMap["MasterSubsystems:155"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/Product3"] = {sid: "MasterSubsystems:168"};
	this.sidHashMap["MasterSubsystems:168"] = {rtwname: "<S1>/Product3"};
	this.rtwnameHashMap["<S1>/Product4"] = {sid: "MasterSubsystems:169"};
	this.sidHashMap["MasterSubsystems:169"] = {rtwname: "<S1>/Product4"};
	this.rtwnameHashMap["<S1>/VariableBulkModulus"] = {sid: "MasterSubsystems:202"};
	this.sidHashMap["MasterSubsystems:202"] = {rtwname: "<S1>/VariableBulkModulus"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
