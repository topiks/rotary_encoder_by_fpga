library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY simulasi_membaca_enc IS
	PORT ( A, B : IN STD_LOGIC ;
			 satuan_out, puluhan_out, ratusan_out : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)) ;
END simulasi_membaca_enc ;

ARCHITECTURE behavior OF simulasi_membaca_enc IS
SIGNAL satuan: STD_LOGIC_VECTOR (3 DOWNTO 0):= "0000";
SIGNAL puluhan: STD_LOGIC_VECTOR (3 DOWNTO 0):= "0000";
SIGNAL ratusan: STD_LOGIC_VECTOR (3 DOWNTO 0):= "0000";
SIGNAL prevA:STD_LOGIC:=A;
SIGNAL prevB:STD_LOGIC:=B;
SIGNAL arah:INTEGER:=0;

-- convert to mm
SIGNAL bolehplus: INTEGER;
SIGNAL bolehmin: INTEGER;

BEGIN
	PROCESS (A, B)
	
BEGIN
			IF(A/=prevA and A='1') THEN
				IF(B/=prevB and B = '1') THEN
					--CCW, counter ++
					prevB <= B;
					--prevA <= A;
					arah <= 1;
				ELSIF(B/=prevB and B = '0') THEN
					--CW, counter --
					prevB <= B;
					--prevA <= A;
					arah <= 2;
				END IF;
			ELSIF(A/=prevA and A='0') THEN
				prevA <= A;
			ELSE
				arah <= 0;
			END IF;
		
				IF(A'EVENT and A='0') THEN
				
				IF (arah=1) THEN
					satuan <= satuan+1;
					-- begin mm
					IF (satuan = "0111") and bolehplus <= 0 THEN
														satuan <= satuan;
														bolehplus <= 1;
													END IF;
					-- end mm
					IF (satuan = "1001") THEN
						satuan <= "0000";
						puluhan <= puluhan + 1;
					-- begin mm
						bolehplus <= 0;
					-- end mm
					END IF;
					IF (puluhan = "1001") AND (satuan = "1001") THEN
						puluhan <= "0000";
						ratusan <= ratusan + 1;
					END IF;
					IF (ratusan = "1001") AND (puluhan = "1001") AND (satuan = "1001") THEN
							satuan <= "0000";
							puluhan <= "0000";
							ratusan <= "0000";
					END IF;
				ELSIF (arah=2) THEN
					satuan <= satuan - 1;
					-- begin mm
						IF (satuan = "0111") and bolehmin <= 0 THEN
														satuan <= satuan;
														bolehmin <= 1;
													END IF;
					-- end mm
					IF (satuan = "0000") THEN
						satuan <= "1001";
						puluhan <= puluhan - 1;
					-- begin mm
						bolehmin <= 0;
					-- end mm
					END IF;
					IF (puluhan = "0000") AND (satuan = "0000") THEN
						puluhan <= "1001";
						ratusan <= ratusan - 1;
					END IF;
					IF (ratusan = "0000") AND (puluhan = "0000") AND (satuan = "0000") THEN
							satuan <= "1001";
							puluhan <= "1001";
							ratusan <= "1001";
					END IF;
				END IF;
			END IF;
		END PROCESS;
		
		
			satuan_out <= "1000000" when satuan = "0000" else
							  "1111001" when satuan = "0001" else
							  "0100100" when satuan = "0010" else
							  "0110000" when satuan = "0011" else
							  "0011001" when satuan = "0100" else
							  "0010010" when satuan = "0101" else
							  "0000011" when satuan = "0110" else
							  "1111000" when satuan = "0111" else
							  "0000000" when satuan = "1000" else
							  "0011000" when satuan = "1001";
 
			puluhan_out <= "1000000" when puluhan = "0000" else
							  "1111001" when puluhan = "0001" else
							  "0100100" when puluhan = "0010" else
							  "0110000" when puluhan = "0011" else
							  "0011001" when puluhan = "0100" else
							  "0010010" when puluhan = "0101" else
							  "0000011" when puluhan = "0110" else
							  "1111000" when puluhan = "0111" else
							  "0000000" when puluhan = "1000" else
							  "0011000" when puluhan = "1001";
								
			ratusan_out <= "1000000" when ratusan = "0000" else
							  "1111001" when ratusan = "0001" else
							  "0100100" when ratusan = "0010" else
							  "0110000" when ratusan = "0011" else
							  "0011001" when ratusan = "0100" else
							  "0010010" when ratusan = "0101" else
							  "0000011" when ratusan = "0110" else
							  "1111000" when ratusan = "0111" else
							  "0000000" when ratusan = "1000" else
							  "0011000" when ratusan = "1001";
		
END behavior ;