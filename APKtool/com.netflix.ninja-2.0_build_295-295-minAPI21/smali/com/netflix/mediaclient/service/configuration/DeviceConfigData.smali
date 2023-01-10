.class public Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
.super Ljava/lang/Object;
.source "DeviceConfigData.java"


# static fields
.field private static final DEVICE_CONFIG_BLACKLISTED:Ljava/lang/String; = "blacklisted"

.field private static final DEVICE_CONFIG_WHITELISTED:Ljava/lang/String; = "whitelisted"

.field private static final TAG:Ljava/lang/String; = "nf_config"


# instance fields
.field public isDeviceBlacklisted:Z

.field public isDeviceWhitelisted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    .locals 5
    .param p0, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;-><init>()V

    .line 50
    .local v0, "deviceConfigData":Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    :try_start_0
    const-string v2, "whitelisted"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceWhitelisted:Z

    .line 51
    const-string v2, "blacklisted"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceBlacklisted:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "nf_config"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not create object from json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "nf_config"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    .locals 5
    .param p0, "deviceConfigOverride"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 40
    :goto_0
    return-object v2

    .line 28
    :cond_0
    const-string v2, "nf_config"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const-string v2, "nf_config"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 34
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 40
    :goto_1
    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "nf_config"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const-string v0, "{\"%s\":%b, \"%s\":%b}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "whitelisted"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceWhitelisted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "blacklisted"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceBlacklisted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
