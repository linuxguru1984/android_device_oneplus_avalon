# Build for OrangeFox 14.1 sources:

    /bin/bash

    export ALLOW_MISSING_DEPENDENCIES=true FOX_BUILD_DEVICE=avalon LC_ALL="C"

    source build/envsetup.sh

    lunch twrp_avalon-ap2a-eng

    mka adbd recoveryimage -j8


# Build for twrp 12.1 sources:


    export ALLOW_MISSING_DEPENDENCIES=true

    source build/envsetup.sh
    
    lunch twrp_avalon-eng
    
    mka recoveryimage -j8
