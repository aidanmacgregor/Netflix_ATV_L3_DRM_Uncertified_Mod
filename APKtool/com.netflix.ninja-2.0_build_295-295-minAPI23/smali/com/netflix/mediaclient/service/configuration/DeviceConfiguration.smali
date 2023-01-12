.class public Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mDeviceConfigData:Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "nf_configuration_device"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    .line 25
    const-string v1, "nf_device_config"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "deviceConfigInPref":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->fromString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "Clearing device configuration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "nf_device_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    return-void
.end method

.method public getDeviceConfigData()Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    return-object v0
.end method

.method public persistDeviceConfigOverride(Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;)V
    .locals 4
    .param p1, "deviceConfigData"    # Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "deviceConfigDataToPref":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "nf_device_config"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->mDeviceConfigData:Lcom/netflix/mediaclient/service/configuration/DeviceConfigData;

    .line 42
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persisting deviceConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    return-void
.end method
