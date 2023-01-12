.class public final Lcom/netflix/mediaclient/util/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    }
.end annotation


# static fields
.field public static final INTERFACE_TYPE_MOBILE:Ljava/lang/String; = "MOBILE"

.field public static final INTERFACE_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final NETWORK_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final NETWORK_TYPE_CDMA:Ljava/lang/String; = "cdma"

.field public static final NETWORK_TYPE_GSM:Ljava/lang/String; = "gsm"

.field public static final NETWORK_TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final NETWORK_TYPE_WIMAX:Ljava/lang/String; = "wimax"

.field public static final NETWORK_TYPE_WIRED:Ljava/lang/String; = "wired"

.field public static final NRD_NTWK_CDMA:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_CONNECTED:I = 0x1

.field public static final NRD_NTWK_CONN_STATE_DISCONNECTED:I = 0x2

.field public static final NRD_NTWK_CONN_STATE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_GSM:I = 0x1

.field public static final NRD_NTWK_MOBILE:I = 0x0

.field public static final NRD_NTWK_SUBTYPE_1000MBPS_ETH:I = 0xa

.field public static final NRD_NTWK_SUBTYPE_100MBPS_ETH:I = 0x9

.field public static final NRD_NTWK_SUBTYPE_10MBPS_ETH:I = 0x8

.field public static final NRD_NTWK_SUBTYPE_2G:I = 0x1

.field public static final NRD_NTWK_SUBTYPE_3G:I = 0x2

.field public static final NRD_NTWK_SUBTYPE_4G:I = 0x3

.field public static final NRD_NTWK_SUBTYPE_802_11A:I = 0x4

.field public static final NRD_NTWK_SUBTYPE_802_11B:I = 0x5

.field public static final NRD_NTWK_SUBTYPE_802_11G:I = 0x6

.field public static final NRD_NTWK_SUBTYPE_802_11N:I = 0x7

.field public static final NRD_NTWK_SUBTYPE_UNKNOWN:I = 0x0

.field public static final NRD_NTWK_WIFI:I = 0x4

.field public static final NRD_NTWK_WIMAX:I = 0x3

.field public static final NRD_NTWK_WIRED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "nf_net"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static carrierInfoNeeded(I)Z
    .locals 2
    .param p0, "netType"    # I

    .prologue
    const/4 v0, 0x0

    .line 258
    const/4 v1, 0x4

    if-ne v1, p0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const/4 v1, 0x3

    if-eq v1, p0, :cond_0

    .line 262
    const/4 v1, 0x5

    if-eq v1, p0, :cond_0

    .line 265
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static carrierInfoNeeded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    const-string v1, "wifi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    const-string v1, "wimax"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "wired"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const-string v1, "bluetooth"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 187
    if-nez p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v1

    .line 191
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 192
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocalIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    const/4 v2, 0x0

    .line 462
    :goto_0
    return-object v2

    .line 451
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 452
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 453
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 457
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    const-string v2, "nf_net"

    const-string v3, "Local active network interface is WiFi"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 461
    :cond_2
    const-string v2, "nf_net"

    const-string v3, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 389
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, "wifi":Ljava/lang/String;
    const-string v8, "nf_net"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    const-string v8, "nf_net"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exclude wifi if exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 395
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v0, :cond_2

    move-object v5, v7

    .line 437
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v6    # "wifi":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 399
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v6    # "wifi":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 401
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 402
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 403
    const-string v8, "nf_net"

    const-string v9, "NI is loopback, skip"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v6    # "wifi":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 435
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v8, "nf_net"

    const-string v9, "Failed to get IP address"

    invoke-static {v8, v9, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v5, v7

    .line 437
    goto :goto_0

    .line 406
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v6    # "wifi":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 407
    const-string v8, "nf_net"

    const-string v9, "NI is virtual, skip"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 410
    :cond_5
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v8

    if-nez v8, :cond_6

    .line 411
    const-string v8, "nf_net"

    const-string v9, "NI is not up, skip"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    :cond_6
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 416
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 417
    .local v3, "inetAddress":Ljava/net/InetAddress;
    const-string v8, "nf_net"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_7

    instance-of v8, v3, Ljava/net/Inet4Address;

    if-eqz v8, :cond_7

    .line 419
    const-string v8, "nf_net"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 420
    const-string v8, "nf_net"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Check if it is WiFi address."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_8
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "mobile":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 425
    const-string v8, "nf_net"

    const-string v9, "WiFi interface found in all network interaces, skip!"

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 362
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 363
    :cond_0
    const/4 v3, 0x0

    .line 371
    :goto_0
    return-object v3

    .line 366
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 367
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 371
    .local v0, "ipv4Address":I
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p0, :cond_1

    .line 160
    :cond_0
    return-object v1

    .line 134
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 140
    .local v5, "ntwkList":[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, "validInterfaces":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_3

    .line 147
    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v2

    invoke-static {v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    add-int/lit8 v6, v6, 0x1

    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_3
    const/4 v1, 0x0

    .line 152
    .local v1, "filteredNtwkList":[Landroid/net/NetworkInfo;
    if-lez v6, :cond_0

    .line 153
    new-array v1, v6, [Landroid/net/NetworkInfo;

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 155
    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v7, v5, v2

    invoke-static {v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 156
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-object v7, v5, v2

    aput-object v7, v1, v3

    move v3, v4

    .line 154
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getNetworkState(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 475
    if-nez p0, :cond_0

    .line 476
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v6, v6, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 502
    :goto_0
    return-object v4

    .line 478
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 479
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 480
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v6, v6, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 483
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_3

    .line 484
    :cond_2
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v6, v6, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, "WIFI"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 488
    const-string v4, "nf_net"

    const-string v5, "Local active network interface is WiFi"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 490
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_4

    .line 491
    const-string v4, "nf_net"

    const-string v5, "WiFi manager is not available!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v6, v6, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_4
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 495
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_5

    .line 496
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v8, v8, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_5
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v8, v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v1    # "manager":Landroid/net/wifi/WifiManager;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    const-string v4, "nf_net"

    const-string v5, "Local active network interface is Mobile (it also covers everything else)."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v4, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    invoke-direct {v4, v8, v6, v7}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/net/LogMobileType;)I
    .locals 2
    .param p0, "subType"    # Lcom/netflix/mediaclient/net/LogMobileType;

    .prologue
    const/4 v0, 0x0

    .line 236
    if-nez p0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_3G:Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    const/4 v0, 0x2

    goto :goto_0

    .line 244
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->_4G:Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    const/4 v0, 0x3

    goto :goto_0

    .line 246
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/net/LogMobileType;->WIFI:Lcom/netflix/mediaclient/net/LogMobileType;

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/net/LogMobileType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "netType"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    if-nez p0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 216
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 217
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_0
    const/4 v1, 0x5

    goto :goto_0

    .line 211
    :sswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 213
    :sswitch_2
    const/4 v1, 0x4

    goto :goto_0

    .line 221
    .restart local v0    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 277
    const-string v3, ""

    .line 312
    :goto_0
    return-object v3

    .line 280
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 282
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 286
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_3

    .line 287
    const-string v3, ""

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 301
    :pswitch_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 302
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_4

    .line 304
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 312
    :cond_4
    const-string v3, "mobile"

    goto :goto_0

    .line 292
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_1
    const-string v3, "wired"

    goto :goto_0

    .line 294
    :pswitch_2
    const-string v3, "wimax"

    goto :goto_0

    .line 296
    :pswitch_3
    const-string v3, "wifi"

    goto :goto_0

    .line 298
    :pswitch_4
    const-string v3, "bluetooth"

    goto :goto_0

    .line 306
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_5
    const-string v3, "cdma"

    goto :goto_0

    .line 308
    :pswitch_6
    const-string v3, "gsm"

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 304
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v2

    .line 91
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 96
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 119
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_0
.end method

.method public static isNRDPSupportedInterface(Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "ntwkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 178
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNetworkTypeCellular(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "netType":Ljava/lang/String;
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 v1, 0x1

    .line 326
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static processConnectivityChange(Landroid/content/Context;Landroid/content/Intent;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x3

    .line 513
    const-string v10, "nf_net"

    const-string v11, "Handle connectivity change, process..."

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v10, "nf_net"

    invoke-static {v10, p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 516
    const/4 v1, 0x0

    .line 517
    .local v1, "connected":Z
    const/4 v4, 0x0

    .line 518
    .local v4, "mobile":Z
    const/4 v2, 0x0

    .line 520
    .local v2, "currentConnectionType":Lcom/netflix/mediaclient/net/LogMobileType;
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 521
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    .line 522
    .local v5, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 526
    :cond_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 527
    const-string v10, "nf_net"

    const-string v11, "Connect intent"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {v5}, Lcom/netflix/mediaclient/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/net/LogMobileType;

    move-result-object v2

    .line 529
    const-string v10, "nf_net"

    const-string v11, "Network changed, find limit"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x1

    .line 536
    :goto_0
    const/4 v6, 0x0

    .line 537
    .local v6, "ssid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 539
    .local v3, "ipAddr":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 541
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v10, "WIFI"

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 543
    const/4 v4, 0x0

    .line 544
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 545
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v9, :cond_2

    .line 546
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 547
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_2

    .line 548
    const-string v10, "nf_net"

    invoke-static {v10, v13}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 549
    const-string v10, "nf_net"

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v10, "nf_net"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_1
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 570
    const-string v6, ""

    .line 573
    :cond_3
    const-string v10, "nf_net"

    invoke-static {v10, v13}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 574
    const-string v10, "nf_net"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LocalIPAddress:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_4
    new-instance v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;

    if-nez v4, :cond_8

    const/4 v10, 0x1

    :goto_2
    invoke-direct {v7, v1, v10, v6}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;-><init>(ZZLjava/lang/String;)V

    .line 578
    .local v7, "state":Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    iput-object v2, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->currentConnectionType:Lcom/netflix/mediaclient/net/LogMobileType;

    .line 579
    iput-object v3, v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;->ipAddr:Ljava/lang/String;

    .line 580
    return-object v7

    .line 533
    .end local v3    # "ipAddr":Ljava/lang/String;
    .end local v6    # "ssid":Ljava/lang/String;
    .end local v7    # "state":Lcom/netflix/mediaclient/util/ConnectivityUtils$NetworkState;
    :cond_5
    const-string v10, "nf_net"

    const-string v11, "Disconnect intent"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 558
    .restart local v3    # "ipAddr":Ljava/lang/String;
    .restart local v6    # "ssid":Ljava/lang/String;
    :cond_6
    const-string v10, "nf_net"

    const-string v11, "Not wifi"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v4, 0x1

    .line 560
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 564
    :cond_7
    const-string v10, "nf_net"

    const-string v11, "Intent does not have network info. It should NOT happen!"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v4, 0x1

    .line 566
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 577
    :cond_8
    const/4 v10, 0x0

    goto :goto_2
.end method
