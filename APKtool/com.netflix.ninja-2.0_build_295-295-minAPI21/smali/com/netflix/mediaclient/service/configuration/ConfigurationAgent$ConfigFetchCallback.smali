.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;
.super Ljava/lang/Object;
.source "ConfigurationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigFetchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processConfig(Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;)V
    .locals 4
    .param p1, "deviceConfigOverride"    # Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getDeviceConfigData()Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    const-string v1, "nf_configurationagent"

    const-string v2, "deviceConfig was never fetched.. stop"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->shutdownOnConfigError()V

    .line 145
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getDeviceConfigData()Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    move-result-object v0

    .line 130
    .local v0, "currentConfigData":Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    const-string v1, "nf_configurationagent"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const-string v1, "nf_configurationagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceConfigOverride: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    iget-boolean v1, v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceWhitelisted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->isDeviceBlacklisted:Z

    if-nez v1, :cond_3

    .line 138
    const-string v1, "nf_configurationagent"

    const-string v2, "device good to proceed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_3
    const-string v1, "nf_configurationagent"

    const-string v2, "device *not* good to proceed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DEVICE_NOT_PERMITTED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$002(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 144
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->shutdownOnConfigError()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 9
    .param p1, "status"    # Lcom/netflix/mediaclient/android/app/Status;
    .param p2, "configJsonString"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v6, "nf_configurationagent"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const-string v6, "nf_configurationagent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String response to parse = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v6, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$002(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;

    .line 96
    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->processConfig(Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;)V

    .line 118
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v2, 0x0

    .local v2, "jsonObj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 102
    .local v0, "deviceObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .local v3, "jsonObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "value"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    .local v5, "valueObj":Lorg/json/JSONObject;
    const-string v6, "deviceConfig"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v3

    .line 110
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v5    # "valueObj":Lorg/json/JSONObject;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    if-eqz v0, :cond_2

    .line 111
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    move-result-object v4

    .line 112
    .local v4, "newConfigData":Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;)V

    .line 117
    .end local v4    # "newConfigData":Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    :goto_2
    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->this$0:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-static {v6}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->processConfig(Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;)V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "nf_configurationagent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to parse = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "nf_configurationagent"

    const-string v7, "deviceConfig not present.. using cached data"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_3
.end method
