.class public Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;
.super Ljava/lang/Object;
.source "MSLWidevineDrmManager.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;
.implements Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;
    }
.end annotation


# static fields
.field public static final PROPERTY_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field public static final TAG:Ljava/lang/String;

.field public static final WIDEVINE_SCHEME:Ljava/util/UUID;

.field private static final init:[B


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoSessions:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mDrm:Landroid/media/MediaDrm;

.field private mDrmSystemChanged:Z

.field private mPersistedCryptoSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 54
    const-class v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->init:[B

    .line 65
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    return-void

    .line 58
    :array_0
    .array-data 1
        0xat
        0x7at
        0x0t
        0x6ct
        0x38t
        0x2bt
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    .line 107
    if-nez p2, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    .line 112
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 116
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->showProperties()V

    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->isWidevinePluginChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->reset()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrmSystemChanged:Z

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    const-string v1, "nf_drm_system_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->loadCryptoSessions()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Landroid/media/MediaDrm;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Z
    .locals 5
    .param p1, "cs"    # Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .prologue
    const/4 v1, 0x0

    .line 517
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    if-eqz v2, :cond_1

    .line 518
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeCryptoSession "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v1, 0x1

    .line 529
    :cond_1
    :goto_0
    return v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "closeCryptoSessions failed !"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized closeSessionAndRemoveKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V
    .locals 1
    .param p1, "cs"    # Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .prologue
    .line 538
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 539
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->removeSessionKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_0
    monitor-exit p0

    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dumpKeyReqyest([B)V
    .locals 4
    .param p1, "ret"    # [B

    .prologue
    .line 897
    if-eqz p1, :cond_1

    .line 898
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "enc":Ljava/lang/String;
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key request created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .end local v0    # "enc":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "key request returned null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Landroid/media/MediaDrm$CryptoSession;
    .locals 4
    .param p1, "cs"    # Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .prologue
    const/4 v1, 0x0

    .line 914
    if-nez p1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-object v1

    .line 918
    :cond_1
    iget-object v0, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    .line 919
    .local v0, "sessionId":[B
    if-eqz v0, :cond_0

    .line 922
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaDrm;->getCryptoSession([BLjava/lang/String;Ljava/lang/String;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "AES/CBC/NoPadding"

    return-object v0
.end method

.method public static getDeviceId(Landroid/media/MediaDrm;)[B
    .locals 4
    .param p0, "drm"    # Landroid/media/MediaDrm;

    .prologue
    .line 951
    if-nez p0, :cond_1

    .line 952
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, 0x0

    .line 963
    :cond_0
    :goto_0
    return-object v0

    .line 955
    :cond_1
    const-string v1, "deviceUniqueId"

    invoke-virtual {p0, v1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 956
    .local v0, "deviceId":[B
    if-eqz v0, :cond_2

    .line 957
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaDrm device ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 961
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaDrm device ID is null! It should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDeviceType(Landroid/media/MediaDrm;)Ljava/lang/String;
    .locals 4
    .param p0, "drm"    # Landroid/media/MediaDrm;

    .prologue
    .line 968
    if-nez p0, :cond_1

    .line 969
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "Session MediaDrm is null! It should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v0, 0x0

    .line 976
    :cond_0
    :goto_0
    return-object v0

    .line 972
    :cond_1
    const-string v1, "systemId"

    invoke-virtual {p0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "deviceType":Ljava/lang/String;
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaDrm system ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "HmacSHA256"

    return-object v0
.end method

.method private isDeviceProvisioned()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 363
    :try_start_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    .line 364
    .local v2, "testSessionId":[B
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4, v2}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmReady()V

    .line 378
    const/4 v3, 0x1

    .end local v2    # "testSessionId":[B
    :goto_0
    return v3

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "ex":Landroid/media/NotProvisionedException;
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "Device is not provisioned, start provisioning workflow!"

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->startWidewineProvisioning()V

    goto :goto_0

    .line 370
    .end local v1    # "ex":Landroid/media/NotProvisionedException;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "Fatal error, can not recover!"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    sget-object v5, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method private isWidevinePluginChanged()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    .line 306
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    const-string v4, "nf_drm_system_id"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "oldSystemId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "newSystemId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 309
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System ID was not saved, user is not logged in, no need to report that plugin is changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System ID did not changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System ID changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWidewineSupported()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 349
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->WIDEVINE_SCHEME:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCryptoSessions()V
    .locals 6

    .prologue
    .line 130
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->loadCryptoSessions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "session":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 133
    .local v0, "cryptoSessionData":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring crypto session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->restoreKeysToSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    iget-object v4, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    iget-object v4, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v0    # "cryptoSessionData":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :cond_2
    return-void
.end method

.method private declared-synchronized mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "failureType"    # Lcom/netflix/mediaclient/StatusCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, p1, :cond_0

    .line 484
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaDrm failed, unregister device and logout user"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$2;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_PROVIDE_KEY_RESPONSE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, p1, :cond_1

    .line 498
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaDrm provide key update failed, unregister device, logout user and kill app process after error is displayed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$3;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 510
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v1, "message_id"

    const v2, 0x7f060008

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    .end local v0    # "i":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 507
    :cond_1
    :try_start_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "MediaDrm failed! Report and kill process"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private removeSessionKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V
    .locals 3
    .param p1, "cs"    # Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    if-nez v1, :cond_1

    .line 548
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "Nothing to remove! Skip!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "removeSessionKeys"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "removeSessionKeys "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized reset()V
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    const-string v3, "nf_drm_system_id"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 335
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 336
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->closeSessionAndRemoveKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 338
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    monitor-exit p0

    return-void
.end method

.method private restoreKeysToSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Z
    .locals 4
    .param p1, "session"    # Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    .line 147
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    iget-object v3, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 149
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "restoreKeysToSession:: keySetId"

    iget-object v3, p1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "restoreKeysToSession succeeded."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to restore keys to DRM session"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showProperties()V
    .locals 4

    .prologue
    .line 283
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "vendor"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "description"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "deviceUniqueId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "algorithms"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "securityLevel"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "systemId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisioningId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "provisioningUniqueId"

    invoke-virtual {v2, v3}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return-void
.end method

.method private startWidewineProvisioning()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 385
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 386
    :try_start_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 387
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 390
    .local v1, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;

    invoke-direct {v0, p0, v3}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;-><init>(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;Ljava/lang/String;)V

    .line 426
    .local v0, "cdmCallback":Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;
    new-instance v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;)V

    .line 427
    .local v2, "task":Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void

    .line 387
    .end local v0    # "cdmCallback":Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;
    .end local v1    # "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    .end local v2    # "task":Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;
    .end local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method createCryptoSession(J)Z
    .locals 5
    .param p1, "baseKeyHandle"    # J

    .prologue
    .line 588
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "createCryptoSession::"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;-><init>()V

    .line 591
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCryptoSession:: add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "createCryptoSessions failed !"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    const/4 v2, 0x0

    goto :goto_0
.end method

.method decrypt(J[B[B)[B
    .locals 9
    .param p1, "kceKeyHandle"    # J
    .param p3, "input"    # [B
    .param p4, "iv"    # [B

    .prologue
    const/4 v7, 0x0

    .line 634
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Decrypt data"

    invoke-static {v5, v6, p3}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 635
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Decrypt IV"

    invoke-static {v5, v6, p4}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 637
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 638
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v4

    .line 639
    .local v4, "session":Landroid/media/MediaDrm$CryptoSession;
    if-nez v4, :cond_0

    .line 640
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "decrypt - session NOT found!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-array v3, v7, [B

    .line 657
    :goto_0
    return-object v3

    .line 643
    :cond_0
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    if-nez v5, :cond_1

    .line 644
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "decrypt - kce is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-array v3, v7, [B

    goto :goto_0

    .line 647
    :cond_1
    const/4 v3, 0x0

    .line 650
    .local v3, "ret":[B
    :try_start_0
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    invoke-virtual {v4, v5, p3, p4}, Landroid/media/MediaDrm$CryptoSession;->decrypt([B[B[B)[B

    move-result-object v1

    .line 651
    .local v1, "dec":[B
    const/16 v5, 0x10

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/util/CryptoUtils;->unpadPerPKCS5Padding([BI)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 652
    .end local v1    # "dec":[B
    :catch_0
    move-exception v2

    .line 653
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to decrypt "

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_DECRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v5, v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 655
    new-array v3, v7, [B

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 5

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mWidevineProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 247
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Z

    .line 249
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 244
    .end local v0    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 252
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 253
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 254
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_2
    monitor-exit p0

    return-void
.end method

.method encrypt(J[B[B)[B
    .locals 9
    .param p1, "kceKeyHandle"    # J
    .param p3, "input"    # [B
    .param p4, "iv"    # [B

    .prologue
    const/4 v7, 0x0

    .line 670
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 671
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v4

    .line 672
    .local v4, "session":Landroid/media/MediaDrm$CryptoSession;
    if-nez v4, :cond_0

    .line 673
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "encrypt - session NOT found!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-array v3, v7, [B

    .line 691
    :goto_0
    return-object v3

    .line 676
    :cond_0
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    if-nez v5, :cond_1

    .line 677
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "encrypt - kce is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-array v3, v7, [B

    goto :goto_0

    .line 681
    :cond_1
    const/4 v3, 0x0

    .line 684
    .local v3, "ret":[B
    const/16 v5, 0x10

    :try_start_0
    invoke-static {p3, v5}, Lcom/netflix/mediaclient/util/CryptoUtils;->padPerPKCS5Padding([BI)[B

    move-result-object v2

    .line 685
    .local v2, "padInput":[B
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    invoke-virtual {v4, v5, v2, p4}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 686
    .end local v2    # "padInput":[B
    :catch_0
    move-exception v1

    .line 687
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to encrypt "

    invoke-static {v5, v6, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_ENCRYPT:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v5, v1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 689
    new-array v3, v7, [B

    goto :goto_0
.end method

.method public getDeviceId()[B
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceId(Landroid/media/MediaDrm;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceType(Landroid/media/MediaDrm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method getNccpSessionKeyRequest(J)[B
    .locals 11
    .param p1, "sessionId"    # J

    .prologue
    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 606
    .local v9, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    if-nez v9, :cond_0

    .line 607
    const/4 v8, 0x0

    .line 621
    :goto_0
    return-object v8

    .line 610
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "get NCCP session key request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v1, v9, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->init:[B

    const-string v3, "application/xml"

    const/4 v4, 0x2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v7

    .line 613
    .local v7, "req":Landroid/media/MediaDrm$KeyRequest;
    invoke-virtual {v7}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v8

    .line 614
    .local v8, "ret":[B
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->dumpKeyReqyest([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    .end local v7    # "req":Landroid/media/MediaDrm$KeyRequest;
    .end local v8    # "ret":[B
    :catch_0
    move-exception v6

    .line 617
    .local v6, "ex":Ljava/lang/Throwable;
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get key request"

    invoke-static {v0, v1, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_GET_KEY_REQUEST:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, v6}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 621
    const/4 v0, 0x0

    new-array v8, v0, [B

    goto :goto_0
.end method

.method getSessionIds()[J
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 864
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "getSessionIds starts..."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v4, 0x0

    .line 866
    .local v4, "str":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 867
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "str":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .restart local v4    # "str":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 872
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 873
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 874
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_1
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 879
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 870
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :cond_3
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 885
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSessionIds returns following sessions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 889
    .local v3, "retArray":[J
    const/4 v1, 0x0

    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 890
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 893
    :cond_5
    return-object v3
.end method

.method public init()V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->isWidevinePluginChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    const-string v1, "nf_drm_system_id"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_CHANGED:Lcom/netflix/mediaclient/StatusCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "Widevine is provisioned"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDrmSystemChanged()Z
    .locals 1

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrmSystemChanged:Z

    return v0
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 3
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    const/4 v1, 0x3

    .line 265
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 266
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "Provisioning is required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 268
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaDrm event: Key required"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_2
    if-ne p3, v1, :cond_3

    .line 270
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "MediaDrm event: Key expired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 272
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaDrm event: Vendor defined: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method declared-synchronized persistCryptoSessions([J)Z
    .locals 8
    .param p1, "keyHandles"    # [J

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "PersistCryptoSessions"

    invoke-static {v4, v5, p1}, Lcom/netflix/mediaclient/Log;->logLongArray(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 771
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v1, "persistCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 775
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    aget-wide v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 776
    .local v2, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    if-eqz v2, :cond_3

    .line 777
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 778
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persist session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 782
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "Session is already on list to be saved"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 769
    .end local v0    # "i":I
    .end local v1    # "persistCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    .end local v2    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 788
    .restart local v0    # "i":I
    .restart local v1    # "persistCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    .restart local v2    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session not found for key handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p1, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 794
    .end local v2    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->saveCryptoSession(Landroid/content/Context;Ljava/util/List;)Z

    move-result v3

    .line 795
    .local v3, "status":Z
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 797
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 798
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save crypto session was success "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_5
    if-eqz v3, :cond_7

    .line 801
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 802
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crypto session persisted size was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_6
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 805
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 806
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crypto session persisted is now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    :cond_7
    monitor-exit p0

    return v3
.end method

.method declared-synchronized removeCryptoSession(J)Z
    .locals 3
    .param p1, "sessionId"    # J

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 569
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    if-eqz v0, :cond_1

    .line 570
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->closeSessionAndRemoveKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V

    .line 571
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 572
    iget-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 568
    .end local v0    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeNotPersistedCryptoSessions()Z
    .locals 10

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v3, "removeCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 826
    .local v6, "sessionsOriginal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 827
    .local v5, "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 829
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 830
    .local v2, "key":Ljava/lang/Long;
    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 831
    .local v0, "cryptoSessionData":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mPersistedCryptoSessions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 832
    sget-object v7, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 833
    sget-object v7, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove session "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_1
    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 837
    sget-object v7, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 838
    sget-object v7, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to remove crypto session for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 843
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 820
    .end local v0    # "cryptoSessionData":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Long;
    .end local v3    # "removeCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    .end local v5    # "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v6    # "sessionsOriginal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 848
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "removeCryptoSessions":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;>;"
    .restart local v5    # "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v6    # "sessionsOriginal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 850
    .local v4, "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 851
    sget-object v7, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v8, "Crypto session was not removed!"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_4
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->closeSessionAndRemoveKeys(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 856
    .end local v4    # "session":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    :cond_5
    const/4 v7, 0x1

    monitor-exit p0

    return v7
.end method

.method public resetCryptoFactory()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "resetCryptoFactory"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->reset()V

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->init()V

    .line 236
    return-void
.end method

.method sign(J[B)[B
    .locals 7
    .param p1, "kchKeyHandle"    # J
    .param p3, "message"    # [B

    .prologue
    const/4 v6, 0x0

    .line 702
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 703
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v3

    .line 704
    .local v3, "session":Landroid/media/MediaDrm$CryptoSession;
    if-nez v3, :cond_0

    .line 705
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "sign - session NOT found!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-array v2, v6, [B

    .line 721
    :goto_0
    return-object v2

    .line 709
    :cond_0
    iget-object v4, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    if-nez v4, :cond_1

    .line 710
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "sign - kch is null!"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-array v2, v6, [B

    goto :goto_0

    .line 713
    :cond_1
    const/4 v2, 0x0

    .line 715
    .local v2, "ret":[B
    :try_start_0
    iget-object v4, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    invoke-virtual {v3, v4, p3}, Landroid/media/MediaDrm$CryptoSession;->sign([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to sign message "

    invoke-static {v4, v5, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_SIGN:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v4, v1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    .line 719
    new-array v2, v6, [B

    goto :goto_0
.end method

.method declared-synchronized updateKeyResponseForNccpSession(JJJ[B[B[B)Z
    .locals 9
    .param p1, "sessionId"    # J
    .param p3, "kceKeyHandle"    # J
    .param p5, "kchKeyHandle"    # J
    .param p7, "cdmKeyResponse"    # [B
    .param p8, "kceKeyId"    # [B
    .param p9, "kchKeyId"    # [B

    .prologue
    const/4 v4, 0x0

    .line 440
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Provide key response..."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 444
    .local v1, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    if-nez v1, :cond_0

    .line 445
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Crypto session can not be null"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :goto_0
    monitor-exit p0

    return v4

    .line 450
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrm:Landroid/media/MediaDrm;

    iget-object v6, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->sessionId:[B

    move-object/from16 v0, p7

    invoke-virtual {v5, v6, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v3

    .line 451
    .local v3, "keySetId":[B
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Save keys..."

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-nez v3, :cond_1

    .line 454
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Something is wrong, this should not happen! KeySetId is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    .end local v3    # "keySetId":[B
    :catch_0
    move-exception v2

    .line 470
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_2
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to provide key response"

    invoke-static {v5, v6, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 440
    .end local v1    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 457
    .restart local v1    # "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    .restart local v3    # "keySetId":[B
    :cond_1
    :try_start_3
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyId:[B

    .line 458
    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    .line 459
    iput-object v3, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->keySetId:[B

    .line 460
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kceKeyHandle:Ljava/lang/Long;

    .line 461
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyHandle:Ljava/lang/Long;

    .line 462
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mDrmSystemChanged:Z

    .line 464
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    const/4 v4, 0x1

    goto :goto_0
.end method

.method verify(J[B[B)Z
    .locals 7
    .param p1, "kchKeyHandle"    # J
    .param p3, "message"    # [B
    .param p4, "signature"    # [B

    .prologue
    const/4 v4, 0x0

    .line 732
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Verify message"

    invoke-static {v5, v6, p3}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 734
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mCryptoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;

    .line 735
    .local v0, "cs":Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->findMediaDrmCryptoSession(Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;)Landroid/media/MediaDrm$CryptoSession;

    move-result-object v3

    .line 736
    .local v3, "session":Landroid/media/MediaDrm$CryptoSession;
    if-nez v3, :cond_1

    .line 737
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "verify - session NOT found!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 757
    :cond_0
    :goto_0
    return v2

    .line 741
    :cond_1
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    if-nez v5, :cond_2

    .line 742
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "verify - kch is null!"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 743
    goto :goto_0

    .line 746
    :cond_2
    const/4 v2, 0x0

    .line 748
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, v0, Lcom/netflix/mediaclient/service/configuration/drm/CryptoSessionData;->kchKeyId:[B

    invoke-virtual {v3, v5, p3, p4}, Landroid/media/MediaDrm$CryptoSession;->verify([B[B[B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 754
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Messaage is verified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "ex":Ljava/lang/Throwable;
    sget-object v5, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to verify message "

    invoke-static {v5, v6, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_VERIFY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v5, v1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    move v2, v4

    .line 752
    goto :goto_0
.end method
