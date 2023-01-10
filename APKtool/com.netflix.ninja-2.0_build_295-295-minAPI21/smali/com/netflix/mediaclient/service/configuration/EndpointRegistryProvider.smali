.class public Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;
.super Ljava/lang/Object;
.source "EndpointRegistryProvider.java"


# static fields
.field private static final CONFIG_DEVICE_PQL:Ljava/lang/String; = "[\'deviceConfig\']"

.field private static final ENDPOINT_REQ_TYPE_GET:Ljava/lang/String; = "&method=get"

.field private static final ENDPOINT_RESP_AUTO_REDIRECT:Ljava/lang/String; = "&routing=redirect"

.field private static final ENDPOINT_RESP_FORMAT:Ljava/lang/String; = "responseFormat=json&progressive=false"

.field private static final ENDPOINT_RESP_MANUAL_REDIRECT:Ljava/lang/String; = "&routing=reject"

.field private static final ENDPOINT_REVISION_LATEST:Ljava/lang/String; = "&revision=latest"

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final NETFLIX_EDGE_AUTO_REDIRECT_TRUE:Z = true

.field private static final NINJA_CONFIG_PROD_ENDPOINT_FULL:Ljava/lang/String; = "/android/ninja/config"

.field private static final PARAM_API_LEVEL:Ljava/lang/String; = "api"

.field private static final PARAM_APK_VERSION:Ljava/lang/String; = "appVer"

.field private static final PARAM_APK_VERSION_NAME:Ljava/lang/String; = "appVerName"

.field private static final PARAM_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final PARAM_BUILD_BOARD:Ljava/lang/String; = "osBoard"

.field private static final PARAM_BUILD_CPU:Ljava/lang/String; = "osCpu"

.field private static final PARAM_BUILD_DEVICE:Ljava/lang/String; = "osDevice"

.field private static final PARAM_BUILD_DISPLAY:Ljava/lang/String; = "osDisplay"

.field private static final PARAM_BUILD_FINGERPRINT:Ljava/lang/String; = "osFingerprint"

.field private static final PARAM_BUILD_PRODUCT:Ljava/lang/String; = "osProduct"

.field private static final PARAM_DEBUG_BUILD:Ljava/lang/String; = "dbg"

.field private static final PARAM_ESN:Ljava/lang/String; = "esn"

.field private static final PARAM_MANUFACTURER:Ljava/lang/String; = "mnf"

.field private static final PARAM_MODEL_ID:Ljava/lang/String; = "mId"

.field private static final PARAM_NETFLIX_MODEL_GROUP:Ljava/lang/String; = "modelgroup"

.field private static final PARAM_NETFLIX_OEM_MODEL:Ljava/lang/String; = "oemmodel"

.field private static final PARAM_PQL_PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "nf_configuration_endpoint"

.field private static final VALUE_APP_TYPE:Ljava/lang/String; = "ninja"

.field private static final WEBCLIENT_ENDPOINT:Ljava/lang/String; = "api-global.netflix.com"


# instance fields
.field private mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field private mConfigEndpointUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEndpointHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "api-global.netflix.com"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private buildConfigUrl(Z)Ljava/lang/String;
    .locals 5
    .param p1, "withAutoRedirect"    # Z

    .prologue
    .line 72
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/ninja/NetflixService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/ninja/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/ninja/NetflixService;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    if-nez v3, :cond_2

    .line 75
    :cond_0
    const-string v3, "nf_configuration_endpoint"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "service null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :cond_1
    const/4 v3, 0x0

    .line 122
    :goto_0
    return-object v3

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mEndpointHost:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, "/android/ninja/config"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, "responseFormat=json&progressive=false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, "&method=get"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-eqz p1, :cond_4

    const-string v3, "&routing=redirect"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getService()Lcom/netflix/ninja/NetflixService;

    move-result-object v2

    .line 96
    .local v2, "service":Lcom/netflix/ninja/NetflixService;
    invoke-virtual {v2}, Lcom/netflix/ninja/NetflixService;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    .line 98
    .local v1, "esnProvider":Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    const-string v3, "appType"

    const-string v4, "ninja"

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "mnf"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "mId"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getModelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "appVer"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getAppVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v3, "appVerName"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, "api"

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "modelgroup"

    invoke-static {}, Lcom/netflix/ninja/NetflixService;->getNetflixModelGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "oemmodel"

    invoke-static {}, Lcom/netflix/ninja/NetflixService;->getNetflixOemModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "esn"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, "osBoard"

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v3, "osDevice"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "osDisplay"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v3, "osFingerprint"

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, "osCpu"

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v3, "osProduct"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 85
    .end local v1    # "esnProvider":Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .end local v2    # "service":Lcom/netflix/ninja/NetflixService;
    :cond_3
    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 93
    :cond_4
    const-string v3, "&routing=reject"

    goto/16 :goto_2
.end method

.method private buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/UriUtil;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfigUrlFull()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildConfigUrl(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "path"

    const-string v3, "[\'deviceConfig\']"

    invoke-static {v3}, Lcom/netflix/mediaclient/util/UriUtil;->urlEncodeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->buildUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    .local v0, "fullUrl":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public init(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;)V
    .locals 0
    .param p1, "configurationAgent"    # Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->mConfigAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 68
    return-void
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method
