.class public Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;
.super Ljava/lang/Object;
.source "WidevineMediaDrmEngine.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;
    }
.end annotation


# static fields
.field private static final NETFLIX_MEDIADRM_APPID:Ljava/lang/String; = "com.netflix.ninja"

.field static final NetflixWidevineUUID:Ljava/util/UUID;

.field static final WideVineUUID:Ljava/util/UUID;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCrypto:Landroid/media/MediaCrypto;

.field private mDrm:Landroid/media/MediaDrm;

.field private mLicensedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

.field private mMethodGetSecureStopByPST:Ljava/lang/reflect/Method;

.field private mMethodReleaseAllSecureStops:Ljava/lang/reflect/Method;

.field private mOpenedSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mPendingKeyrequestSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    .line 39
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x29701fe43cc74a34L    # 4.291112415540384E-109

    const-wide v4, -0x73a4516f38bc65b9L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->NetflixWidevineUUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v2, "WidevineMediaDrmEngine"

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->TAG:Ljava/lang/String;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    .line 60
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "create WidevineMediaDrmEngine"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    const-class v2, Landroid/media/MediaDrm;

    const-string v3, "getSecureStop"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodGetSecureStopByPST:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    const-class v2, Landroid/media/MediaDrm;

    const-string v3, "releaseAllSecureStops"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodReleaseAllSecureStops:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_1
    const-string v2, "WidevineMediaDrmEngine"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getTempMediaDrm()Landroid/media/MediaDrm;

    move-result-object v1

    .line 74
    .local v1, "md":Landroid/media/MediaDrm;
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->dumpMediaDrmProperty(Landroid/media/MediaDrm;)V

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseTempMediaDrm(Landroid/media/MediaDrm;)V

    .line 79
    .end local v1    # "md":Landroid/media/MediaDrm;
    :cond_0
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "WidevineMediaDrmEngine done"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMethodGetSecureStopByPST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMethodGetSecureStopByPST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cleanup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 361
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-eqz v3, :cond_7

    .line 362
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V

    .line 364
    iput-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 367
    .local v2, "s":[B
    const-string v3, "WidevineMediaDrmEngine"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    const-string v3, "WidevineMediaDrmEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close opened session,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 371
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3, v2}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "fail to close session"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "s":[B
    :cond_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 377
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 378
    .restart local v2    # "s":[B
    const-string v3, "WidevineMediaDrmEngine"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    const-string v3, "WidevineMediaDrmEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close pending session,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 382
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3, v2}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 383
    :catch_1
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "fail to close session"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "s":[B
    :cond_4
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 388
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 389
    .restart local v2    # "s":[B
    const-string v3, "WidevineMediaDrmEngine"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 390
    const-string v3, "WidevineMediaDrmEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close licensed session,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 393
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3, v2}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 394
    :catch_2
    move-exception v0

    .line 395
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "fail to close session"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "s":[B
    :cond_6
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 400
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    .line 401
    iput-object v7, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    .line 403
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private declared-synchronized createMediaCrypto()V
    .locals 5

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "get MediaCrypto"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 134
    :try_start_1
    new-instance v2, Landroid/media/MediaDrm;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    .line 135
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, p0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->hasHiddenSecureStopApis()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    const-string v3, "appId"

    const-string v4, "com.netflix.ninja"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->createNewSession()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    :try_start_3
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "fail to create MediaDrm: "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "e":Landroid/media/UnsupportedSchemeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 144
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Landroid/media/MediaDrm$MediaDrmStateException;
    :try_start_4
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "MediaDrmStateException: "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V

    goto :goto_0

    .line 159
    .end local v0    # "e":Landroid/media/MediaDrm$MediaDrmStateException;
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .local v1, "sid":[B
    :try_start_5
    new-instance v2, Landroid/media/MediaCrypto;

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    invoke-direct {v2, v3, v1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;
    :try_end_5
    .catch Landroid/media/MediaCryptoException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 162
    :catch_2
    move-exception v0

    .line 163
    .local v0, "e":Landroid/media/MediaCryptoException;
    :try_start_6
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "fail to create MediaCrypto: "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private createNewSession()Z
    .locals 5

    .prologue
    .line 169
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "create Session"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    .line 173
    .local v1, "sid":[B
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v2, "WidevineMediaDrmEngine"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session created, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    const/4 v2, 0x1

    .end local v1    # "sid":[B
    :goto_0
    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "fail to openSession "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V

    .line 180
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dumpKeyStatus(Landroid/media/MediaDrm;[B)V
    .locals 5
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sid"    # [B

    .prologue
    .line 457
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LicenseType"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "PersistAllowed"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "RenewalServerUrl"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "LicenseDurationRemaining"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "RenewAllowed"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "PlaybackDurationRemaining"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "PlayAllowed"

    aput-object v4, v1, v3

    .line 461
    .local v1, "keyPropertyToShow":[Ljava/lang/String;
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "SessionId"

    invoke-static {v3, v4, p2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 462
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "===== key status ======"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v2

    .line 465
    .local v2, "keyStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "WidevineMediaDrmEngine"

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v2    # "keyStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "===== end of key status ======"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "failed to queryKeyStatus()"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpMediaDrmProperty(Landroid/media/MediaDrm;)V
    .locals 10
    .param p1, "md"    # Landroid/media/MediaDrm;

    .prologue
    .line 434
    const/16 v7, 0xd

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "vendor"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "version"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "description"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "deviceUniqueId"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "algorithms"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "securityLevel"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "systemId"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "privacyMode"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "sessionSharing"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "usageReportingSupport"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "appId"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "hdcpLevel"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "maxHdcpLevel"

    aput-object v8, v6, v7

    .line 445
    .local v6, "propertyToShow":[Ljava/lang/String;
    const-string v7, "WidevineMediaDrmEngine"

    const-string v8, "===== MediaDrm property ======"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 448
    .local v4, "p":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "prop":Ljava/lang/String;
    const-string v7, "WidevineMediaDrmEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v5    # "prop":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WidevineMediaDrmEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 454
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "p":Ljava/lang/String;
    :cond_0
    const-string v7, "WidevineMediaDrmEngine"

    const-string v8, "===== End of MediaDrm property ======"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method private getChallengeForSession([B[B)[B
    .locals 12
    .param p1, "init"    # [B
    .param p2, "sessionId"    # [B

    .prologue
    .line 211
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v5, "optionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    const-string v1, "provisioningUniqueId"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 213
    .local v6, "cdmIdBytes":[B
    if-eqz v6, :cond_2

    .line 215
    const-string v0, "WidevineMediaDrmEngine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v9, "line":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v6

    if-ge v8, v0, :cond_0

    .line 218
    const-string v0, "%02x  "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, v6, v8

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisioningUniqueId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v8    # "i":I
    .end local v9    # "line":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v11, 0x0

    .line 225
    .local v11, "strCdmId":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 230
    :goto_1
    if-eqz v11, :cond_2

    .line 231
    const-string v0, "CDMID"

    invoke-virtual {v5, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "WidevineMediaDrmEngine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDMID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v11    # "strCdmId":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    .line 240
    .local v10, "reqData":Landroid/media/MediaDrm$KeyRequest;
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v4, 0x1

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 248
    if-eqz v10, :cond_3

    .line 249
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChallenge of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v10}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    .line 258
    :goto_2
    return-object v0

    .line 226
    .end local v10    # "reqData":Landroid/media/MediaDrm$KeyRequest;
    .restart local v11    # "strCdmId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "fail to encode property provisioningUniqueId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v11, 0x0

    goto :goto_1

    .line 241
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "strCdmId":Ljava/lang/String;
    .restart local v10    # "reqData":Landroid/media/MediaDrm$KeyRequest;
    :catch_1
    move-exception v7

    .line 242
    .local v7, "e":Landroid/media/NotProvisionedException;
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "fail to getChallenge"

    invoke-static {v0, v1, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 245
    const/4 v0, 0x0

    goto :goto_2

    .line 255
    .end local v7    # "e":Landroid/media/NotProvisionedException;
    :cond_3
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "getChallenge return no data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 258
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getTempMediaDrm()Landroid/media/MediaDrm;
    .locals 4

    .prologue
    .line 405
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_1

    .line 408
    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->WideVineUUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 409
    .local v1, "md":Landroid/media/MediaDrm;
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->hasHiddenSecureStopApis()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "appId"

    const-string v3, "com.netflix.ninja"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/MediaDrm$MediaDrmStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v1    # "md":Landroid/media/MediaDrm;
    :cond_0
    :goto_0
    return-object v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "UnsupportedSchemeException: "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    .end local v0    # "e":Landroid/media/UnsupportedSchemeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    .line 417
    .local v0, "e":Landroid/media/MediaDrm$MediaDrmStateException;
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "MediaDrmStateException: "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 421
    .end local v0    # "e":Landroid/media/MediaDrm$MediaDrmStateException;
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    goto :goto_0
.end method

.method private releaseTempMediaDrm(Landroid/media/MediaDrm;)V
    .locals 1
    .param p1, "temp"    # Landroid/media/MediaDrm;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 428
    :cond_0
    return-void
.end method

.method private storeLicenseForSession([B[B)Z
    .locals 4
    .param p1, "sessionId"    # [B
    .param p2, "lic"    # [B

    .prologue
    const/4 v1, 0x0

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "fail to storeLicense DeniedByServerException "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "fail to storeLicense NotProvisionedException "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearLicense([B)V
    .locals 2
    .param p1, "sid"    # [B

    .prologue
    .line 307
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "clearLicense "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "clearLicense sessionId: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 309
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    return-void
.end method

.method public getChallenge([B)[B
    .locals 3
    .param p1, "init"    # [B

    .prologue
    .line 191
    const-string v1, "WidevineMediaDrmEngine"

    const-string v2, "getChallenge"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    if-nez v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->createMediaCrypto()V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->createNewSession()Z

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    if-nez v1, :cond_3

    .line 199
    :cond_2
    const-string v1, "WidevineMediaDrmEngine"

    const-string v2, "getChallenge failed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 203
    :goto_0
    return-object v1

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mOpenedSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 203
    .local v0, "sid":[B
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getChallengeForSession([B[B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getCreatedCryptoAnsSetListener(Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;)Landroid/media/MediaCrypto;
    .locals 1
    .param p1, "listener"    # Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->createMediaCrypto()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public getSecureStopByPst([B)[B
    .locals 8
    .param p1, "pst"    # [B

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getTempMediaDrm()Landroid/media/MediaDrm;

    move-result-object v2

    .line 100
    .local v2, "md":Landroid/media/MediaDrm;
    const/4 v4, 0x0

    .line 101
    .local v4, "secureStop":[B
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodGetSecureStopByPST:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 103
    :try_start_0
    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodGetSecureStopByPST:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    .local v3, "ret":Ljava/lang/Object;
    instance-of v5, v3, [B

    if-eqz v5, :cond_0

    .line 105
    check-cast v3, [B

    .end local v3    # "ret":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [B

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseTempMediaDrm(Landroid/media/MediaDrm;)V

    .line 116
    :cond_1
    const-string v5, "WidevineMediaDrmEngine"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const-string v5, "WidevineMediaDrmEngine"

    const-string v6, "getSecureStopByPst "

    invoke-static {v5, v6, v4}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 119
    :cond_2
    return-object v4

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "WidevineMediaDrmEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSecureStopByPst "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "WidevineMediaDrmEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSecureStopByPst "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "WidevineMediaDrmEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSecureStopByPst "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getSecureStops([B)[B
    .locals 5
    .param p1, "sid"    # [B

    .prologue
    const/4 v2, 0x0

    .line 315
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getTempMediaDrm()Landroid/media/MediaDrm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 316
    .local v1, "temp":Landroid/media/MediaDrm;
    if-nez v1, :cond_0

    .line 329
    :goto_0
    monitor-exit p0

    return-object v2

    .line 319
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaDrm;->getSecureStops()Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, "sss":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseTempMediaDrm(Landroid/media/MediaDrm;)V

    .line 321
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    :cond_1
    const-string v3, "WidevineMediaDrmEngine"

    const-string v4, "getSecureStops has nothing pending "

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    .end local v0    # "sss":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "temp":Landroid/media/MediaDrm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 325
    .restart local v0    # "sss":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v1    # "temp":Landroid/media/MediaDrm;
    :cond_2
    :try_start_2
    const-string v2, "WidevineMediaDrmEngine"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecureStops has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public hasHiddenSecureStopApis()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodReleaseAllSecureStops:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodGetSecureStopByPST:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 5
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    const/16 v4, 0x66

    const/4 v3, 0x3

    .line 474
    const-string v0, "WidevineMediaDrmEngine"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "sessionId: "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 479
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "data: "

    invoke-static {v0, v1, p5}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->dumpKeyStatus(Landroid/media/MediaDrm;[B)V

    .line 482
    :cond_0
    if-ne p3, v3, :cond_3

    .line 483
    const-string v0, "WidevineMediaDrmEngine"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const-string v0, "WidevineMediaDrmEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_KEY_EXPIRED close session,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    const-string v1, "key expired"

    invoke-interface {v0, v4, p3, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;->MediaDrmError(IILjava/lang/String;)V

    .line 499
    :cond_2
    :goto_0
    return-void

    .line 492
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 493
    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 494
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    const-string v1, "key required"

    invoke-interface {v0, v4, p3, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;->MediaDrmError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAllSecureStops()V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getTempMediaDrm()Landroid/media/MediaDrm;

    move-result-object v1

    .line 84
    .local v1, "md":Landroid/media/MediaDrm;
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodReleaseAllSecureStops:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    const-string v2, "WidevineMediaDrmEngine"

    const-string v3, "releaseSecureStops check pending SecureStops"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMethodReleaseAllSecureStops:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :goto_0
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseTempMediaDrm(Landroid/media/MediaDrm;)V

    .line 97
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAllSecureStops "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAllSecureStops "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "WidevineMediaDrmEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAllSecureStops "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized releaseMediaCryptoAndRemoveListener()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    const-string v0, "WidevineMediaDrmEngine"

    const-string v1, "release MediaCrypto and SessionId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mMediaDrmListener:Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;

    .line 187
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseSecureStops([B)V
    .locals 3
    .param p1, "ssRelease"    # [B

    .prologue
    .line 345
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_2

    .line 346
    :cond_0
    const-string v1, "WidevineMediaDrmEngine"

    const-string v2, "releaseSecureStops blob is empty"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 352
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getTempMediaDrm()Landroid/media/MediaDrm;

    move-result-object v0

    .line 353
    .local v0, "temp":Landroid/media/MediaDrm;
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->releaseSecureStops([B)V

    .line 355
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseTempMediaDrm(Landroid/media/MediaDrm;)V

    .line 356
    const-string v1, "WidevineMediaDrmEngine"

    const-string v2, "releaseSecureStops check pending SecureStops"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v0    # "temp":Landroid/media/MediaDrm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public storeLicense([B)[B
    .locals 6
    .param p1, "lic"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const-string v1, "WidevineMediaDrmEngine"

    const-string v2, "storeLicense no pending session for license"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-array v0, v4, [B

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 273
    .local v0, "sid":[B
    const-string v1, "WidevineMediaDrmEngine"

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    const-string v1, "WidevineMediaDrmEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeLicense size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->logByteArray(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 276
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->storeLicenseForSession([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 279
    new-array v0, v4, [B

    goto :goto_0

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mPendingKeyrequestSession:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mLicensedSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v1, "WidevineMediaDrmEngine"

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->mDrm:Landroid/media/MediaDrm;

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->dumpKeyStatus(Landroid/media/MediaDrm;[B)V

    goto :goto_0
.end method
