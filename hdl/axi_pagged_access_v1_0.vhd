library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_pagged_access_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXI_PAGED
		C_S_AXI_PAGED_ID_WIDTH	: integer	:= 1;
		C_S_AXI_PAGED_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_PAGED_ADDR_WIDTH	: integer	:= 6;
		C_S_AXI_PAGED_AWUSER_WIDTH	: integer	:= 0;
		C_S_AXI_PAGED_ARUSER_WIDTH	: integer	:= 0;
		C_S_AXI_PAGED_WUSER_WIDTH	: integer	:= 0;
		C_S_AXI_PAGED_RUSER_WIDTH	: integer	:= 0;
		C_S_AXI_PAGED_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Master Bus Interface M_AXI
		C_M_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Slave Bus Interface S_AXI_LITE
		C_S_AXI_LITE_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_LITE_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXI_PAGED
		s_axi_paged_aclk	: in std_logic;
		s_axi_paged_aresetn	: in std_logic;
		s_axi_paged_awid	: in std_logic_vector(C_S_AXI_PAGED_ID_WIDTH-1 downto 0);
		s_axi_paged_awaddr	: in std_logic_vector(C_S_AXI_PAGED_ADDR_WIDTH-1 downto 0);
		s_axi_paged_awlen	: in std_logic_vector(7 downto 0);
		s_axi_paged_awsize	: in std_logic_vector(2 downto 0);
		s_axi_paged_awburst	: in std_logic_vector(1 downto 0);
		s_axi_paged_awlock	: in std_logic;
		s_axi_paged_awcache	: in std_logic_vector(3 downto 0);
		s_axi_paged_awprot	: in std_logic_vector(2 downto 0);
		s_axi_paged_awqos	: in std_logic_vector(3 downto 0);
		s_axi_paged_awregion	: in std_logic_vector(3 downto 0);
		s_axi_paged_awuser	: in std_logic_vector(C_S_AXI_PAGED_AWUSER_WIDTH-1 downto 0);
		s_axi_paged_awvalid	: in std_logic;
		s_axi_paged_awready	: out std_logic;
		s_axi_paged_wdata	: in std_logic_vector(C_S_AXI_PAGED_DATA_WIDTH-1 downto 0);
		s_axi_paged_wstrb	: in std_logic_vector((C_S_AXI_PAGED_DATA_WIDTH/8)-1 downto 0);
		s_axi_paged_wlast	: in std_logic;
		s_axi_paged_wuser	: in std_logic_vector(C_S_AXI_PAGED_WUSER_WIDTH-1 downto 0);
		s_axi_paged_wvalid	: in std_logic;
		s_axi_paged_wready	: out std_logic;
		s_axi_paged_bid	: out std_logic_vector(C_S_AXI_PAGED_ID_WIDTH-1 downto 0);
		s_axi_paged_bresp	: out std_logic_vector(1 downto 0);
		s_axi_paged_buser	: out std_logic_vector(C_S_AXI_PAGED_BUSER_WIDTH-1 downto 0);
		s_axi_paged_bvalid	: out std_logic;
		s_axi_paged_bready	: in std_logic;
		s_axi_paged_arid	: in std_logic_vector(C_S_AXI_PAGED_ID_WIDTH-1 downto 0);
		s_axi_paged_araddr	: in std_logic_vector(C_S_AXI_PAGED_ADDR_WIDTH-1 downto 0);
		s_axi_paged_arlen	: in std_logic_vector(7 downto 0);
		s_axi_paged_arsize	: in std_logic_vector(2 downto 0);
		s_axi_paged_arburst	: in std_logic_vector(1 downto 0);
		s_axi_paged_arlock	: in std_logic;
		s_axi_paged_arcache	: in std_logic_vector(3 downto 0);
		s_axi_paged_arprot	: in std_logic_vector(2 downto 0);
		s_axi_paged_arqos	: in std_logic_vector(3 downto 0);
		s_axi_paged_arregion	: in std_logic_vector(3 downto 0);
		s_axi_paged_aruser	: in std_logic_vector(C_S_AXI_PAGED_ARUSER_WIDTH-1 downto 0);
		s_axi_paged_arvalid	: in std_logic;
		s_axi_paged_arready	: out std_logic;
		s_axi_paged_rid	: out std_logic_vector(C_S_AXI_PAGED_ID_WIDTH-1 downto 0);
		s_axi_paged_rdata	: out std_logic_vector(C_S_AXI_PAGED_DATA_WIDTH-1 downto 0);
		s_axi_paged_rresp	: out std_logic_vector(1 downto 0);
		s_axi_paged_rlast	: out std_logic;
		s_axi_paged_ruser	: out std_logic_vector(C_S_AXI_PAGED_RUSER_WIDTH-1 downto 0);
		s_axi_paged_rvalid	: out std_logic;
		s_axi_paged_rready	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXI
		m_axi_aclk	: in std_logic;
		m_axi_aresetn	: in std_logic;
		m_axi_awid	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		m_axi_awaddr	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		m_axi_awlen	: out std_logic_vector(7 downto 0);
		m_axi_awsize	: out std_logic_vector(2 downto 0);
		m_axi_awburst	: out std_logic_vector(1 downto 0);
		m_axi_awlock	: out std_logic;
		m_axi_awcache	: out std_logic_vector(3 downto 0);
		m_axi_awprot	: out std_logic_vector(2 downto 0);
		m_axi_awqos	: out std_logic_vector(3 downto 0);
		m_axi_awuser	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		m_axi_awvalid	: out std_logic;
		m_axi_awready	: in std_logic;
		m_axi_wdata	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		m_axi_wstrb	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		m_axi_wlast	: out std_logic;
		m_axi_wuser	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		m_axi_wvalid	: out std_logic;
		m_axi_wready	: in std_logic;
		m_axi_bid	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		m_axi_bresp	: in std_logic_vector(1 downto 0);
		m_axi_buser	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		m_axi_bvalid	: in std_logic;
		m_axi_bready	: out std_logic;
		m_axi_arid	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		m_axi_araddr	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		m_axi_arlen	: out std_logic_vector(7 downto 0);
		m_axi_arsize	: out std_logic_vector(2 downto 0);
		m_axi_arburst	: out std_logic_vector(1 downto 0);
		m_axi_arlock	: out std_logic;
		m_axi_arcache	: out std_logic_vector(3 downto 0);
		m_axi_arprot	: out std_logic_vector(2 downto 0);
		m_axi_arqos	: out std_logic_vector(3 downto 0);
		m_axi_aruser	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		m_axi_arvalid	: out std_logic;
		m_axi_arready	: in std_logic;
		m_axi_rid	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		m_axi_rdata	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		m_axi_rresp	: in std_logic_vector(1 downto 0);
		m_axi_rlast	: in std_logic;
		m_axi_ruser	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		m_axi_rvalid	: in std_logic;
		m_axi_rready	: out std_logic;

		-- Ports of Axi Slave Bus Interface S_AXI_LITE
		s_axi_lite_aclk	: in std_logic;
		s_axi_lite_aresetn	: in std_logic;
		s_axi_lite_awaddr	: in std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);
		s_axi_lite_awprot	: in std_logic_vector(2 downto 0);
		s_axi_lite_awvalid	: in std_logic;
		s_axi_lite_awready	: out std_logic;
		s_axi_lite_wdata	: in std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
		s_axi_lite_wstrb	: in std_logic_vector((C_S_AXI_LITE_DATA_WIDTH/8)-1 downto 0);
		s_axi_lite_wvalid	: in std_logic;
		s_axi_lite_wready	: out std_logic;
		s_axi_lite_bresp	: out std_logic_vector(1 downto 0);
		s_axi_lite_bvalid	: out std_logic;
		s_axi_lite_bready	: in std_logic;
		s_axi_lite_araddr	: in std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);
		s_axi_lite_arprot	: in std_logic_vector(2 downto 0);
		s_axi_lite_arvalid	: in std_logic;
		s_axi_lite_arready	: out std_logic;
		s_axi_lite_rdata	: out std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
		s_axi_lite_rresp	: out std_logic_vector(1 downto 0);
		s_axi_lite_rvalid	: out std_logic;
		s_axi_lite_rready	: in std_logic
	);
end axi_pagged_access_v1_0;

architecture arch_imp of axi_pagged_access_v1_0 is

	component axi_pagged_access_v1_0_S_AXI_LITE is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4;
		C_AXI_ADDR_WIDTH    : integer   := 32
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic;

        BASE_ADDRESS: out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        BASE_MASK: out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0)
		);
	end component axi_pagged_access_v1_0_S_AXI_LITE;
	signal paged_base_address: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
	signal paged_base_mask: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal paged_awaddr: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal paged_araddr: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
begin
        paged_awaddr <= (paged_base_address and  paged_base_mask) or ((not paged_base_mask) and s_axi_paged_awaddr);
        paged_araddr <= (paged_base_address and  paged_base_mask) or ((not paged_base_mask) and s_axi_paged_araddr);
		
		-- m_axi_aclk     <= s_axi_paged_aclk;
		-- m_axi_resetn  <= s_axi_paged_aresetn;
		m_axi_awid     <= s_axi_paged_awid;
		m_axi_awaddr   <= paged_awaddr;
		m_axi_awlen    <= s_axi_paged_awlen;
		m_axi_awsize   <= s_axi_paged_awsize;
		m_axi_awburst  <= s_axi_paged_awburst;
		m_axi_awlock   <= s_axi_paged_awlock;
		m_axi_awcache  <= s_axi_paged_awcache;
		m_axi_awprot   <= s_axi_paged_awprot;
		m_axi_awqos    <= s_axi_paged_awqos;
		--m_axi_awregion <= s_axi_paged_awregion;
		m_axi_awuser   <= s_axi_paged_awuser;
		m_axi_awvalid  <= s_axi_paged_awvalid;
		
		s_axi_paged_awready <= m_axi_awready;
		 
		m_axi_wdata  <= s_axi_paged_wdata;
		m_axi_wstrb  <= s_axi_paged_wstrb;
		m_axi_wlast  <= s_axi_paged_wlast;
		m_axi_wuser  <= s_axi_paged_wuser;
		m_axi_wvalid <= s_axi_paged_wvalid;
		
		s_axi_paged_wready <= m_axi_wready;
		s_axi_paged_bid    <= m_axi_bid;
		s_axi_paged_bresp  <= m_axi_bresp;
		s_axi_paged_buser  <= m_axi_buser;
		s_axi_paged_bvalid <= m_axi_bvalid;
		
		m_axi_bready   <= s_axi_paged_bready;
		m_axi_arid     <= s_axi_paged_arid;
		m_axi_araddr   <= paged_araddr;
		m_axi_arlen    <= s_axi_paged_arlen;
		m_axi_arsize   <= s_axi_paged_arsize;
		m_axi_arburst  <= s_axi_paged_arburst;
		m_axi_arlock   <= s_axi_paged_arlock;
		m_axi_arcache  <= s_axi_paged_arcache;
		m_axi_arprot   <= s_axi_paged_arprot;
		m_axi_arqos    <= s_axi_paged_arqos;
		--m_axi_arregion <= s_axi_paged_arregion;
		m_axi_aruser   <= s_axi_paged_aruser;
		m_axi_arvalid  <= s_axi_paged_arvalid;
		
		s_axi_paged_arready <= m_axi_arready;
		s_axi_paged_rid     <= m_axi_rid;
		s_axi_paged_rdata   <= m_axi_rdata;
		s_axi_paged_rresp   <= m_axi_rresp;
		s_axi_paged_rlast   <= m_axi_rlast;
		s_axi_paged_ruser   <= m_axi_ruser;
		s_axi_paged_rvalid  <= m_axi_rvalid;
		m_axi_rready  <= s_axi_paged_rready;
		
		
-- Instantiation of Axi Bus Interface S_AXI_LITE
axi_pagged_access_v1_0_S_AXI_LITE_inst : axi_pagged_access_v1_0_S_AXI_LITE
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S_AXI_LITE_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S_AXI_LITE_ADDR_WIDTH,
		C_AXI_ADDR_WIDTH => C_M_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s_axi_lite_aclk,
		S_AXI_ARESETN	=> s_axi_lite_aresetn,
		S_AXI_AWADDR	=> s_axi_lite_awaddr,
		S_AXI_AWPROT	=> s_axi_lite_awprot,
		S_AXI_AWVALID	=> s_axi_lite_awvalid,
		S_AXI_AWREADY	=> s_axi_lite_awready,
		S_AXI_WDATA	=> s_axi_lite_wdata,
		S_AXI_WSTRB	=> s_axi_lite_wstrb,
		S_AXI_WVALID	=> s_axi_lite_wvalid,
		S_AXI_WREADY	=> s_axi_lite_wready,
		S_AXI_BRESP	=> s_axi_lite_bresp,
		S_AXI_BVALID	=> s_axi_lite_bvalid,
		S_AXI_BREADY	=> s_axi_lite_bready,
		S_AXI_ARADDR	=> s_axi_lite_araddr,
		S_AXI_ARPROT	=> s_axi_lite_arprot,
		S_AXI_ARVALID	=> s_axi_lite_arvalid,
		S_AXI_ARREADY	=> s_axi_lite_arready,
		S_AXI_RDATA	=> s_axi_lite_rdata,
		S_AXI_RRESP	=> s_axi_lite_rresp,
		S_AXI_RVALID	=> s_axi_lite_rvalid,
		S_AXI_RREADY	=> s_axi_lite_rready,
        BASE_ADDRESS => paged_base_address,
        BASE_MASK => paged_base_mask
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
