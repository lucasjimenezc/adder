library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
    port (
        a   : in  std_logic_vector(3 downto 0);
        b   : in  std_logic_vector(3 downto 0);
        sum : out std_logic_vector(4 downto 0)
    );
end entity;

architecture rtl of adder is
begin
    sum <= std_logic_vector('0' & unsigned(a) + unsigned(b));
end architecture;

