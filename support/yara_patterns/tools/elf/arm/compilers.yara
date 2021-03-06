import "elf"

rule gcc_android_ndk_r8_1
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.4.3"
		extra = "Android NDK r8"
		pattern = "04008FE2000090E5??F?FFEA?0??0?00"
	strings:
		$1 = { 04 00 8F E2 00 00 90 E5 ?? F? FF EA ?0 ?? 0? 00 }
	condition:
		$1 at elf.entry_point
}

rule gcc_android_ndk_r8_2
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.4.3"
		extra = "Android NDK r8"
		pattern = "0D00A0E10010A0E304208FE204308FE2??FFFFEA????00EA????0?00????0?00????0?00????0?000000A0E10000A0E1"
	strings:
		$1 = { 0D 00 A0 E1 00 10 A0 E3 04 20 8F E2 04 30 8F E2 ?? FF FF EA ?? ?? 00 EA ?? ?? 0? 00 ?? ?? 0? 00 ?? ?? 0? 00 ?? ?? 0? 00 00 00 A0 E1 00 00 A0 E1 }
	condition:
		$1 at elf.entry_point
}

rule gcc_411
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.1.1"
		pattern = "1600A0E3E8108FE2563412EFE0009FE508D090E50CA090E501AC8AE20010A0E301B0A0E10170A0E1C8009FE5C8209FE5002042E0????00EB????00EB1500A0E3BC108FE2563412EFB4109FE50000A0E301002DE90130D1E4000053E31100000A200053E3"
	strings:
		$1 = { 16 00 A0 E3 E8 10 8F E2 56 34 12 EF E0 00 9F E5 08 D0 90 E5 0C A0 90 E5 01 AC 8A E2 00 10 A0 E3 01 B0 A0 E1 01 70 A0 E1 C8 00 9F E5 C8 20 9F E5 00 20 42 E0 ?? ?? 00 EB ?? ?? 00 EB 15 00 A0 E3 BC 10 8F E2 56 34 12 EF B4 10 9F E5 00 00 A0 E3 01 00 2D E9 01 30 D1 E4 00 00 53 E3 11 00 00 0A 20 00 53 E3 }
	condition:
		$1 at elf.entry_point
}

rule gcc_48x
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.8.x"
		pattern = "00B0A0E300E0A0E304109DE40D20A0E104202DE504002DE510C09FE504C02DE50C009FE50C309FE5??????EB??????EB????0?00????0?00????0?0014309FE514209FE503308FE0022093E7000052E31EFF2F01??????????????00??00000008402DE9"
	strings:
		$1 = { 00 B0 A0 E3 00 E0 A0 E3 04 10 9D E4 0D 20 A0 E1 04 20 2D E5 04 00 2D E5 10 C0 9F E5 04 C0 2D E5 0C 00 9F E5 0C 30 9F E5 ?? ?? ?? EB ?? ?? ?? EB ?? ?? 0? 00 ?? ?? 0? 00 ?? ?? 0? 00 14 30 9F E5 14 20 9F E5 03 30 8F E0 02 20 93 E7 00 00 52 E3 1E FF 2F 01 ?? ?? ?? ?? ?? ?? ?? 00 ?? 00 00 00 08 40 2D E9 }
	condition:
		$1 at elf.entry_point
}

rule gcc_412_gpx2
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.1.2"
		extra = "for GP2X"
		pattern = "24C09FE500B0A0E304109DE40D20A0E104202DE504002DE510009FE510309FE504C02DE5??????EB??????EB??????0???????0???????0?04A02DE520A09FE520309FE50AA08FE003209AE7000052E30100000A0004BDE8???FFFEA0004BDE81EFF2FE1"
	strings:
		$1 = { 24 C0 9F E5 00 B0 A0 E3 04 10 9D E4 0D 20 A0 E1 04 20 2D E5 04 00 2D E5 10 00 9F E5 10 30 9F E5 04 C0 2D E5 ?? ?? ?? EB ?? ?? ?? EB ?? ?? ?? 0? ?? ?? ?? 0? ?? ?? ?? 0? 04 A0 2D E5 20 A0 9F E5 20 30 9F E5 0A A0 8F E0 03 20 9A E7 00 00 52 E3 01 00 00 0A 00 04 BD E8 ?? ?F FF EA 00 04 BD E8 1E FF 2F E1 }
	condition:
		$1 at elf.entry_point
}

rule gcc_441_thumb
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.4.1"
		pattern = "1600A0E3C0108FE2563412EFB8009FE508D090E50CA090E501AC8AE20010A0E301B0A0E10170A0E1A0009FE5A0209FE5002042E001308FE213FF2FE10?F0??F?0?F0??F?152025A1ABDF2449002001B40B780131002B15D0202BF9D0222B01D0272B01D1"
	strings:
		$1 = { 16 00 A0 E3 C0 10 8F E2 56 34 12 EF B8 00 9F E5 08 D0 90 E5 0C A0 90 E5 01 AC 8A E2 00 10 A0 E3 01 B0 A0 E1 01 70 A0 E1 A0 00 9F E5 A0 20 9F E5 00 20 42 E0 01 30 8F E2 13 FF 2F E1 0? F0 ?? F? 0? F0 ?? F? 15 20 25 A1 AB DF 24 49 00 20 01 B4 0B 78 01 31 00 2B 15 D0 20 2B F9 D0 22 2B 01 D0 27 2B 01 D1 }
	condition:
		$1 at elf.entry_point
}

rule gcc_48x_thumb
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.8.x"
		pattern = "00B0A0E300E0A0E304109DE40D20A0E104202DE504002DE510C09FE504C02DE50C009FE50C309FE5??????EB??????EB????0?00????0?00????0?0014309FE514209FE503308FE0022093E7000052E31EFF2F01??F???E???????00??00000008402DE9"
	strings:
		$1 = { 00 B0 A0 E3 00 E0 A0 E3 04 10 9D E4 0D 20 A0 E1 04 20 2D E5 04 00 2D E5 10 C0 9F E5 04 C0 2D E5 0C 00 9F E5 0C 30 9F E5 ?? ?? ?? EB ?? ?? ?? EB ?? ?? 0? 00 ?? ?? 0? 00 ?? ?? 0? 00 14 30 9F E5 14 20 9F E5 03 30 8F E0 02 20 93 E7 00 00 52 E3 1E FF 2F 01 ?? F? ?? E? ?? ?? ?? 00 ?? 00 00 00 08 40 2D E9 }
	condition:
		$1 at elf.entry_point
}

rule texas_instruments_464
{
	meta:
		tool = "C"
		name = "Texas Instruments C/C++"
		version = "4.6.4"
		extra = "for TMS470"
		pattern = "488546094885446F4607208743BD4607486F460760FFF7??F?00F0??F80120FFF7??F?FEE70000????0020401F0000????0020"
	strings:
		$1 = { 48 85 46 09 48 85 44 6F 46 07 20 87 43 BD 46 07 48 6F 46 07 60 FF F7 ?? F? 00 F0 ?? F8 01 20 FF F7 ?? F? FE E7 00 00 ?? ?? 00 20 40 1F 00 00 ?? ?? 00 20 }
	condition:
		$1 at elf.entry_point
}

rule gc_1
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "00009DE504108DE204409FE500F084E2FEFFFFEA????0?0003002DE91470A0E3000000EF??F?FFEA04009DE508109DE50C209DE50570A0E3000000EF10109FE5010050E10000E08310008DE500F08EE2FEFFFFEA01F0FFFF04009DE50670A0E3000000EF"
	strings:
		$1 = { 00 00 9D E5 04 10 8D E2 04 40 9F E5 00 F0 84 E2 FE FF FF EA ?? ?? 0? 00 03 00 2D E9 14 70 A0 E3 00 00 00 EF ?? F? FF EA 04 00 9D E5 08 10 9D E5 0C 20 9D E5 05 70 A0 E3 00 00 00 EF 10 10 9F E5 01 00 50 E1 00 00 E0 83 10 00 8D E5 00 F0 8E E2 FE FF FF EA 01 F0 FF FF 04 00 9D E5 06 70 A0 E3 00 00 00 EF }
	condition:
		$1 at elf.entry_point
}

rule gc_2
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "00009DE504108DE203002DE9??F?FFEA04009DE508109DE50C209DE510309DE514D08DE210709FE5000000EF14D04DE218008DE500F08EE2FEFFFFEAC601000004009DE508109DE508709FE5000000EF00F08EE2FEFFFFEAC701000004E02DE500A090E5"
	strings:
		$1 = { 00 00 9D E5 04 10 8D E2 03 00 2D E9 ?? F? FF EA 04 00 9D E5 08 10 9D E5 0C 20 9D E5 10 30 9D E5 14 D0 8D E2 10 70 9F E5 00 00 00 EF 14 D0 4D E2 18 00 8D E5 00 F0 8E E2 FE FF FF EA C6 01 00 00 04 00 9D E5 08 10 9D E5 08 70 9F E5 00 00 00 EF 00 F0 8E E2 FE FF FF EA C7 01 00 00 04 E0 2D E5 00 A0 90 E5 }
	condition:
		$1 at elf.entry_point
}

rule gc_3
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "00009DE504108DE203002DE9??F?FFEA04009DE501C0A0E3000000EF0080A0230080882500F08EE20000A0E310C09FE5000000EF0180A0230080882500F08EE2FEFFFFEA2E01000004009DE508109DE50C209DE505C0A0E3000000EF0000E02310008DE5"
	strings:
		$1 = { 00 00 9D E5 04 10 8D E2 03 00 2D E9 ?? F? FF EA 04 00 9D E5 01 C0 A0 E3 00 00 00 EF 00 80 A0 23 00 80 88 25 00 F0 8E E2 00 00 A0 E3 10 C0 9F E5 00 00 00 EF 01 80 A0 23 00 80 88 25 00 F0 8E E2 FE FF FF EA 2E 01 00 00 04 00 9D E5 08 10 9D E5 0C 20 9D E5 05 C0 A0 E3 00 00 00 EF 00 00 E0 23 10 00 8D E5 }
	condition:
		$1 at elf.entry_point
}

rule gc_4
{
	meta:
		tool = "C"
		name = "gc"
		language = "Go"
		pattern = "00009DE504108DE203002DE9??F?FFEA04009DE50100A0EF0080A0230080882500F08EE204009DE508109DE50C209DE50500A0EF0000E02310008DE500F08EE204009DE50600A0EF0000E02308008DE500F08EE204009DE508109DE50C209DE50300A0EF"
	strings:
		$1 = { 00 00 9D E5 04 10 8D E2 03 00 2D E9 ?? F? FF EA 04 00 9D E5 01 00 A0 EF 00 80 A0 23 00 80 88 25 00 F0 8E E2 04 00 9D E5 08 10 9D E5 0C 20 9D E5 05 00 A0 EF 00 00 E0 23 10 00 8D E5 00 F0 8E E2 04 00 9D E5 06 00 A0 EF 00 00 E0 23 08 00 8D E5 00 F0 8E E2 04 00 9D E5 08 10 9D E5 0C 20 9D E5 03 00 A0 EF }
	condition:
		$1 at elf.entry_point
}
