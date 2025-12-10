-------------------------------------------------------------------------------
-- axi_lmb_bridge.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------------------
-- Filename:        axi_lmb_bridge.vhd
--
-- Description:
--
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:
--              axi_lmb_bridge
--
-------------------------------------------------------------------------------
-- Author:          rolandp
--
-- History:
--   rolandp  2021-10-18    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity axi_lmb_bridge is
  generic (
     C_ADDR_WIDTH   : integer := 32;
     C_DATA_WIDTH   : integer := 32;
     C_AXI_AW_DEPTH : integer := 2;
     C_AXI_W_DEPTH  : integer := 8;
     C_AXI_AR_DEPTH : integer := 2;
     C_AXI_R_DEPTH  : integer := 8;
     C_AXI_ID_WIDTH : integer := 1;
     C_USE_PAUSE    : integer := 0;
     C_LMB_PROTOCOL : integer := 0);
  port (
    Clk  : in std_logic;
    Rst  : in std_logic;
    -- Pause signals
    Pause     : in std_logic;
    Pause_Ack : out std_logic;
    -- AXI slave signals
    S_AXI_AWID    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_AWADDR  : in  std_logic_vector(C_ADDR_WIDTH-1 downto 0);
    S_AXI_AWLEN   : in  std_logic_vector(7 downto 0);
    S_AXI_AWSIZE  : in  std_logic_vector(2 downto 0);
    S_AXI_AWBURST : in  std_logic_vector(1 downto 0);
    S_AXI_AWVALID : in  std_logic;
    S_AXI_AWREADY : out std_logic;
    S_AXI_WDATA   : in  std_logic_vector(C_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB   : in  std_logic_vector(C_DATA_WIDTH/8-1 downto 0);
    S_AXI_WLAST   : in  std_logic;
    S_AXI_WVALID  : in  std_logic;
    S_AXI_WREADY  : out std_logic;
    S_AXI_BID     : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_BRESP   : out std_logic_vector(1 downto 0);
    S_AXI_BVALID  : out std_logic;
    S_AXI_BREADY  : in  std_logic;
    S_AXI_ARID    : in  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_ARADDR  : in  std_logic_vector(C_ADDR_WIDTH-1 downto 0);
    S_AXI_ARLEN   : in  std_logic_vector(7 downto 0);
    S_AXI_ARSIZE  : in  std_logic_vector(2 downto 0);
    S_AXI_ARBURST : in  std_logic_vector(1 downto 0);
    S_AXI_ARVALID : in  std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RID     : out std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
    S_AXI_RDATA   : out std_logic_vector(C_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP   : out std_logic_vector(1 downto 0);
    S_AXI_RLAST   : out std_logic;
    S_AXI_RVALID  : out std_logic;
    S_AXI_RREADY  : in  std_logic;
    -- LMB
    M_ABus        : out std_logic_vector(0 to C_ADDR_WIDTH-1);
    M_ReadStrobe  : out std_logic;
    M_WriteStrobe : out std_logic;
    M_AddrStrobe  : out std_logic;
    M_DBus        : out std_logic_vector(0 to C_DATA_WIDTH-1);
    M_BE          : out std_logic_vector(0 to C_DATA_WIDTH/8-1);
    LMB_ReadDBus  : in  std_logic_vector(0 to C_DATA_WIDTH-1);
    LMB_Ready     : in  std_logic;
    LMB_Wait      : in  std_logic;
    LMB_UE        : in  std_logic;
    LMB_CE        : in  std_logic);
end entity axi_lmb_bridge;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture IMP of axi_lmb_bridge is

  constant C_WSTRB_ZERO : std_logic_vector(C_DATA_WIDTH/8-1 downto 0) := (others => '0');

  -- AWBURST and ARBURST encoding
  constant C_FIXED : std_logic_vector(1 downto 0) := "00";
  constant C_INCR  : std_logic_vector(1 downto 0) := "01";
  constant C_WRAP  : std_logic_vector(1 downto 0) := "10";

  -- AWSIZE(2:0) and ARSIZE(2:0), max 4 bytes for WORD, thus ignore MSB
  constant C_BYTE : std_logic_vector(1 downto 0) := "00";
  constant C_HALF : std_logic_vector(1 downto 0) := "01";
  constant C_WORD : std_logic_vector(1 downto 0) := "10";

  -- Address increment depending on AWSIZE or ARSIZE
  function incr_value(size : std_logic_vector) return unsigned is
  begin
    if size = C_BYTE then
      return "0001";
    elsif size = C_HALF then
      return "0010";
    else
      return "0100";
    end if;
  end function incr_value;

  -- AWLEN and ARLEN for wrapped BURST 1, 3, 7, 15 legal values
  constant C_TWO     : std_logic_vector(3 downto 0) := "0001";
  constant C_FOUR    : std_logic_vector(3 downto 0) := "0011";
  constant C_EIGTH   : std_logic_vector(3 downto 0) := "0111";
  constant C_SIXTEEN : std_logic_vector(3 downto 0) := "1111";

  -- Address increment depending on LEN, BURST and SIZE
  function incr (value : std_logic_vector;
                 len   : std_logic_vector;
                 burst : std_logic_vector;
                 size  : std_logic_vector) return std_logic_vector is
   variable tmp : std_logic_vector(11 downto 0);
  begin
    if burst = C_FIXED then
      return value;
    elsif burst = C_WRAP then
      tmp := std_logic_vector(unsigned(value) + incr_value(size));
      if len = C_TWO and size = C_BYTE then
        return value(11 downto 1) & tmp(0 downto 0);
      elsif (len = C_FOUR and size = C_BYTE) or
            (len = C_TWO  and size = C_HALF) then
        return value(11 downto 2) & tmp(1 downto 0);
      elsif (len = C_EIGTH and size = C_BYTE) or
            (len = C_FOUR  and size = C_HALF) or
            (len = C_TWO   and size = C_WORD) then
        return value(11 downto 3) & tmp(2 downto 0);
      elsif (len = C_SIXTEEN and size = C_BYTE) or
            (len = C_EIGTH  and size = C_HALF) or
            (len = C_FOUR  and size = C_WORD) then
        return value(11 downto 4) & tmp(3 downto 0);
      elsif (len = C_SIXTEEN and size = C_HALF) or
            (len = C_EIGTH  and size = C_WORD) then
        return value(11 downto 5) & tmp(4 downto 0);
      else -- len = C_SIXTEEN and size = C_WORD
        return value(11 downto 6) & tmp(5 downto 0);
      end if;
    else -- burst = C_INCR
      return std_logic_vector(unsigned(value) + incr_value(size));
    end if;
  end function incr;

  function incr (value : std_logic_vector) return std_logic_vector is
  begin
    return std_logic_vector(unsigned(value) + "01");
  end function incr;

  constant C_AW_DEPTH : integer := C_AXI_AW_DEPTH;
  constant C_W_DEPTH  : integer := C_AXI_W_DEPTH;
  constant C_B_DEPTH  : integer := C_AW_DEPTH+2;     -- Two extra for B_Full
  constant C_AR_DEPTH : integer := C_AXI_AR_DEPTH;
  constant C_R_DEPTH  : integer := C_AXI_R_DEPTH+2;  -- Two extra for R_Full

  type AW_T is record
                 Id    : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
                 Addr  : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
                 Len   : std_logic_vector(7 downto 0);
                 Size  : std_logic_vector(1 downto 0);
                 Burst : std_logic_vector(1 downto 0);
                 Valid : boolean;
               end record;

  type W_T is record
                Data  : std_logic_vector(C_DATA_WIDTH-1 downto 0);
                Strb  : std_logic_vector(C_DATA_WIDTH/8-1 downto 0);
                Last  : std_logic;
                Valid : boolean;
              end record;

  type B_T is record
                Id    : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
                Resp  : std_logic_vector(1 downto 0);
                Valid : boolean;
              end record;

  type AR_T is record
                Id    : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
                Addr  : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
                Len   : std_logic_vector(7 downto 0);
                Size  : std_logic_vector(1 downto 0);
                Burst : std_logic_vector(1 downto 0);
                Valid : boolean;
              end record;

  type R_T is record
                Id    : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
                Data  : std_logic_vector(C_DATA_WIDTH-1 downto 0);
                Resp  : std_logic_vector(1 downto 0);
                Last  : std_logic;
                Valid : boolean;
              end record;

  type AW_FIFO_T is array (0 to C_AW_DEPTH-1) of AW_T;
  type W_FIFO_T  is array (0 to C_W_DEPTH-1)  of W_T;
  type B_FIFO_T  is array (0 to C_B_DEPTH-1)  of B_T;
  type AR_FIFO_T is array (0 to C_AR_DEPTH-1) of AR_T;
  type R_FIFO_T  is array (0 to C_R_DEPTH-1)  of R_T;

  signal M_AddrStrobe_i : std_logic;
  signal suppressed_write : std_logic;

  signal AW : AW_FIFO_T;
  signal S_AXI_AWREADY_i : std_logic;
  signal S_AXI_AWREADY_tmp : std_logic;
  signal S_AXI_AWADDR_i : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
  signal AW_Rd, AW_Wr : boolean;

  signal W : W_FIFO_T;
  signal S_AXI_WREADY_i : std_logic;
  signal S_AXI_WREADY_tmp : std_logic;
  signal W_Rd, W_Wr : boolean;

  signal B : B_FIFO_T;
  signal B_Rd, B_Wr, B_Full : boolean;
  signal B_Resp : std_logic_vector(1 downto 0);
  signal next_B_Id, B_Id, B_Id_q : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_WriteStrobe_i : std_logic;

  signal AR : AR_FIFO_T;
  signal S_AXI_ARREADY_i   : std_logic;
  signal S_AXI_ARREADY_tmp : std_logic;
  signal AR_Rd, AR_Wr : boolean;
  signal S_AXI_ARADDR_i : std_logic_vector(C_ADDR_WIDTH-1 downto 0);

  signal R : R_FIFO_T;
  signal R_Rd, R_Wr_0, R_Wr_1, R_Wr, R_Full : boolean;
  signal R_Last : std_logic;
  signal R_Resp : std_logic_vector(1 downto 0);
  signal next_R_Id, R_Id, R_Id_tmp, R_Id_q  : std_logic_vector(C_AXI_ID_WIDTH-1 downto 0);
  signal M_ReadStrobe_i : std_logic;

  signal rd_addr_error, rd_addr_error_q : boolean;
  signal wr_addr_error, wr_addr_error_sticky : boolean;
  signal rlast, rlast_q, rlast_qq : boolean;
  signal wlast, wlast_q, wlast_qq : boolean;

  signal LMB_Ready_i : std_logic;
  signal LMB_Ready_q : std_logic;

  constant C_LMB_Idle : std_logic_vector(1 downto 0) := "00";
  constant C_LMB_Rd   : std_logic_vector(1 downto 0) := "01";
  constant C_LMB_Wr   : std_logic_vector(1 downto 0) := "10";

  signal next_Rd, Rd, Rd_q : boolean;

  signal next_first_in_rd_burst, first_in_rd_burst : boolean;
  signal next_rd_burst_cnt, rd_burst_cnt           : std_logic_vector(7 downto 0);
  signal next_rd_burst_bits, rd_burst_bits         : std_logic_vector(11 downto 0);

  signal next_Wr, Wr, Wr_q                         : boolean;
  signal next_first_in_wr_burst, first_in_wr_burst : boolean;
  signal next_wr_burst_bits, wr_burst_bits         : std_logic_vector(11 downto 0);

  -- Pause
  signal Pause_q      : std_logic; -- Clock external input before use
  signal AW_Pause_Ack : std_logic; -- AW-Channel done
  signal W_Pause_Ack  : std_logic; -- W-Channel done
  signal B_Pause_Ack  : std_logic; -- B-Channel done
  signal AR_Pause_Ack : std_logic; -- AR-Channel done
  signal R_Pause_Ack  : std_logic; -- R-Channel done

begin

  Use_Pause : if (C_USE_PAUSE = 1) generate
    signal Pause_Ack_i : std_logic;
  begin

    Pause_DFF : process (Clk)
    begin
      if Clk'event and Clk = '1' then
        if Rst = '1' then
          Pause_q   <= '0';
          Pause_Ack_i <= '0';
         else
          Pause_q     <= Pause;
          Pause_Ack_i <= AW_Pause_Ack and W_Pause_Ack and B_Pause_Ack and AR_Pause_Ack and R_Pause_Ack;
        end if;
      end if;
    end process Pause_DFF;

    Pause_Ack <= Pause_Ack_i;

    Assert_p : process(Clk)
    begin
      if Clk'event and Clk = '1' then
        if R(0).Valid and Pause_Ack_i = '1'then
          report "axi_lmb_bridge: R-Channel not empty while Pause_Ack asserted" severity warning;
        end if;
        if AR(0).Valid and Pause_Ack_i = '1'then
          report "axi_lmb_bridge: AR-Channel not empty while Pause_Ack asserted" severity warning;
        end if;
        if W(0).Valid and Pause_Ack_i = '1'then
          report "axi_lmb_bridge: W-Channel not empty while Pause_Ack asserted" severity warning;
        end if;
        if AW(0).Valid and Pause_Ack_i = '1'then
          report "axi_lmb_bridge: AW-Channel not empty while Pause_Ack asserted" severity warning;
        end if;
        if B(0).Valid and Pause_Ack_i = '1'then
          report "axi_lmb_bridge: B-Channel not empty while Pause_Ack asserted" severity warning;
        end if;
      end if;
    end process Assert_p;

  end generate Use_Pause;

  No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    Pause_q   <= '0';
    Pause_Ack <= '0';
  end generate No_Pause;

  -----------------------------------------------------------------------------
  -- AXI AW-Channel FIFO
  -----------------------------------------------------------------------------

  AW_Use_Pause : if (C_USE_PAUSE = 1) generate
  begin

    -- Ack when both AW and W channel FIFOs empty
    AW_Pause_Ack <= Pause_q when not AW(0).Valid and not W(0).Valid else
                    '0';

    -- Pause blocks S_AXI_AWREADY_i but only if there isn't any pending in W-channel
    S_AXI_AWREADY_i <= S_AXI_AWREADY_tmp when Pause_q = '0' else
                       S_AXI_AWREADY_tmp when W(0).Valid else
                       '0';

  end generate AW_Use_Pause;

  AW_No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    S_AXI_AWREADY_i <= S_AXI_AWREADY_tmp;
    AW_Pause_Ack    <= '0';
  end generate AW_No_Pause;

  S_AXI_AWREADY <= S_AXI_AWREADY_i;

  AW_Wr <= S_AXI_AWVALID = '1' and S_AXI_AWREADY_i = '1';

  AW_FIFO : process (Clk)
    variable AW_tmp : AW_T;
  begin
    if Clk'event and Clk = '1' then
      AW_tmp.Id    := S_AXI_AWID;
      AW_tmp.Addr  := S_AXI_AWADDR;
      AW_tmp.Len   := S_AXI_AWLEN;
      AW_tmp.Size  := S_AXI_AWSIZE(1 downto 0);
      AW_tmp.Burst := S_AXI_AWBURST;
      AW_tmp.Valid := true;
      if Rst = '1' then
        for I in 0 to C_AW_DEPTH-1 loop
          AW(I).Id    <= (others => '0');
          AW(I).Addr  <= (others => '0');
          AW(I).Len   <= (others => '0');
          AW(I).Size  <= (others => '0');
          AW(I).Burst <= (others => '0');
          AW(I).Valid <= false;
        end loop;  -- I
        S_AXI_AWREADY_tmp <= '1';
      else
        -- read and no write
        if AW_Rd and not AW_Wr then
          for I in 0 to C_AW_DEPTH-2 loop
            AW(I) <= AW(I+1);
          end loop;
          AW(C_AW_DEPTH-1).Valid <= false;  -- last fifo entry non valid
          S_AXI_AWREADY_tmp        <= '1';    -- at least one entry free
        -- write and no read
        -- fifo data not moved, write new entry to first empty slot
        elsif AW_Wr and not AW_Rd then
          for I in 0 to C_AW_DEPTH-1 loop
            if not AW(I).Valid then
              AW(I) <= AW_tmp;
              if I = C_AW_DEPTH-1 then  -- write to last, no more entries
                S_AXI_AWREADY_tmp <= '0';
              end if;
              exit;
            end if;
          end loop;  -- I
        elsif AW_Wr and AW_Rd then
          if AW(1).Valid then                       -- second element valid
            for I in 0 to C_AW_DEPTH-2 loop         --  then loop to move fifo data
              if AW(I+1).Valid then
                AW(I) <= AW(I+1);       -- move data
              else  -- data from AW channel
                AW(I) <= AW_tmp;
                exit;
              end if;
            end loop;
            if AW(C_AW_DEPTH-1).Valid then  -- handle last element
              AW(C_AW_DEPTH-1) <= AW_tmp;
            end if;
          else -- only first element valid, replace with write data
            AW(0) <= AW_tmp;
          end if;
        end if;
      end if;
    end if;
  end process AW_FIFO;

  -----------------------------------------------------------------------------
  -- AXI W-Channel FIFO
  -----------------------------------------------------------------------------

  W_Use_Pause : if (C_USE_PAUSE = 1) generate
  begin

    -- Ack when both AW and W channel FIFOs empty
    W_Pause_Ack <= Pause_q when not AW(0).Valid and not W(0).Valid else
                   '0';

    -- Pause blocks S_AXI_WREADY_i but only if there isn't any pending in AW-channel
    S_AXI_WREADY_i <= S_AXI_WREADY_tmp when Pause_q = '0' else
                      S_AXI_WREADY_tmp when AW(0).Valid else
                      '0';

  end generate W_Use_Pause;

  W_No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    S_AXI_WREADY_i <= S_AXI_WREADY_tmp;
    W_Pause_Ack    <= '0';
  end generate W_No_Pause;

  S_AXI_WREADY <= S_AXI_WREADY_i;

  W_Wr <= S_AXI_WVALID = '1' and S_AXI_WREADY_i = '1';

  W_FIFO : process (Clk)
    variable W_tmp : W_T;
  begin
    if Clk'event and Clk = '1' then
      W_tmp.Data  := S_AXI_WDATA;
      W_tmp.Strb  := S_AXI_WSTRB;
      W_tmp.Last  := S_AXI_WLAST;
      W_tmp.Valid := true;
      if Rst = '1' then
        for I in 0 to C_W_DEPTH-1 loop
          W(I).Data  <= (others => '0');
          W(I).Strb  <= (others => '0');
          W(I).Last  <= '0';
          W(I).Valid <= false;
        end loop;  -- I
        S_AXI_WREADY_tmp <= '1';
      else
        -- read and no write
        if W_Rd and not W_Wr then
          for I in 0 to C_W_DEPTH-2 loop
            W(I) <= W(I+1);
          end loop;
          W(C_W_DEPTH-1).Valid <= false;  -- last fifo entry non valid
          S_AXI_WREADY_tmp <= '1';           -- at least one entry free
        -- write and no read
        -- fifo data not moved, write new entry to first empty slot
        elsif W_Wr and not W_Rd then
          for I in 0 to C_W_DEPTH-1 loop
            if not W(I).Valid then
              W(I) <= W_tmp;
              if I = C_W_DEPTH-1 then  -- write to last, no more entries
                S_AXI_WREADY_tmp <= '0';
              end if;
              exit;
            end if;
          end loop;  -- I
        elsif W_Wr and W_Rd then
          if W(1).Valid then                       -- second entry valid
            for I in 0 to C_W_DEPTH-2 loop         --  then loop to move fifo data
              if W(I+1).Valid then
                W(I) <= W(I+1);       -- move data
              else  -- data from W channel
                W(I) <= W_tmp;
                exit;
              end if;
            end loop;
            if W(C_W_DEPTH-1).Valid then  -- handle last entry
              W(C_W_DEPTH-1) <= W_tmp;
            end if;
          else -- only first entry valid, replace with write data
            W(0) <= W_tmp;
          end if;
        end if;
      end if;
    end if;
  end process W_FIFO;

  -----------------------------------------------------------------------------
  -- AXI B-Channel FIFO
  -----------------------------------------------------------------------------

  B_Use_Pause : if (C_USE_PAUSE = 1) generate
    signal Pending_B : natural range 0 to C_B_DEPTH+2;
  begin

    Pending_B_Cnt : process (Clk)
    begin
      if Clk'event and Clk = '1' then
        if Rst = '1' then
          Pending_B <= 0;
        else
          if AW_Wr and B_Rd then
            Pending_B <= Pending_B;
          elsif AW_Wr then
            Pending_B <= Pending_B + 1;
          elsif B_Rd then
            Pending_B <= Pending_B - 1;
          end if;
        end if;
      end if;
    end process Pending_B_Cnt;

    -- When no more response on B-channel pending
    B_Pause_Ack <= Pause_q when Pending_B = 0 else
                   '0';

  end generate B_Use_Pause;

  B_No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    B_Pause_Ack    <= '0';
  end generate B_No_Pause;

  S_AXI_BVALID <= '1' when B(0).Valid else
                  '0';

  S_AXI_BID   <= B(0).Id;
  S_AXI_BRESP <= B(0).Resp;

  B_Rd <= B(0).Valid and S_AXI_BREADY = '1';

  B_Full <= B(C_B_DEPTH-2).Valid;

  B_FIFO : process (Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        for I in 0 to C_B_DEPTH-1 loop
          B(I).Id    <= (others => '0');
          B(I).Resp  <= (others => '0');
          B(I).Valid <= false;
        end loop;  -- I
      else
        -- read and no write
        if B_Rd and not B_Wr then
          for I in 0 to C_B_DEPTH-2 loop
            B(I) <= B(I+1);
          end loop;
          B(C_B_DEPTH-1).Valid <= false;  -- last fifo entry non valid
        -- write and no read
        -- fifo data not moved, write new entry to first empty slot
        elsif B_Wr and not B_Rd then
          for I in 0 to C_B_DEPTH-1 loop
            if not B(I).Valid then
              B(I).Id    <= B_Id_q;
              B(I).Resp  <= B_Resp;
              B(I).Valid <= true;
              exit;
            end if;
          end loop;  -- I
        elsif B_Wr and B_Rd then
          if B(1).Valid then                       -- second entry valid
            for I in 0 to C_B_DEPTH-2 loop         --  then loop to move fifo data
              if B(I+1).Valid then
                B(I) <= B(I+1);       -- move data
              else  -- data from W channel
                B(I).Id   <= B_Id_q;
                B(I).Resp <= B_Resp;
                exit;
              end if;
            end loop;
            if B(C_B_DEPTH-1).Valid then  -- handle last entry
              B(C_B_DEPTH-1).Id   <= B_Id_q;
              B(C_B_DEPTH-1).Resp <= B_Resp;
            end if;
          else -- only first entry valid, replace with write data
            B(0).Id   <= B_Id_q;
            B(0).Resp <= B_Resp;
          end if;
        end if;
      end if;
    end if;
  end process B_FIFO;

  -----------------------------------------------------------------------------
  -- AXI AR-Channel FIFO
  -----------------------------------------------------------------------------

  AR_Use_Pause : if (C_USE_PAUSE = 1) generate
  begin

    -- AXI AR-Channel pause ack when Pause and AR-channel empty
    AR_Pause_Ack <= Pause_q when not AR(0).Valid else
                  '0';
    -- Ready if Pause not blocking accepting new accesses
    S_AXI_ARREADY_i <= S_AXI_ARREADY_tmp and not Pause_q;

  end generate AR_Use_Pause;

  AR_No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    S_AXI_ARREADY_i <= S_AXI_ARREADY_tmp;
    AR_Pause_Ack    <= '0';
  end generate AR_No_Pause;

  S_AXI_ARREADY <= S_AXI_ARREADY_i;

  AR_Wr <= S_AXI_ARVALID = '1' and S_AXI_ARREADY_i = '1';

  AR_FIFO : process (Clk)
    variable AR_tmp : AR_T;
  begin
    if Clk'event and Clk = '1' then
      AR_tmp.Id    := S_AXI_ARID;
      AR_tmp.Addr  := S_AXI_ARADDR;
      AR_tmp.Len   := S_AXI_ARLEN;
      AR_tmp.Size  := S_AXI_ARSIZE(1 downto 0);
      AR_tmp.Burst := S_AXI_ARBURST;
      AR_tmp.Valid := true;
      if Rst = '1' then
        for I in 0 to C_AR_DEPTH-1 loop
          AR(I).Id    <= (others => '0');
          AR(I).Addr  <= (others => '0');
          AR(I).Len   <= (others => '0');
          AR(I).Size  <= (others => '0');
          AR(I).Burst <= (others => '0');
          AR(I).Valid <= false;
        end loop;  -- I
        S_AXI_ARREADY_tmp <= '1';
      else
        -- read and no write
        if AR_Rd and not AR_Wr then
          for I in 0 to C_AR_DEPTH-2 loop
            AR(I) <= AR(I+1);
          end loop;
          AR(C_AR_DEPTH-1).Valid <= false;  -- last fifo entry non valid
          S_AXI_ARREADY_tmp <= '1';
        -- write and no read
        -- fifo data not moved, write new entry to first empty slot
        elsif AR_Wr and not AR_Rd then
          for I in 0 to C_AR_DEPTH-1 loop
            if not AR(I).Valid then
              AR(I) <= AR_tmp;
              if I = C_AR_DEPTH-1 then  -- write to last, no more entries
                S_AXI_ARREADY_tmp <= '0';
              end if;
              exit;
            end if;
          end loop;  -- I
        elsif AR_Wr and AR_Rd then
          if AR(1).Valid then                       -- second element valid
            for I in 0 to C_AR_DEPTH-2 loop         --  then loop to move fifo data
              if AR(I+1).Valid then
                AR(I) <= AR(I+1);       -- move data
              else  -- data from AR channel
                AR(I) <= AR_tmp;
                exit;
              end if;
            end loop;
            if AR(C_AR_DEPTH-1).Valid then  -- handle last element
              AR(C_AR_DEPTH-1) <= AR_tmp;
            end if;
          else -- only first element valid, replace with write data
            AR(0) <= AR_tmp;
          end if;
        end if;
      end if;
    end if;
  end process AR_FIFO;

  -----------------------------------------------------------------------------
  -- AXI R-Channel FIFO
  -----------------------------------------------------------------------------

  R_Use_Pause : if (C_USE_PAUSE = 1) generate
    signal Pending_R : natural range 0 to C_R_DEPTH+2;
  begin

    Pending_R_Cnt : process (Clk)
    begin
      if Clk'event and Clk = '1' then
        if Rst = '1' then
          Pending_R <= 0;
        else
          if AR_Wr and R_Rd and R(0).Last = '1' then
            Pending_R <= Pending_R;
          elsif AR_Wr then
            Pending_R <= Pending_R + 1;
          elsif R_Rd and R(0).Last = '1' then
            Pending_R <= Pending_R - 1;
          end if;
        end if;
      end if;
    end process Pending_R_Cnt;

    -- AXI R-Channel pause when last rdata sent
    R_Pause_Ack <= Pause_q when Pending_R = 0 else
                   '0';

  end generate R_Use_Pause;

  R_No_Pause : if (C_USE_PAUSE /= 1) generate
  begin
    R_Pause_Ack <= '0';
  end generate R_No_Pause;

  S_AXI_RVALID <= '1' when R(0).Valid else
                  '0';

  S_AXI_RID   <= R(0).Id;
  S_AXI_RRESP <= R(0).Resp;
  S_AXI_RDATA <= R(0).Data;
  S_AXI_RLAST <= R(0).Last;

  R_Rd <= R(0).Valid and S_AXI_RREADY = '1';
  -- Need one extra as LMB readdata comes one cycle after ready and arbitration of new access
  R_Full <= R(C_R_DEPTH-3).Valid;

  R_FIFO : process (Clk)
    variable I : integer;
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        for I in 0 to C_R_DEPTH-1 loop
          R(I).Id    <= (others => '0');
          R(I).Data  <= (others => '0');
          R(I).Resp  <= (others => '0');
          R(I).Last  <= '0';
          R(I).Valid <= false;
        end loop;  -- I
      else
        -- read and no write
        if R_Rd and not R_Wr then
          for I in 0 to C_R_DEPTH-2 loop
            R(I) <= R(I+1);
          end loop;
          -- reset last fifo entry
          R(C_R_DEPTH-1).Id    <= (others => '0');
          R(C_R_DEPTH-1).Data  <= (others => '0');
          R(C_R_DEPTH-1).Resp  <= (others => '0');
          R(C_R_DEPTH-1).Last  <= '0';
          R(C_R_DEPTH-1).Valid <= false;
        -- write and no read
        -- fifo data not moved, write new entry to first empty slot
        elsif R_Wr and not R_Rd then
          for I in 0 to C_R_DEPTH-1 loop
            if not R(I).Valid then
              R(I).Id    <= R_Id;
              R(I).Data  <= LMB_ReadDBus;
              R(I).Resp  <= R_Resp;
              R(I).Last  <= R_Last;
              R(I).Valid <= true;
              exit;
            end if;
          end loop;  -- I
        elsif R_Wr and R_Rd then
          if R(1).Valid then                       -- second entry valid
            for I in 0 to C_R_DEPTH-2 loop         --  then loop to move fifo data
              if R(I+1).Valid then
                R(I) <= R(I+1);     -- move FIFO data
              else  -- data LMB read
                R(I).Id   <= R_Id;
                R(I).Data <= LMB_ReadDBus;
                R(I).Resp <= R_Resp;
                R(I).Last <= R_Last;
                exit;
              end if;
            end loop;
            if R(C_R_DEPTH-1).Valid then  -- handle last entry
              R(C_R_DEPTH-1).Id   <= R_Id;
              R(C_R_DEPTH-1).Data <= LMB_ReadDBus;
              R(C_R_DEPTH-1).Resp <= R_Resp;
              R(C_R_DEPTH-1).Last <= R_Last;
            end if;
          else -- only first entry valid, replace with write data
            R(0).Id   <= R_Id;
            R(0).Data <= LMB_ReadDBus;
            R(0).Resp <= R_Resp;
            R(0).Last <= R_Last;
          end if;
        end if;
      end if;
    end if;
  end process R_FIFO;

  -----------------------------------------------------------------------------
  -- LMB access
  -----------------------------------------------------------------------------

  M_DBus <= W(0).Data;         -- Always first entry
  M_BE   <= W(0).Strb;         -- Always first entry

  LMB_p: process(Rst, Rd, Wr, LMB_Wait, LMB_Ready_i,
                 first_in_wr_burst, first_in_rd_burst, wr_burst_bits, rd_burst_bits, rd_burst_cnt,
                 AW, B_Full, W, AR, R_Full, rlast_q)
  begin
    AW_Rd           <= false;
    W_Rd            <= false;
    AR_Rd           <= false;
    M_ReadStrobe_i  <= '0';
    M_WriteStrobe_i <= '0';
    M_AddrStrobe_i  <= '0';
    M_ABus          <= (others => '0');
    wlast           <= false;
    if LMB_Ready_i = '0' and LMB_Wait = '1' then
      rlast <= rlast_q;
    else
      rlast <= false;
    end if;
    next_Rd         <= false;
    next_R_Id       <= (others => '0');
    next_Wr         <= false;
    next_B_Id       <= (others => '0');
    if Rst = '1' then
      next_Wr   <= false;
      next_Rd   <= false;
      next_first_in_wr_burst <= true;
      next_first_in_rd_burst <= true;
      next_wr_burst_bits     <= (others => '0');
      next_rd_burst_bits     <= (others => '0');
      next_rd_burst_cnt      <= (others => '0');
    else
      if ((Rd or Wr) and LMB_Wait = '1' and LMB_Ready_i = '0') then  -- Access wait
        next_Wr <= Wr;
        next_Rd <= Rd;
        next_first_in_wr_burst <= first_in_wr_burst;
        next_first_in_rd_burst <= first_in_rd_burst;
        next_wr_burst_bits <= wr_burst_bits;
        next_rd_burst_bits <= rd_burst_bits;
        next_rd_burst_cnt  <= rd_burst_cnt;
      elsif (((Rd or Wr) and LMB_Ready_i = '1') or  -- Started access ready
             ((Rd or Wr) and LMB_Wait = '0' and LMB_Ready_i = '0') or  -- Address error
              (not Rd and not Wr)) then           -- no access ongoing
        if AW(0).Valid and W(0).Valid and not B_Full then  -- Next write is valid and space in B channel FIFO
          if first_in_wr_burst then
            M_ABus             <= AW(0).Addr(C_ADDR_WIDTH-1 downto 0);
            next_wr_burst_bits <= incr(AW(0).Addr(11 downto 0),
                                       AW(0).Len(3 downto 0),
                                       AW(0).Burst,
                                       AW(0).Size(1 downto 0));  -- increment in case of burst
          else
            M_ABus             <= AW(0).Addr(C_ADDR_WIDTH-1 downto 12) & wr_burst_bits;
            next_wr_burst_bits <= incr(wr_burst_bits,
                                       AW(0).Len(3 downto 0),
                                       AW(0).Burst,
                                       AW(0).Size(1 downto 0));  -- increment in case of burst
          end if;
          M_WriteStrobe_i <= '1';
          M_Addrstrobe_i  <= '1';
          next_Wr   <= true;
          next_B_Id <= AW(0).Id;
          next_first_in_wr_burst <= false;
          next_first_in_rd_burst <= first_in_rd_burst;
          next_rd_burst_bits <= rd_burst_bits;
          next_rd_burst_cnt  <= rd_burst_cnt;
          W_Rd    <= true;           -- Always pop W fifo
          if W(0).Last = '1' then   -- if last wdata in burst
            AW_Rd <= true;           -- pop AW fifo
            wlast <= true;           -- remember this was last access
            next_first_in_wr_burst <= true;  -- Prepare for next access
          end if;
        elsif AR(0).Valid and not R_Full then
          if first_in_rd_burst then
            M_ABus             <= AR(0).Addr(C_ADDR_WIDTH-1 downto 0);
            next_rd_burst_bits <= incr(AR(0).Addr(11 downto 0),
                                       AR(0).Len(3 downto 0),
                                       AR(0).Burst,
                                       AR(0).Size(1 downto 0));  -- increment in case of burst
            next_rd_burst_cnt  <= "00000001";
          else
            M_ABus             <= AR(0).Addr(C_ADDR_WIDTH-1 downto 12) & rd_burst_bits;
            next_rd_burst_bits <= incr(rd_burst_bits,
                                       AR(0).Len(3 downto 0),
                                       AR(0).Burst,
                                       AR(0).Size(1 downto 0));  -- increment in case of burst
            next_rd_burst_cnt  <= incr(rd_burst_cnt);
          end if;
          next_R_Id      <= AR(0).Id;
          M_ReadStrobe_i <= '1';
          M_Addrstrobe_i <= '1';
          next_Rd <= true;
          next_first_in_rd_burst <= false;
          next_first_in_wr_burst <= first_in_wr_burst;
          next_wr_burst_bits <= wr_burst_bits;
          if rd_burst_cnt = AR(0).Len then
            next_rd_burst_cnt  <= "00000000";
            AR_Rd <= true;           -- pop AR fifo and
            rlast <= true;           -- remember this was last access
            next_first_in_rd_burst <= true;  -- Prepare for next access
          end if;
        else
          next_first_in_wr_burst <= first_in_wr_burst;
          next_wr_burst_bits     <= wr_burst_bits;
          next_first_in_rd_burst <= first_in_rd_burst;
          next_rd_burst_bits     <= rd_burst_bits;
          next_rd_burst_cnt      <= rd_burst_cnt;
        end if;
      else
        next_first_in_wr_burst <= first_in_wr_burst;
        next_wr_burst_bits     <= wr_burst_bits;
        next_first_in_rd_burst <= first_in_rd_burst;
        next_rd_burst_bits     <= rd_burst_bits;
        next_rd_burst_cnt      <= rd_burst_cnt;
      end if;
    end if;
  end process LMB_p;

  M_AddrStrobe  <= M_AddrStrobe_i when M_ReadStrobe_i = '1' or (M_WriteStrobe_i = '1' and W(0).Strb /= C_WSTRB_ZERO) else
                   '0'; -- suppress write access when no write enable
  M_ReadStrobe  <= M_ReadStrobe_i;
  M_WriteStrobe <= M_WriteStrobe_i;

  suppressed_write_DFF  : process (Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        suppressed_write <= '0';
      elsif M_WriteStrobe_i = '1' and W(0).Strb = C_WSTRB_ZERO then
        suppressed_write <= '1';
      else
        suppressed_write <= '0';
      end if;
    end if;
  end process suppressed_write_DFF;

  LMB_Ready_i <= LMB_Ready or suppressed_write;

  rd_addr_error <= Rd and LMB_Wait = '0' and LMB_Ready_i = '0';

  wr_addr_error <= Wr and LMB_Wait = '0' and LMB_Ready_i = '0';

  Wr_Error_DFF  : process (Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        wr_addr_error_sticky <= false;
      elsif wr_addr_error then
        wr_addr_error_sticky <= true;
      elsif Wr_q and wlast_qq then
        wr_addr_error_sticky <= false;
      end if;
    end if;
  end process Wr_Error_DFF;

  LMB_Mealy_DFF : process (Clk)
  begin
    if Clk'event and Clk = '1' then
      if Rst = '1' then
        Wr_q              <= false;
        Wr                <= false;
        Rd_q              <= false;
        Rd                <= false;
        R_Id_tmp          <= (others => '0');
        R_Id_q            <= (others => '0');
        B_Id              <= (others => '0');
        B_Id_q            <= (others => '0');
        rd_addr_error_q   <= false;
        wlast_qq          <= false;
        wlast_q           <= false;
        rlast_qq          <= false;
        rlast_q           <= false;
        LMB_Ready_q       <= '0';
        first_in_wr_burst <= true;
        first_in_rd_burst <= true;
        wr_burst_bits     <= (others => '0');
        rd_burst_bits     <= (others => '0');
        rd_burst_cnt      <= (others => '0');
      else
        Wr_q   <= Wr;
        Wr     <= next_Wr;
        Rd_q   <= Rd;
        Rd     <= next_Rd;
        R_Id_q <= R_Id_tmp;
        if M_ReadStrobe_i = '1' then
          R_Id_tmp   <= next_R_Id;
        end if;
        B_Id_q <= B_Id;
        if M_WriteStrobe_i = '1' then
          B_Id <= next_B_Id;
        end if;
        rd_addr_error_q   <= rd_addr_error;
        wlast_qq          <= wlast_q;
        wlast_q           <= wlast;
        rlast_qq          <= rlast_q;
        rlast_q           <= rlast;
        LMB_Ready_q       <= LMB_Ready_i;
        first_in_wr_burst <= next_first_in_wr_burst;
        first_in_rd_burst <= next_first_in_rd_burst;
        wr_burst_bits     <= next_wr_burst_bits;
        rd_burst_bits     <= next_rd_burst_bits;
        rd_burst_cnt      <= next_rd_burst_cnt;
      end if;
    end if;
  end process LMB_Mealy_DFF;

  -- R response at LMB Ready
  LMB_Protocol_0 : if (C_LMB_PROTOCOL = 0) generate
  begin
    R_Id   <= R_Id_tmp;
    R_Wr_0 <= Rd and (rd_addr_error or LMB_Ready_i = '1');  -- Guaranteed place in R fifo
    R_Resp <= "10" when rd_addr_error or LMB_UE = '1' else  -- SLVERR when no response on LMB or ECC UE
              "00";                                         -- OKAY
    R_Last <= '1' when rlast_q and R_Wr else
              '0';
  end generate LMB_Protocol_0;

  -- Delay R response until LMB Read Data is available, one cycle after LMB Ready
  LMB_Protocol_1 : if (C_LMB_PROTOCOL = 1) generate
  begin
    R_Id   <= R_Id_q;
    R_Wr_1 <= Rd_q and (rd_addr_error_q or LMB_Ready_q = '1');  -- Guaranteed place in R fifo
    R_Resp <= "10" when rd_addr_error_q or LMB_UE = '1' else    -- SLVERR when no response on LMB or ECC UE
              "00";                                             -- OKAY
    R_Last <= '1' when rlast_qq and R_Wr else
              '0';
  end generate LMB_Protocol_1;

  R_Wr   <= R_Wr_0 when C_LMB_PROTOCOL = 0 else R_Wr_1;

  B_Wr   <= Wr_q and wlast_qq;  -- Guaranteed place in B fifo
  B_Resp <= "10" when wr_addr_error_sticky or LMB_UE = '1' else  -- SLVERR when no response on LMB or ECC UE
            "00";                                                -- OKAY

end architecture IMP;


