POLICE_VEHICLES = {}
FIRE_VEHICLES = {}
CIVILIAN_VEHICLES = {
	
	-- Civ Command
	[`911r`] = true,
	[`forgt50020`] = true,
	[`bentaygast`] = true,
	[`urus`] = true,
	[`PISTAS`] = true,
	
	-- CIV 1
	[`taycan`] = true,
	[`f450plat`] = true,
	[`ghostewb1`] = true,
	[`I8`] = true,
	[`SKYLINE`] = true,
	[`cayenneturbo`] = true,
	[`GXA90`] = true,
	[`M3F80`] = true,
	[`RRST`] = true,
	[`NC1`] = true,
	[`Twizy `] = true,
	[`RS62`] = true,
	[`C7`] = true,
	[`CR500`] = true,
	[`TESLAX`] = true,
	
	-- CIV 2
	[`cla45sb`] = true,
	[`A6`] = true,
	[`MSLS`] = true,
	[`Passat `] = true,
	[`RAM16`] = true,
	[`SJDODGE`] = true,
	[`rubi3d`] = true,
	[`21escalade`] = true,
	[`uspstrans`] = true,
	[`FFRS`] = true,
	
	-- CIV 3
	[`qashqai16`] = true,
	[`P968`] = true,
	[`M5E34`] = true,
	[`polo2018`] = true,
	[`HS2000`] = true,
	[`landseries3`] = true,
	[`z2879`] = true,
	[`RX811`] = true,
	
	-- CIV 4
	[`accord20`] = true,
	[`mk3vr6`] = true,
	[`prius`] = true,
	[`infinitig35`] = true,
	[`toyotasj`] = true,
	
	-- CIV PATREON
	[`19raptor`] = true,
	[`gmcat4`] = true,
	[`gtr`] = true,
	[`jeepg`] = true,
	[`r820`] = true,
	[`redeye`] = true,
	[`rs7c8`] = true,
	[`sq72016`] = true,
	[`teslapd`] = true,
	[`trhawk`] = true,
	
	-- Towing Sub-division
	[`fldot1`] = true,
	[`fldot2`] = true,
	[`fldot3`] = true,
	[`fldot4`] = true,
	[`fldot5`] = true,
	[`jbtow`] = true,
	[`jbtow2`] = true,

	-- on your 6 security Sub-division
   	[`onps1`] = true,
	[`onps2`] = true,
	[`onps3`] = true,
	[`onps4`] = true,
	[`onps5`] = true,
	
	-- Bus
	[`airbus`] = true,
	[`bus`] = true,

	-- h&h
	[`bc06work`] = true,
	[`reds450b`] = true,
	[`reds450g`] = true,
	[`f350worktruck`] = true,
	[`bc950m`] = true,
	[`d7r`] = true,
	[`bccat430`] = true,
	[`libexcavator`] = true,
	[`bcap1055`] = true,
	[`bct590`] = true,
	[`bce55`] = true,
	[`bcwspumper`] = true,
	[`bcbucket`] = true,
	[`112chpmfd2`] = true,
}

CIVILIAN_CLASS = {
	[15] = true,
	[16] = true,
	[18] = true,
}

for i = 0, 50 do
	POLICE_VEHICLES[GetHashKey( "fhp" .. i )] = true
end

for i = 0, 50 do
	POLICE_VEHICLES[GetHashKey( "HCSO" .. i )] = true
end

for i = 0, 30 do
	FIRE_VEHICLES[GetHashKey( "HCFR" .. i )] = true
end

PATREON_POLICE_VEHICLES = {
	[`patreon7`] = 1,
	[`patreon5`] = 2,
	[`patreon6`] = 2,
	[`patreon4`] = 2,
	[`patreon1`] = 3,
	[`patreon3`] = 3,
	[`patreon8`] = 3,
	[`patreon9`] = 4,
	[`patreon2`] = 4,
-- Management Pack
	}


MANAGEMENT_VEHICLES = {
	[`M5RB_VV`] = true,
	[`mcc`] = true,
	[`nm_745`] = true,
	[`nm_911`] = true,
	[`nm_amg`] = true,
	[`nm_avent`] = true,
	[`nm_bolide`] = true,
	[`nm_c8`] = true,
	[`nm_cam69`] = true,
	[`nm_esc`] = true,
	[`nm_hell`] = true,
	[`nm_jeep`] = true,
	[`nm_jes`] = true,
	[`nm_lambo`] = true,
	[`nm_m8`] = true,
	[`nm_rrst`] = true,
	[`nm_rs5`] = true,
	[`nm_rs7`] = true,
	[`nm_supra`] = true,
	[`nm_taycan`] = true,
	[`npolvic`] = true,
	[`npolchal`] = true,
	[`npolstang`] = true,
	[`npolvette`] = true,
	}