.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnLegacyProvider.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getIMEA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1
    if-nez v0, :cond_2

    .line 50
    const-string v1, "ESN"

    const-string v2, "Device ID not found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "UKNOWN"

    .line 59
    :goto_0
    return-object v1

    .line 54
    :cond_2
    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v1, "ESN"

    const-string v2, "Emulator"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, "1012UAR71QB0A91"

    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->DELIM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->findBaseModelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoFactoryType()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnLegacyProvider;->ESN_PREFIX:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
