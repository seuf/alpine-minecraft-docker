cd /usr/share/minecraft;
#java -Xmx2048M -Xms2048M -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9999 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -jar minecraft_server.jar nogui
java \
  -Xmx2048M \
  -Xms2048M \
  -Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=9999 \
  -Dcom.sun.management.jmxremote.local.only=false \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.ssl=false \
  -server \
  -d64 \
  -Xrs \
  -XX:+UseG1GC \
  -XX:MaxGCPauseMillis=500 \
  -XX:+PrintGCTimeStamps \
  -Djava.awt.headless=true \
  -XX:+ExplicitGCInvokesConcurrent \
  -XX:+ParallelRefProcEnabled \
  -XX:+UseStringDeduplication \
  -XX:+UnlockExperimentalVMOptions\
  -XX:G1NewSizePercent=20\
  -XX:+UnlockDiagnosticVMOptions\
  -XX:G1SummarizeRSetStatsPeriod=1\
  -XX:MaxMetaspaceSize=1024m\
  -XX:NativeMemoryTracking=summary\
  -XX:+CMSClassUnloadingEnabled\
  -XX:MaxDirectMemorySize=2G\
  -XX:+UnsyncloadClass\
  -Djava.net.preferIPv4Stack=true\
  -XX:+UseCGroupMemoryLimitForHeap\
  -jar minecraft_server.jar nogui
