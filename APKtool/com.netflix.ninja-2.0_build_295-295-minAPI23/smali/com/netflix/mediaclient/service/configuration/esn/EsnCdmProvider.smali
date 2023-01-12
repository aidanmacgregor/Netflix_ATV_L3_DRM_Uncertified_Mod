.class public Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;
.super Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
.source "EsnCdmProvider.java"


# static fields
.field private static final DASH:Ljava/lang/String; = "-"

.field private static final DEVICE_TYPE_PREFIX:Ljava/lang/String; = "PRV-"

.field private static final MODEL_GROUP_DEFAULT:Ljava/lang/String; = "0"


# instance fields
.field private mCdmModel:Ljava/lang/String;

.field private mCdmModelGroup:Ljava/lang/String;

.field private mDrmSystemId:Ljava/lang/String;

.field private mDrmUniqueDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;-><init>()V

    .line 34
    const-string v3, "0"

    iput-object v3, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelGroup:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 42
    .local v0, "drm":Landroid/media/MediaDrm;
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->getNetflixModelGroup()Ljava/lang/String;

    move-result-object v1

    const-string v3, "securityLevel"

    const-string v4, "L3"

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, "modelGroup":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceId(Landroid/media/MediaDrm;)[B

    move-result-object v2

    .line 45
    .local v2, "uniqueDeviceId":[B
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceType(Landroid/media/MediaDrm;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 48
    const/4 v0, 0x0

    .line 50
    if-nez v2, :cond_0

    .line 51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "MediaDrm.uniqueDeviceId is null! We can not use this ESN implementation!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    .line 54
    if-eqz v1, :cond_1

    .line 55
    iput-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelGroup:Ljava/lang/String;

    .line 57
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->findCdmModelId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModel:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static findCdmModelId()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x3

    .line 82
    const-string v2, "ESN"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MANUFACTURER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 88
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "ESN"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model was bigger than: 45. Using first 45 characters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->getManufactorer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->DELIM:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "id":Ljava/lang/String;
    const-string v2, "ESN"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "ESN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->validateChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected findDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmUniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected findModelId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mDrmSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoFactoryType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->ESN_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PRV-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;->mCdmModelGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
