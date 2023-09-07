#!/system/bin/sh

#########################################################################
# E7, smartpa test
#########################################################################

#calibration configuration
setprop sys.spcali.test 0 
tinymix 74 2
sleep 6
test=`factorytest -t 25 -c /system/etc/tas2557evm.ftcfg  -m | grep "SPK Re"`

echo $test > /persist/smartpa_test.txt
setprop sys.spcali.test "$test" 
 
tinymix 74 0
