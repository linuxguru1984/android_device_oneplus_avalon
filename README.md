# How to build:


    export ALLOW_MISSING_DEPENDENCIES=true

    . build/envsetup.sh
    
    lunch twrp_avalon-eng
    
    mka recoveryimage -j1
