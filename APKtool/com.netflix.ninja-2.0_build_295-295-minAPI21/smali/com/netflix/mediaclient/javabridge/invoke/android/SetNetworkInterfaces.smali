.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetNetworkInterfaces.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setNetworkInterfaces"

.field private static final PROPERTY_interfaceName:Ljava/lang/String; = "interfaceName"

.field private static final PROPERTY_internetConnected:Ljava/lang/String; = "internetConnected"

.field private static final PROPERTY_ipv4Address:Ljava/lang/String; = "ipv4Address"

.field private static final PROPERTY_isDefault:Ljava/lang/String; = "isDefault"

.field private static final PROPERTY_linkConnected:Ljava/lang/String; = "linkConnected"

.field private static final PROPERTY_macAddress:Ljava/lang/String; = "macAddress"

.field private static final PROPERTY_mobileCarrier:Ljava/lang/String; = "mobileCarrier"

.field private static final PROPERTY_mobileCountryCode:Ljava/lang/String; = "mobileCountryCode"

.field private static final PROPERTY_mobileNetworkCode:Ljava/lang/String; = "mobileNetworkCode"

.field private static final PROPERTY_networkInterfaces:Ljava/lang/String; = "networkInterfaces"

.field private static final PROPERTY_physicalLayerSubType:Ljava/lang/String; = "physicalLayerSubType"

.field private static final PROPERTY_physicalLayerType:Ljava/lang/String; = "physicalLayerType"

.field private static final PROPERTY_ssid:Ljava/lang/String; = "ssid"

.field private static final PROPERTY_wirelessChannel:Ljava/lang/String; = "wirelessChannel"

.field private static final TAG:Ljava/lang/String; = "nf_invoke"

.field private static final TARGET:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v0, "android"

    const-string v1, "setNetworkInterfaces"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->setArguments(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private setArguments(Landroid/content/Context;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v12, 0x0

    .line 111
    .local v12, "jobj":Lorg/json/JSONObject;
    const/16 v20, 0x0

    .line 112
    .local v20, "ntwkInterfaces":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v11, "jArray":Lorg/json/JSONArray;
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkInterfaces(Landroid/content/Context;)[Landroid/net/NetworkInfo;

    move-result-object v19

    .line 115
    .local v19, "ntwkInfo":[Landroid/net/NetworkInfo;
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 118
    .local v3, "activeNetwork":Landroid/net/NetworkInfo;
    move-object/from16 v4, v19

    .local v4, "arr$":[Landroid/net/NetworkInfo;
    :try_start_0
    array-length v14, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v14, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move-object v13, v12

    .end local v12    # "jobj":Lorg/json/JSONObject;
    .local v13, "jobj":Lorg/json/JSONObject;
    :goto_0
    if-ge v9, v14, :cond_d

    :try_start_1
    aget-object v24, v4, v9

    .line 120
    .local v24, "r":Landroid/net/NetworkInfo;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v13    # "jobj":Lorg/json/JSONObject;
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    :try_start_2
    const-string v30, "interfaceName"

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecifcation(Landroid/content/Context;I)I

    move-result v23

    .line 125
    .local v23, "physicalType":I
    const-string v30, "physicalLayerType"

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    invoke-static/range {v24 .. v24}, Lcom/netflix/mediaclient/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/net/LogMobileType;

    move-result-object v26

    .line 128
    .local v26, "subType":Lcom/netflix/mediaclient/net/LogMobileType;
    invoke-static/range {v26 .. v26}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkSubTypePerLoggingSpecification(Lcom/netflix/mediaclient/net/LogMobileType;)I

    move-result v22

    .line 129
    .local v22, "physicalSubType":I
    const-string v30, "physicalLayerSubType"

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const/4 v7, 0x0

    .line 132
    .local v7, "defaultNtwk":Z
    const/4 v6, 0x0

    .line 135
    .local v6, "connected":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v30

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->getType()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v7, 0x1

    .line 137
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 138
    const/4 v6, 0x1

    .line 142
    :cond_0
    if-eqz v7, :cond_a

    .line 143
    const-string v30, "isDefault"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    if-eqz v6, :cond_9

    .line 145
    const-string v30, "linkConnected"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    :goto_1
    const-string v30, "internetConnected"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const/16 v25, 0x0

    .line 157
    .local v25, "ssid":Ljava/lang/String;
    const/4 v10, 0x0

    .line 158
    .local v10, "ipAddr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 161
    .local v15, "macAddress":Ljava/lang/String;
    const/16 v30, 0x4

    move/from16 v0, v30

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 162
    const-string v30, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/wifi/WifiManager;

    .line 163
    .local v29, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v29, :cond_4

    .line 164
    invoke-virtual/range {v29 .. v29}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v28

    .line 165
    .local v28, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v28, :cond_4

    .line 166
    const-string v30, "nf_invoke"

    const/16 v31, 0x3

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 167
    const-string v30, "nf_invoke"

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v30, "nf_invoke"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v25

    .line 171
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalWifiIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v15

    .line 174
    if-eqz v25, :cond_2

    .line 175
    const-string v30, "ssid"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_2
    if-eqz v15, :cond_3

    .line 179
    const-string v30, "macAddress"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_3
    const-string v30, "wirelessChannel"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    .end local v28    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v29    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_2
    if-eqz v10, :cond_5

    .line 191
    const-string v30, "ipv4Address"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_5
    invoke-static/range {v23 .. v23}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->carrierInfoNeeded(I)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 195
    const-string v5, ""

    .line 196
    .local v5, "carrier":Ljava/lang/String;
    const-string v16, ""

    .line 197
    .local v16, "mcc":Ljava/lang/String;
    const-string v17, ""

    .line 198
    .local v17, "mnc":Ljava/lang/String;
    const-string v30, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 199
    .local v27, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v27, :cond_7

    .line 200
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v18

    .line 202
    .local v18, "networkOperator":Ljava/lang/String;
    const-string v30, "nf_invoke"

    const/16 v31, 0x3

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 203
    const-string v30, "nf_invoke"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "networkOperator: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_6
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 206
    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 207
    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 208
    const-string v30, "nf_invoke"

    const/16 v31, 0x3

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 209
    const-string v30, "nf_invoke"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mcc: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v30, "nf_invoke"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mnc: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v18    # "networkOperator":Ljava/lang/String;
    :cond_7
    :goto_3
    const-string v30, "mobileCarrier"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v30, "mobileCountryCode"

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v30, "mobileNetworkCode"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "mnc":Ljava/lang/String;
    .end local v27    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v9, v9, 0x1

    move-object v13, v12

    .end local v12    # "jobj":Lorg/json/JSONObject;
    .restart local v13    # "jobj":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 147
    .end local v10    # "ipAddr":Ljava/lang/String;
    .end local v13    # "jobj":Lorg/json/JSONObject;
    .end local v15    # "macAddress":Ljava/lang/String;
    .end local v25    # "ssid":Ljava/lang/String;
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    :cond_9
    const-string v30, "linkConnected"

    const/16 v31, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 227
    .end local v6    # "connected":Z
    .end local v7    # "defaultNtwk":Z
    .end local v9    # "i$":I
    .end local v14    # "len$":I
    .end local v22    # "physicalSubType":I
    .end local v23    # "physicalType":I
    .end local v24    # "r":Landroid/net/NetworkInfo;
    .end local v26    # "subType":Lcom/netflix/mediaclient/net/LogMobileType;
    :catch_0
    move-exception v8

    .line 228
    .local v8, "e":Lorg/json/JSONException;
    :goto_4
    const-string v30, "nf_invoke"

    const-string v31, "Failed to create JSON object"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_5
    return-void

    .line 150
    .restart local v6    # "connected":Z
    .restart local v7    # "defaultNtwk":Z
    .restart local v9    # "i$":I
    .restart local v14    # "len$":I
    .restart local v22    # "physicalSubType":I
    .restart local v23    # "physicalType":I
    .restart local v24    # "r":Landroid/net/NetworkInfo;
    .restart local v26    # "subType":Lcom/netflix/mediaclient/net/LogMobileType;
    :cond_a
    :try_start_3
    const-string v30, "isDefault"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    const-string v30, "linkConnected"

    const/16 v31, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 187
    .restart local v10    # "ipAddr":Ljava/lang/String;
    .restart local v15    # "macAddress":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getLocalMobileIP4Address(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 213
    .restart local v5    # "carrier":Ljava/lang/String;
    .restart local v16    # "mcc":Ljava/lang/String;
    .restart local v17    # "mnc":Ljava/lang/String;
    .restart local v18    # "networkOperator":Ljava/lang/String;
    .restart local v27    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v30, "nf_invoke"

    const-string v31, "Network operator less than 4 characters!"

    invoke-static/range {v30 .. v31}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 223
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v6    # "connected":Z
    .end local v7    # "defaultNtwk":Z
    .end local v10    # "ipAddr":Ljava/lang/String;
    .end local v12    # "jobj":Lorg/json/JSONObject;
    .end local v15    # "macAddress":Ljava/lang/String;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "mnc":Ljava/lang/String;
    .end local v18    # "networkOperator":Ljava/lang/String;
    .end local v22    # "physicalSubType":I
    .end local v23    # "physicalType":I
    .end local v24    # "r":Landroid/net/NetworkInfo;
    .end local v25    # "ssid":Ljava/lang/String;
    .end local v26    # "subType":Lcom/netflix/mediaclient/net/LogMobileType;
    .end local v27    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v13    # "jobj":Lorg/json/JSONObject;
    :cond_d
    :try_start_4
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 224
    .end local v20    # "ntwkInterfaces":Lorg/json/JSONObject;
    .local v21, "ntwkInterfaces":Lorg/json/JSONObject;
    :try_start_5
    const-string v30, "networkInterfaces"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->arguments:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v20, v21

    .end local v21    # "ntwkInterfaces":Lorg/json/JSONObject;
    .restart local v20    # "ntwkInterfaces":Lorg/json/JSONObject;
    move-object v12, v13

    .line 229
    .end local v13    # "jobj":Lorg/json/JSONObject;
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    goto :goto_5

    .line 227
    .end local v12    # "jobj":Lorg/json/JSONObject;
    .restart local v13    # "jobj":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v12, v13

    .end local v13    # "jobj":Lorg/json/JSONObject;
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    goto :goto_4

    .end local v12    # "jobj":Lorg/json/JSONObject;
    .end local v20    # "ntwkInterfaces":Lorg/json/JSONObject;
    .restart local v13    # "jobj":Lorg/json/JSONObject;
    .restart local v21    # "ntwkInterfaces":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    move-object/from16 v20, v21

    .end local v21    # "ntwkInterfaces":Lorg/json/JSONObject;
    .restart local v20    # "ntwkInterfaces":Lorg/json/JSONObject;
    move-object v12, v13

    .end local v13    # "jobj":Lorg/json/JSONObject;
    .restart local v12    # "jobj":Lorg/json/JSONObject;
    goto :goto_4
.end method
