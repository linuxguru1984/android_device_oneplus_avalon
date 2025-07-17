# Build for twrp 12.1 sources:


    export ALLOW_MISSING_DEPENDENCIES=true

    . build/envsetup.sh
    
    lunch twrp_avalon-eng
    
    mka recoveryimage -j8
