.class public final Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;
.super Ljava/lang/Object;
.source "DrmManagerRegistry.java"


# static fields
.field private static final DRM_SYSTEM_ID_FORCE_LEGACY:Ljava/lang/String; = "FORCE_LEGACY"

.field private static final DRM_SYSTEM_ID_LEGACY:Ljava/lang/String; = "LEGACY"

.field protected static final TAG:Ljava/lang/String; = "nf_drm"

.field private static currentDrmSystem:Ljava/lang/String;

.field private static instance:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

.field private static mPlayerRequiredAdaptivePlayback:Z

.field private static mSecurityLevel:Ljava/lang/String;

.field private static mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

.field private static previousDrmSystem:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static clearKeys()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->removeNotPersistedCryptoSessions()Z

    move-result v0

    return v0
.end method

.method private static clearLicense([B)V
    .locals 1
    .param p0, "sid"    # [B

    .prologue
    .line 285
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->clearLicense([B)V

    .line 286
    return-void
.end method

.method private static createCryptoSession(J)Z
    .locals 2
    .param p0, "sessionId"    # J

    .prologue
    .line 208
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->createCryptoSession(J)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized createDrmManager(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 73
    const-class v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static createWidevineMediaDrmEngine()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    .line 268
    return-void
.end method

.method private static decrypt(J[B[B)[B
    .locals 2
    .param p0, "kceKeyHandle"    # J
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->decrypt(J[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static encrypt(J[B[B)[B
    .locals 2
    .param p0, "kceKeyHandle"    # J
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 154
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->encrypt(J[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static getChallenge([B)[B
    .locals 1
    .param p0, "init"    # [B

    .prologue
    .line 277
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getChallenge([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static getKeyHandles()[J
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getSessionIds()[J

    move-result-object v0

    return-object v0
.end method

.method private static getNccpSessionKeyRequest(J)[B
    .locals 2
    .param p0, "sessionId"    # J

    .prologue
    .line 218
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->getNccpSessionKeyRequest(J)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSecureStops([B)[B
    .locals 3
    .param p0, "id"    # [B

    .prologue
    .line 289
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isSecureStopWithPstSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getSecureStopByPst([B)[B

    move-result-object v0

    .local v0, "ss":[B
    move-object v1, v0

    .line 294
    .end local v0    # "ss":[B
    .local v1, "ss":[B
    :goto_0
    return-object v1

    .line 293
    .end local v1    # "ss":[B
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getSecureStops([B)[B

    move-result-object v0

    .restart local v0    # "ss":[B
    move-object v1, v0

    .line 294
    .end local v0    # "ss":[B
    .restart local v1    # "ss":[B
    goto :goto_0
.end method

.method private static getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->instance:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    return-object v0
.end method

.method public static getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidewineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->createWidevineMediaDrmEngine()V

    .line 263
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->mWidevineMediaDrmEngine:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    return-object v0
.end method

.method public static isChangeToWidevineFromLegacy()Z
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isDrmSystemChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FORCE_LEGACY"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmSystemChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 80
    const-string v1, "nf_drm"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "nf_drm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDrmSystem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previousDrmSystem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "nf_drm"

    const-string v2, "DrmManager instance is not created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    :goto_0
    return v0

    .line 88
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->currentDrmSystem:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->previousDrmSystem:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isLegacyDrmSystem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_3
    const-string v0, "nf_drm"

    const-string v1, "DrmSystemChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isLegacyDrmSystem(Ljava/lang/String;)Z
    .locals 1
    .param p0, "systemUdString"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FORCE_LEGACY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPlatformDrmSupported()Z
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->isWidevineDrmAllowed()Z

    move-result v0

    return v0
.end method

.method private static isSecureStopWithPstSupported()Z
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->hasHiddenSecureStopApis()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWidevineDrmAllowed()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method private static persistKeys([J)Z
    .locals 1
    .param p0, "sessions"    # [J

    .prologue
    .line 228
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->persistCryptoSessions([J)Z

    move-result v0

    return v0
.end method

.method private static releaseAllSecureStops()V
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseAllSecureStops()V

    .line 311
    return-void
.end method

.method private static releaseSecureStops([B)V
    .locals 1
    .param p0, "ssRelease"    # [B

    .prologue
    .line 299
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseSecureStops([B)V

    .line 300
    return-void
.end method

.method private static removeKey(J)Z
    .locals 2
    .param p0, "sessionId"    # J

    .prologue
    .line 198
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->removeCryptoSession(J)Z

    move-result v0

    return v0
.end method

.method private static sign(J[B)[B
    .locals 2
    .param p0, "kchKeyHandle"    # J
    .param p2, "message"    # [B

    .prologue
    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->sign(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static storeLicense([B)[B
    .locals 1
    .param p0, "lic"    # [B

    .prologue
    .line 281
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->storeLicense([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static updateKeyResponse(JJJ[B[B[B)Z
    .locals 12
    .param p0, "sessionId"    # J
    .param p2, "kceKeyHandle"    # J
    .param p4, "kchKeyHandle"    # J
    .param p6, "keyResponse"    # [B
    .param p7, "kceKeyId"    # [B
    .param p8, "kchKeyId"    # [B

    .prologue
    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->updateKeyResponseForNccpSession(JJJ[B[B[B)Z

    move-result v0

    return v0
.end method

.method private static verify(J[B[B)Z
    .locals 2
    .param p0, "kchKeyHandle"    # J
    .param p2, "message"    # [B
    .param p3, "signature"    # [B

    .prologue
    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineDrmManager()Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->verify(J[B[B)Z

    move-result v0

    return v0
.end method
