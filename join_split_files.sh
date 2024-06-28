#!/bin/bash

cat system/app/Chrome/Chrome.apk.* 2>/dev/null >> system/app/Chrome/Chrome.apk
rm -f system/app/Chrome/Chrome.apk.* 2>/dev/null
cat system/priv-app/Browser/Browser.apk.* 2>/dev/null >> system/priv-app/Browser/Browser.apk
rm -f system/priv-app/Browser/Browser.apk.* 2>/dev/null
cat system/priv-app/Velvet/Velvet.apk.* 2>/dev/null >> system/priv-app/Velvet/Velvet.apk
rm -f system/priv-app/Velvet/Velvet.apk.* 2>/dev/null
cat cust/app/customized/partner-com.facebook.katana/partner-com.facebook.katana.apk.* 2>/dev/null >> cust/app/customized/partner-com.facebook.katana/partner-com.facebook.katana.apk
rm -f cust/app/customized/partner-com.facebook.katana/partner-com.facebook.katana.apk.* 2>/dev/null
cat .git/objects/pack/pack-b5076d25cf080b6f45afa86257111c180e94b1a1.pack.* 2>/dev/null >> .git/objects/pack/pack-b5076d25cf080b6f45afa86257111c180e94b1a1.pack
rm -f .git/objects/pack/pack-b5076d25cf080b6f45afa86257111c180e94b1a1.pack.* 2>/dev/null
