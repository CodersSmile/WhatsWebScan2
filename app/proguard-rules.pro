# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-keepclassmembers class  com.whatsweb.whatswebscanner.gbwhats.gb_local.gb_model.* { *; }
-keepclassmembers class  com.whatsweb.whatswebscanner.gbwhats.gb_in.gb_CountryModal.*{ *; }
# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}
-keep public class com.google.android.gms.* { public protected *; }

-dontwarn okio.**
-keepattributes InnerClasses
-dontwarn sun.misc.**
-dontwarn java.lang.invoke.**
-dontwarn okhttp3.**
-dontwarn com.anchorfree.sdk.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
#DNSJava
-keep class org.xbill.DNS.** {*;}
-dontnote org.xbill.DNS.spi.DNSJavaNameServiceDescriptor
-dontwarn org.xbill.DNS.spi.DNSJavaNameServiceDescriptor
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer
-keep class com.anchorfree.sdk.SessionConfig { *; }
-keep class com.anchorfree.sdk.fireshield.** { *; }
-keep class com.anchorfree.sdk.dns.** { *; }
-keep class com.anchorfree.sdk.HydraSDKConfig { *; }
-keep class com.anchorfree.partner.api.ClientInfo { *; }
-keep class com.anchorfree.sdk.NotificationConfig { *; }
-keep class com.anchorfree.sdk.NotificationConfig$Builder { *; }
-keep class com.anchorfree.sdk.NotificationConfig$StateNotification { *; }
-keepclassmembers public class com.anchorfree.ucr.transport.DefaultTrackerTransport {
   public <init>(...);
 }
 -keepclassmembers class com.anchorfree.ucr.SharedPrefsStorageProvider{
    public <init>(...);
 }
 -keepclassmembers class com.anchorfree.sdk.InternalReporting$InternalTrackingTransport{
 public <init>(...);
 }
 -keep class com.anchorfree.sdk.exceptions.* {
    *;
}
-keepclassmembers class * implements javax.net.ssl.SSLSocketFactory {
    final javax.net.ssl.SSLSocketFactory delegate;
}
# https://stackoverflow.com/questions/56142150/fatal-exception-java-lang-nullpointerexception-in-release-build
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}
