#!/bin/bash -e

cd /tmpfiles/Xilinx_Vivado_SDK_${VERSION}_*
./xsetup -l ${VIVADO_BASE} -b Install -c /tmp/webpack_config.txt -a XilinxEULA,3rdPartyEULA,WebTalkTerms

mkdir -p ${VIVADO_MODULEFILES}
cat <<EOF > ${VIVADO_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${VIVADO_BASE}/Vivado/${VERSION}/bin
EOF
