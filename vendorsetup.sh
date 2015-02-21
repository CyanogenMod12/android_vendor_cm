for combo in $(curl -s https://raw.githubusercontent.com/CyanogenMod12/manifest/cm-12.0/build-targets | sed -e 's/#.*$//' | grep cm-12.0 | awk {'print $1'})
do
    add_lunch_combo $combo
    sh device/huawei/msm7x27a-common/patches/apply.sh
    sh device/huawei/u8833/patches/apply.sh
done
