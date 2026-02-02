# cat tja_phy_reg.sh 

echo "DEVICE IDENTIFIER MMD30 4h => 1091h"
./arm_mdio_rw eth0 30 0x4
echo ""


echo "PORT_IRQ_STATUS MMD30 70h"
./arm_mdio_rw eth0 30 0x70
echo ""

echo "GLOBAL_CAT_IRQ_STATUS MMD30 80h"
./arm_mdio_rw eth0 30 0x80
echo ""


echo "PORT_FUNC_IRQ_STATUS shared (1) 8078h"
./arm_mdio_rw eth0 1 0x8078
echo ""


echo "PORT_IRQ_MSTATUS MMD30 74h"
./arm_mdio_rw eth0 30 0x74
echo ""
 
echo "GLOBAL_CAT_IRQ_MSTATUS MMD30 82h"
./arm_mdio_rw eth0 30 0x82
echo ""
 
echo "OP_CONDITIONS_IRQ_MSTATUS MMD30 92h"
./arm_mdio_rw eth0 30 0x92
echo ""
 
echo "TOP_EPHY_IRQ_MSTATUS MMD30 A2h"
./arm_mdio_rw eth0 30 0xA2
echo ""
 
echo "CONFIG_REGXS_IRQ_MSTATUS MMD30 C2h"
./arm_mdio_rw eth0 30 0xC2
echo ""
 
echo "PTP_IRQ_MSTATUS MMD30 1132h"
./arm_mdio_rw eth0 30 0x1132
echo ""
 
echo "INFRA_IRQ_MSTATUS MMD30 AC0Ch"
./arm_mdio_rw eth0 30 0xAC0C
echo ""

echo "## SGMII ##"
echo "SGMII IRQ STATUS MMD30 B016h"
./arm_mdio_rw eth0 30 0xB016
echo ""



echo "## IRQ ENABLE ##"
echo "## Reg: page-73 ##"
echo "GLOBAL_CAT_IRQ_ENABLE 30 81h (p85)"

./arm_mdio_rw eth0 30 0x72

./arm_mdio_rw eth0 30 0x81

./arm_mdio_rw eth0 30 0x91
./arm_mdio_rw eth0 30 0xa1
./arm_mdio_rw eth0 30 0xb1
./arm_mdio_rw eth0 30 0xc1
./arm_mdio_rw eth0 30 0x1131
./arm_mdio_rw eth0 30 0xac0a
./arm_mdio_rw eth0 30 0xb015
echo "--- END IRQ ENABLE ##"

echo "## IRQ SOURCE ##"
./arm_mdio_rw eth0 30 0x90
./arm_mdio_rw eth0 30 0xA0
./arm_mdio_rw eth0 30 0xB0
./arm_mdio_rw eth0 30 0xC0
./arm_mdio_rw eth0 30 0x1130
./arm_mdio_rw eth0 30 0xAC08
./arm_mdio_rw eth0 30 0xB014

echo "##Page 163 shared ##"
./arm_mdio_rw eth0 1 0x8070
./arm_mdio_rw eth0 1 0x8080
./arm_mdio_rw eth0 1 0x80A0
./arm_mdio_rw eth0 1 0x80C0
./arm_mdio_rw eth0 1 0x80D0

echo "--"
./arm_mdio_rw eth0 30 0xB016

echo "--"
echo "from 8070 PORT_LEVEL_IRQ_SOURCE"
echo "   |-> EPHY_CLK_STATUS 1 831Eh"
echo "   |-> TXC_STATUS      1 8319h"
./arm_mdio_rw eth0 1 0x831E
./arm_mdio_rw eth0 1 0x8319

echo "--"
echo "from 80a0 EPHY_FUNCTIONAL_IRQ_SOURCE"

echo "--"
echo "OSC_STATUS 30 31E"
./arm_mdio_rw eth0 30 0x31E
echo "--"

