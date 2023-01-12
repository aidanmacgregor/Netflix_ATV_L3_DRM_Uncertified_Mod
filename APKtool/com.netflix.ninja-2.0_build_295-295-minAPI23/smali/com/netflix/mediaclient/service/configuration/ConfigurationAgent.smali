.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "ConfigurationAgent.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0xbb8

.field private static final NCCP_AUTH_NTBA:Ljava/lang/String; = "ntba"

.field private static final TAG:Ljava/lang/String; = "nf_configurationagent"


# instance fields
.field private mAppVersionCode:I

.field private mConfigStatus:Lcom/netflix/mediaclient/android/app/Status;

.field private mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

.field private mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;
    .param p1, "x1"    # Lcom/netflix/mediaclient/android/app/Status;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    return-object v0
.end method

.method private getNccpAuthType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-string v0, "nf_nccp_auth_type"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setNccpAuthType(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string v0, "nf_nccp_auth_type"

    const-string v1, "ntba"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 80
    return-void
.end method

.method protected doInit()V
    .locals 7

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    .local v2, "context":Landroid/content/Context;
    new-instance v4, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-direct {v4, v2}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mDeviceConfigOverride:Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    .line 55
    invoke-static {v2}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    .line 56
    const-string v4, "nf_configurationagent"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "nf_configurationagent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current app version code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getNccpAuthType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "authTypeInPref":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "ntba"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    :cond_1
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->setNccpAuthType(Landroid/content/Context;)V

    .line 67
    :cond_2
    new-instance v4, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-direct {v4, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    .line 68
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-virtual {v4, p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->init(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    .line 70
    new-instance v1, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;-><init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V

    .line 71
    .local v1, "configFetchCallback":Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;
    new-instance v3, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-direct {v3, v4, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;-><init>(Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;)V

    .line 72
    .local v3, "task":Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->execute([Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 74
    return-void
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mAppVersionCode:I

    return v0
.end method

.method public getConfigStatus()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->mConfigStatus:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
