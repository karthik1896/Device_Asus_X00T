cp device/asus/X00T/patches/0001-audio-hal-restore-tfa98xx-logic-for-asus-X00T.patch hardware/qcom/audio-caf/msm8998/tfa.patch
cd hardware/qcom/audio-caf/msm8998
git apply -p1 < tfa.patch > /dev/null 2>&1
