.class public Lcom/netflix/ninja/NetflixService;
.super Landroid/app/Service;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/ninja/NetflixService$9;,
        Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;,
        Lcom/netflix/ninja/NetflixService$InitCallback;,
        Lcom/netflix/ninja/NetflixService$LocalBinder;,
        Lcom/netflix/ninja/NetflixService$UiParam;,
        Lcom/netflix/ninja/NetflixService$GibbonState;
    }
.end annotation


# static fields
.field public static final CAST_APP_ID:Ljava/lang/String; = "Netflix"

.field public static final CONFIG_ERROR_ACTION:Ljava/lang/String; = "NETFLIXSERVICE_CONFIG_ERROR_ACTION"

.field public static final DRM_ERROR_ACTION:Ljava/lang/String; = "NETFLIXSERVICE_DRM_ERROR_ACTION"

.field public static final EXTRA_HEIGHT:Ljava/lang/String; = "h"

.field public static final EXTRA_WIDTH:Ljava/lang/String; = "w"

.field public static final EXTRA_X:Ljava/lang/String; = "x"

.field public static final EXTRA_Y:Ljava/lang/String; = "y"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "device_name"

.field private static final FRIENDLY_NAME_DEFAULT:Ljava/lang/String; = "ninja"

.field private static final MODEL_DELIM:Ljava/lang/String; = "_"

.field protected static final MODEL_LIMIT:I = 0x2d

.field private static final NETFLIX_ACTIVATE_FILENAME:Ljava/lang/String; = "/activated"

.field public static final PLAYBACK_ENDED:Ljava/lang/String; = "NETFLIXSERVICE_PLAYBACK_ENDED"

.field public static final PLAYBACK_STARTED:Ljava/lang/String; = "NETFLIXSERVICE_PLAYBACK_STARTED"

.field private static final SERVICE_KILL_DELAY_MS:J = 0xdbba00L

.field public static final SHUTDOWN_ACTION:Ljava/lang/String; = "NETFLIXSERVICE_SHUTDOWN_ACTION"

.field public static final SHUTDOWN_ACTIVITY:Ljava/lang/String; = "NETFLIXSERVICE_SHUTDOWN_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "netflix-service"

.field public static final VIDEO_RESIZE:Ljava/lang/String; = "NETFLIXSERVICE_VIDEO_RESIZE"

.field public static final VIDEO_SIZE_CHANGED:Ljava/lang/String; = "NETFLIXSERVICE_VIDEO_SIZE_CHANGED"

.field private static isVolumeMuted:Z

.field private static sInstance:Lcom/netflix/ninja/NetflixService;

.field private static sModelGroup:Ljava/lang/String;

.field private static sOemModel:Ljava/lang/String;


# instance fields
.field private final agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private enableUiOnReady:Z

.field private mAvailableDisplays:[Landroid/view/Display;

.field private mAvailableDisplaysLock:Ljava/lang/Object;

.field private final mBinder:Landroid/os/IBinder;

.field private mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

.field private mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

.field private mCurrentHdcpLevel:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

.field private mDrmReady:Z

.field private mDrmStatusCode:Lcom/netflix/mediaclient/android/app/Status;

.field private mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field private mFriendlyName:Ljava/lang/String;

.field private mGibbonState:Lcom/netflix/ninja/NetflixService$GibbonState;

.field private mHandler:Landroid/os/Handler;

.field mHdmiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

.field private final mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/ninja/NetflixService$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitComplete:Z

.field private final mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

.field private mPlayerSurface:Landroid/view/Surface;

.field private mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartupParameters:Lcom/netflix/ninja/StartupParameters;

.field private final mStopServiceRunnable:Ljava/lang/Runnable;

.field private mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 118
    const/4 v1, 0x0

    sput-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    .line 119
    const/4 v1, 0x0

    sput-boolean v1, Lcom/netflix/ninja/NetflixService;->isVolumeMuted:Z

    .line 246
    const-string v1, "netflix-service"

    const-string v2, "loadLibrary - libnetflix.so"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    const-string v1, "netflix"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 250
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary - libnetflix.so fails, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 175
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 177
    sget-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mGibbonState:Lcom/netflix/ninja/NetflixService$GibbonState;

    .line 180
    iput-boolean v1, p0, Lcom/netflix/ninja/NetflixService;->enableUiOnReady:Z

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Lcom/netflix/ninja/NetflixService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$LocalBinder;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mBinder:Landroid/os/IBinder;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mInitCallbacks:Ljava/util/List;

    .line 234
    iput-boolean v1, p0, Lcom/netflix/ninja/NetflixService;->mInitComplete:Z

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplaysLock:Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/netflix/ninja/NetflixService$1;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$1;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 316
    new-instance v0, Lcom/netflix/ninja/NetflixService$2;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$2;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 412
    new-instance v0, Lcom/netflix/ninja/NetflixService$3;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$3;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mStopServiceRunnable:Ljava/lang/Runnable;

    .line 1343
    new-instance v0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    new-instance v1, Lcom/netflix/ninja/NetflixService$6;

    const-string v2, "Netflix"

    invoke-direct {v1, p0, v2}, Lcom/netflix/ninja/NetflixService$6;-><init>(Lcom/netflix/ninja/NetflixService;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;-><init>(Landroid/content/Context;Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    .line 1408
    new-instance v0, Lcom/netflix/ninja/NetflixService$7;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$7;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHdmiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1434
    new-instance v0, Lcom/netflix/ninja/NetflixService$8;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixService$8;-><init>(Lcom/netflix/ninja/NetflixService;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/ninja/NetflixService;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->updateDisplays()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/ninja/NetflixService;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/ninja/NetflixService;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/ninja/NetflixService;Landroid/content/Intent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/ninja/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/ninja/NetflixService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/netflix/ninja/NetflixService;->nativeUpdateDDPsupport(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/ninja/NetflixService;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeUpdateNetworkingInterfaces()V

    return-void
.end method

.method private doStartCommand(Landroid/content/Intent;II)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 399
    const-string v1, "netflix-service"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received start command intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const-string v1, "netflix-service"

    const-string v2, "Action is empty"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    return-void
.end method

.method private drmReset()V
    .locals 2

    .prologue
    .line 502
    const-string v0, "netflix-service"

    const-string v1, "drmReset"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/ninja/NetflixService$4;

    invoke-direct {v1, p0}, Lcom/netflix/ninja/NetflixService$4;-><init>(Lcom/netflix/ninja/NetflixService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    :cond_0
    return-void
.end method

.method private drmShutdown()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "netflix-service"

    const-string v1, "drmShutdown"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->destroy()V

    .line 499
    :cond_0
    return-void
.end method

.method private drmStartup()V
    .locals 3

    .prologue
    .line 470
    const-string v1, "netflix-service"

    const-string v2, "drmStartup"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v1, "netflix-service"

    const-string v2, "Load NCCP trust store..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {p0}, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->init(Landroid/content/Context;)V

    .line 474
    const-string v1, "netflix-service"

    const-string v2, "Load NCCP trust store done."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :try_start_0
    invoke-static {p0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->createDrmManager(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->getESN(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :goto_1
    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->init()V

    .line 492
    :cond_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "ex":Landroid/media/UnsupportedSchemeException;
    const-string v1, "netflix-service"

    const-string v2, "DRM scheme is not supported!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDrmManager:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    goto :goto_0

    .line 485
    .end local v0    # "ex":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v0

    .line 486
    .restart local v0    # "ex":Landroid/media/UnsupportedSchemeException;
    const-string v1, "netflix-service"

    const-string v2, "DRM scheme is not supported!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private findFriendlyName()V
    .locals 4

    .prologue
    const/16 v3, 0x2d

    .line 1366
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    .line 1367
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friendly name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    .line 1373
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 1374
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    .line 1378
    :cond_2
    return-void
.end method

.method public static getActivatedEsn(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    .line 1227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/netflix/ninja/NetflixService;->getSaveDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/activated"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1229
    .local v6, "filename":Ljava/lang/String;
    const-string v8, "netflix-service"

    invoke-static {v8, v10}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1230
    const-string v8, "netflix-service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getActivatedEsn checking: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v5, "file":Ljava/io/File;
    const-string v3, ""

    .line 1236
    .local v3, "esn":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1238
    .local v0, "b":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    .end local v0    # "b":Ljava/io/BufferedReader;
    .local v1, "b":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "s":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1241
    move-object v3, v7

    .line 1242
    const-string v8, "netflix-service"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1243
    const-string v8, "netflix-service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getActivatedEsn found ESN: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1251
    :cond_1
    if-eqz v1, :cond_4

    .line 1253
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 1259
    .end local v1    # "b":Ljava/io/BufferedReader;
    .end local v7    # "s":Ljava/lang/String;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-object v3

    .line 1254
    .end local v0    # "b":Ljava/io/BufferedReader;
    .restart local v1    # "b":Ljava/io/BufferedReader;
    .restart local v7    # "s":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 1255
    .end local v1    # "b":Ljava/io/BufferedReader;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    goto :goto_0

    .line 1246
    .end local v7    # "s":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1247
    .local v4, "fe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v8, "netflix-service"

    const-string v9, "getActivatedEsn FileNotFoundException"

    invoke-static {v8, v9, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1251
    if-eqz v0, :cond_2

    .line 1253
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1254
    :catch_2
    move-exception v8

    goto :goto_0

    .line 1248
    .end local v4    # "fe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1249
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "netflix-service"

    const-string v9, "getActivatedEsn IOException"

    invoke-static {v8, v9, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1251
    if-eqz v0, :cond_2

    .line 1253
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1254
    :catch_4
    move-exception v8

    goto :goto_0

    .line 1251
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_3

    .line 1253
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 1255
    :cond_3
    :goto_4
    throw v8

    .line 1254
    :catch_5
    move-exception v9

    goto :goto_4

    .line 1251
    .end local v0    # "b":Ljava/io/BufferedReader;
    .restart local v1    # "b":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedReader;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1248
    .end local v0    # "b":Ljava/io/BufferedReader;
    .restart local v1    # "b":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedReader;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1246
    .end local v0    # "b":Ljava/io/BufferedReader;
    .restart local v1    # "b":Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedReader;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "b":Ljava/io/BufferedReader;
    .restart local v1    # "b":Ljava/io/BufferedReader;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedReader;
    .restart local v0    # "b":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private getAvailableDisplays()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1059
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1060
    .local v5, "jobjAvaialableDisplays":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplaysLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1061
    :try_start_0
    iget-object v9, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    array-length v9, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v9, :cond_1

    .line 1063
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1064
    .local v8, "theArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    .local v0, "arr$":[Landroid/view/Display;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 1065
    .local v1, "d":Landroid/view/Display;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1066
    .local v2, "display":Lorg/json/JSONObject;
    const-string v9, "name"

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-nez v9, :cond_3

    .line 1068
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->getCurrentHdcpLevel()I

    move-result v9

    if-lez v9, :cond_0

    .line 1069
    const-string v9, "type"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    :goto_1
    const-string v9, "hdcp"

    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->getCurrentHdcpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    :goto_2
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1064
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1071
    :cond_0
    const-string v9, "type"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1083
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "d":Landroid/view/Display;
    .end local v2    # "display":Lorg/json/JSONObject;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "theArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 1084
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v9, "netflix-service"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvailableDisplays failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1088
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1089
    .local v6, "jsonString":Ljava/lang/String;
    const-string v9, "netflix-service"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1090
    const-string v9, "netflix-service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAvailableDisplays "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_2
    return-object v6

    .line 1077
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v0    # "arr$":[Landroid/view/Display;
    .restart local v1    # "d":Landroid/view/Display;
    .restart local v2    # "display":Lorg/json/JSONObject;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "theArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_3
    const-string v9, "type"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    const-string v9, "hdcp"

    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->getCurrentHdcpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1087
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "d":Landroid/view/Display;
    .end local v2    # "display":Lorg/json/JSONObject;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "theArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 1082
    .restart local v0    # "arr$":[Landroid/view/Display;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "theArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_5
    const-string v9, "displays"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private getCurrentHdcpLevel()I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mCurrentHdcpLevel:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    invoke-virtual {v0}, Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;->getLevel()I

    move-result v0

    return v0
.end method

.method private getDefaultDisplayWidthHeight()I
    .locals 11

    .prologue
    .line 1105
    iget-object v8, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplaysLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1106
    :try_start_0
    iget-object v7, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    array-length v7, v7

    if-lez v7, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    .local v0, "arr$":[Landroid/view/Display;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1108
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-nez v7, :cond_1

    .line 1109
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1110
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1111
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1112
    .local v6, "w":I
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1113
    .local v3, "h":I
    const-string v7, "netflix-service"

    const/4 v9, 0x3

    invoke-static {v7, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1114
    const-string v7, "netflix-service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultDisplayWidthHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    shl-int/lit8 v7, v6, 0x10

    or-int/2addr v7, v3

    monitor-exit v8

    .line 1121
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "d":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "h":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "w":I
    :goto_1
    return v7

    .line 1107
    .restart local v0    # "arr$":[Landroid/view/Display;
    .restart local v1    # "d":Landroid/view/Display;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1120
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "d":Landroid/view/Display;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    monitor-exit v8

    .line 1121
    const v7, 0x7800438

    goto :goto_1

    .line 1120
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private getDefaultDisplayWidthHeightInCm()I
    .locals 18

    .prologue
    .line 1124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplaysLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    array-length v12, v12

    if-lez v12, :cond_4

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    .local v5, "arr$":[Landroid/view/Display;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v6, v5, v9

    .line 1127
    .local v6, "d":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->isValid()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v12

    if-nez v12, :cond_3

    .line 1128
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1129
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1130
    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v12, :cond_3

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez v12, :cond_3

    iget v12, v7, Landroid/util/DisplayMetrics;->xdpi:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_3

    iget v12, v7, Landroid/util/DisplayMetrics;->ydpi:F

    const/4 v14, 0x0

    cmpl-float v12, v12, v14

    if-lez v12, :cond_3

    .line 1131
    const-wide v2, 0x400451eb851eb852L    # 2.54

    .line 1132
    .local v2, "IN2CM":D
    const/16 v4, 0x200

    .line 1133
    .local v4, "MAX_SIZE_CM":I
    const-wide v14, 0x400451eb851eb852L    # 2.54

    iget v12, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v12, v7, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v11, v14

    .line 1134
    .local v11, "widthCm":I
    const-wide v14, 0x400451eb851eb852L    # 2.54

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    iget v12, v7, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v8, v14

    .line 1135
    .local v8, "heightCm":I
    const/16 v12, 0x200

    if-ge v11, v12, :cond_0

    const/16 v12, 0x200

    if-lt v8, v12, :cond_1

    .line 1138
    :cond_0
    const/4 v11, 0x0

    .line 1139
    const/4 v8, 0x0

    .line 1141
    :cond_1
    const-string v12, "netflix-service"

    const/4 v14, 0x3

    invoke-static {v12, v14}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1142
    const-string v12, "netflix-service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Display: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " X "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-string v12, "netflix-service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Display DPI : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " X "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string v12, "netflix-service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Display size in CM: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " X "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_2
    shl-int/lit8 v12, v11, 0x10

    or-int/2addr v12, v8

    monitor-exit v13

    .line 1152
    .end local v2    # "IN2CM":D
    .end local v4    # "MAX_SIZE_CM":I
    .end local v5    # "arr$":[Landroid/view/Display;
    .end local v6    # "d":Landroid/view/Display;
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "heightCm":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "widthCm":I
    :goto_1
    return v12

    .line 1126
    .restart local v5    # "arr$":[Landroid/view/Display;
    .restart local v6    # "d":Landroid/view/Display;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1151
    .end local v5    # "arr$":[Landroid/view/Display;
    .end local v6    # "d":Landroid/view/Display;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_4
    monitor-exit v13

    .line 1152
    const/4 v12, 0x0

    goto :goto_1

    .line 1151
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method private static getDisplayWideHeightInCm()I
    .locals 1

    .prologue
    .line 1162
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 1163
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->getDefaultDisplayWidthHeightInCm()I

    move-result v0

    .line 1165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayWidthHeight()I
    .locals 1

    .prologue
    .line 1155
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 1156
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->getDefaultDisplayWidthHeight()I

    move-result v0

    .line 1158
    :goto_0
    return v0

    :cond_0
    const v0, 0x7800438

    goto :goto_0
.end method

.method private static getDisplays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 1096
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->getAvailableDisplays()Ljava/lang/String;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "{}"

    goto :goto_0
.end method

.method private static getExternalDisplayHdcpLevel()I
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 1050
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->getCurrentHdcpLevel()I

    move-result v0

    .line 1052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHevcProfileLevel()I
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getHevcProfileLevel()I

    move-result v0

    return v0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1263
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMinimumVolumeStep()I
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x3

    .line 938
    const-string v3, "netflix-service"

    const-string v4, "getMinimumVolumeStep"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v2, 0x0

    .line 940
    .local v2, "minVolumeStep":I
    sget-object v3, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v3, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v2

    .line 942
    :cond_1
    sget-object v3, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 943
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 944
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 946
    .local v1, "maxVolume":I
    if-ge v1, v6, :cond_2

    .line 947
    div-int v2, v6, v1

    .line 951
    :goto_1
    const-string v3, "netflix-service"

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    const-string v3, "netflix-service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxVolume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string v3, "netflix-service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minVolumeStep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 957
    .end local v1    # "maxVolume":I
    :cond_3
    const-string v3, "netflix-service"

    const-string v4, "Audio manager is not available, can not change volume"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1315
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1316
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1317
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 1319
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "/system/lib/"

    goto :goto_0
.end method

.method public static declared-synchronized getNetflixModelGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1329
    const-class v1, Lcom/netflix/ninja/NetflixService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sModelGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1330
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->nativeGetModelGroup()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/ninja/NetflixService;->sModelGroup:Ljava/lang/String;

    .line 1332
    :cond_0
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sModelGroup:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1329
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNetflixOemModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1337
    const-class v1, Lcom/netflix/ninja/NetflixService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sOemModel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1338
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->nativeGetOemModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/ninja/NetflixService;->sOemModel:Ljava/lang/String;

    .line 1340
    :cond_0
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sOemModel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNetworks()Ljava/lang/String;
    .locals 4

    .prologue
    .line 986
    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v1, :cond_0

    .line 987
    const-string v1, "netflix-service"

    const-string v2, "Reverse JNI call when service is not running!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v1, "{}"

    .line 994
    .local v0, "net":Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
    :goto_0
    return-object v1

    .line 990
    .end local v0    # "net":Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;

    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;-><init>(Landroid/content/Context;)V

    .line 991
    .restart local v0    # "net":Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->getArguments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->getArguments()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSaveDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1219
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1220
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1223
    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getStartupString(Lcom/netflix/ninja/StartupParameters;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # Lcom/netflix/ninja/StartupParameters;

    .prologue
    .line 808
    const-string v0, ""

    .line 809
    .local v0, "payload":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 810
    invoke-interface {p1}, Lcom/netflix/ninja/StartupParameters;->getStartupParameters()Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_0
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Startup parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    return-object v0

    .line 812
    :cond_1
    const-string v1, "netflix-service"

    const-string v2, "Missing startup parameter!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getStreamVolume()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 916
    const-string v4, "netflix-service"

    const-string v5, "getStreamVolume: "

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v2, 0x0

    .line 919
    .local v2, "volumePercent":I
    sget-object v4, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v4, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v2

    .line 921
    :cond_1
    sget-object v4, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 922
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 924
    .local v1, "maxVolume":I
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 925
    .local v3, "volumeValue":I
    mul-int/lit8 v4, v3, 0x64

    div-int v2, v4, v1

    .line 926
    const-string v4, "netflix-service"

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    const-string v4, "netflix-service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStreamVolume set to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v4, "netflix-service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStreamVolume set to in % : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    .end local v1    # "maxVolume":I
    .end local v3    # "volumeValue":I
    :cond_2
    const-string v4, "netflix-service"

    const-string v5, "Audio manager is not available, can not change volume"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSupportedHevcProfileLevel()I
    .locals 1

    .prologue
    .line 1034
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 1035
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->getHevcProfileLevel()I

    move-result v0

    .line 1037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gibbonResume(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V
    .locals 1
    .param p1, "gibbonSurface"    # Landroid/view/Surface;
    .param p2, "playerSurface"    # Landroid/view/Surface;
    .param p3, "params"    # Lcom/netflix/ninja/StartupParameters;

    .prologue
    .line 755
    if-eqz p2, :cond_0

    .line 756
    iput-object p2, p0, Lcom/netflix/ninja/NetflixService;->mPlayerSurface:Landroid/view/Surface;

    .line 757
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->gibbonResetPlayer()V

    .line 759
    :cond_0
    invoke-direct {p0, p3}, Lcom/netflix/ninja/NetflixService;->getStartupString(Lcom/netflix/ninja/StartupParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/ninja/NetflixService;->nativeGibbonResume(Landroid/view/Surface;Landroid/view/Surface;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method private gibbonStartup(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;Z)V
    .locals 3
    .param p1, "gibbonSurface"    # Landroid/view/Surface;
    .param p2, "playerSurface"    # Landroid/view/Surface;
    .param p3, "params"    # Lcom/netflix/ninja/StartupParameters;
    .param p4, "inSuspendMode"    # Z

    .prologue
    .line 740
    const-string v0, "netflix-service"

    const-string v1, "gibbonStartup"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-boolean v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmReady:Z

    if-eqz v0, :cond_1

    .line 742
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GibbonState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeGibbonState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    invoke-static {p0}, Lcom/netflix/ninja/NetflixService;->getSaveDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/netflix/ninja/NetflixService;->getStartupString(Lcom/netflix/ninja/StartupParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/netflix/ninja/NetflixService;->nativeGibbonStartup(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 747
    if-eqz p2, :cond_1

    .line 748
    iput-object p2, p0, Lcom/netflix/ninja/NetflixService;->mPlayerSurface:Landroid/view/Surface;

    .line 749
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->gibbonResetPlayer()V

    .line 752
    :cond_1
    return-void
.end method

.method private initCompleted()V
    .locals 4

    .prologue
    .line 548
    const-string v2, "netflix-service"

    const-string v3, "Invoking InitCallbacks..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v3, p0, Lcom/netflix/ninja/NetflixService;->mInitCallbacks:Ljava/util/List;

    monitor-enter v3

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/ninja/NetflixService$InitCallback;

    .line 552
    .local v0, "callback":Lcom/netflix/ninja/NetflixService$InitCallback;
    invoke-interface {v0}, Lcom/netflix/ninja/NetflixService$InitCallback;->onInitComplete()V

    goto :goto_0

    .line 554
    .end local v0    # "callback":Lcom/netflix/ninja/NetflixService$InitCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 556
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/ninja/NetflixService;->mInitComplete:Z

    .line 557
    return-void
.end method

.method private initNrdLib()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "netflix-service"

    const-string v1, "Load NRDLIB."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->findFriendlyName()V

    .line 308
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeGibbonPrepare()V

    .line 309
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->drmStartup()V

    .line 311
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    return-void
.end method

.method private isCreated()Z
    .locals 1

    .prologue
    .line 1381
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInstanceCreated()Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVolumeFixed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 878
    sget-object v2, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v2, :cond_1

    .line 887
    .local v0, "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v1

    .line 880
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    sget-object v2, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 881
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 882
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 883
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVolumeFixed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    goto :goto_0
.end method

.method private static isVolumeMuted()Z
    .locals 1

    .prologue
    .line 964
    sget-boolean v0, Lcom/netflix/ninja/NetflixService;->isVolumeMuted:Z

    return v0
.end method

.method private static native nativeGetModelGroup()Ljava/lang/String;
.end method

.method private static native nativeGetOemModel()Ljava/lang/String;
.end method

.method private native nativeGibbonPause(Ljava/lang/String;)Z
.end method

.method private native nativeGibbonPrepare()V
.end method

.method private native nativeGibbonResume(Landroid/view/Surface;Landroid/view/Surface;Ljava/lang/String;)V
.end method

.method private native nativeGibbonSetPlayer(J)V
.end method

.method private native nativeGibbonShutdown()V
.end method

.method private native nativeGibbonStartup(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeGibbonState()I
.end method

.method private native nativeKeyDownAndUpEvent(ILandroid/view/KeyEvent;)V
.end method

.method private native nativeKeyDownEvent(ILandroid/view/KeyEvent;)V
.end method

.method private native nativeKeyMultipleEvent(ILandroid/view/KeyEvent;I)V
.end method

.method private native nativeKeyMultipleRawEvent(Ljava/lang/String;I)V
.end method

.method private native nativeKeyUpEvent(ILandroid/view/KeyEvent;)V
.end method

.method private native nativeNotifyVolumeChanged()V
.end method

.method private native nativeSetDeviceStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method private native nativeUpdateDDPsupport(Z)V
.end method

.method private native nativeUpdateNetworkingInterfaces()V
.end method

.method private native nativeVideoOutputResolutionChanged()V
.end method

.method private native nativeVideoOutputStatusChanged()V
.end method

.method private static onJniEvent(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 844
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJniEvent id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 875
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 850
    :pswitch_1
    const-string v0, "netflix-service"

    const-string v1, "onJniEvent shutdown requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_1

    .line 852
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService;->triggerShutdown()V

    goto :goto_0

    .line 864
    :pswitch_2
    const-string v0, "netflix-service"

    const-string v1, "onJniEvent Reset crypto factory requested"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_1

    .line 866
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-direct {v0}, Lcom/netflix/ninja/NetflixService;->drmReset()V

    goto :goto_0

    .line 871
    :pswitch_3
    const-string v0, "netflix-service"

    const-string v1, "onJniEvent activity shutdown requested updated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_SHUTDOWN_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 848
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static onJniJsonEvent(Ljava/lang/String;)V
    .locals 9
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 1004
    const-string v4, "netflix-service"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    const-string v4, "netflix-service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onJniJsonEvent  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "jobj":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/netflix/mediaclient/util/SetVideoWindow;->isValid(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1012
    new-instance v3, Lcom/netflix/mediaclient/util/SetVideoWindow;

    invoke-direct {v3, v1}, Lcom/netflix/mediaclient/util/SetVideoWindow;-><init>(Lorg/json/JSONObject;)V

    .line 1013
    .local v3, "svw":Lcom/netflix/mediaclient/util/SetVideoWindow;
    sget-object v4, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/SetVideoWindow;->getX()I

    move-result v5

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/SetVideoWindow;->getY()I

    move-result v6

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/SetVideoWindow;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/netflix/mediaclient/util/SetVideoWindow;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/netflix/ninja/NetflixService;->onVideoResize(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    .end local v1    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "svw":Lcom/netflix/mediaclient/util/SetVideoWindow;
    :cond_1
    :goto_0
    const-string v4, "netflix-service"

    const-string v5, "onJniJsonEvent done."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1015
    .restart local v1    # "jobj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StreamInfo;->isValid(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1016
    new-instance v2, Lcom/netflix/mediaclient/util/StreamInfo;

    invoke-direct {v2, v1}, Lcom/netflix/mediaclient/util/StreamInfo;-><init>(Lorg/json/JSONObject;)V

    .line 1017
    .local v2, "streamInfo":Lcom/netflix/mediaclient/util/StreamInfo;
    const-string v4, "netflix-service"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1018
    const-string v4, "netflix-service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video stream received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_3
    sget-object v4, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/StreamInfo;->getDisplayAspectRatioX()I

    move-result v5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/StreamInfo;->getDisplayAspectRatioY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/ninja/NetflixService;->onVideoSizeChanged(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1023
    .end local v1    # "jobj":Lorg/json/JSONObject;
    .end local v2    # "streamInfo":Lcom/netflix/mediaclient/util/StreamInfo;
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "netflix-service"

    const-string v5, "onJniJsonEvent failed "

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onVideoResize(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1306
    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_VIDEO_RESIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "w"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1307
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1308
    return-void
.end method

.method private onVideoSizeChanged(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1285
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged. Was: w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/ninja/NetflixService;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/ninja/NetflixService;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoSizeChanged. Update: w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_0
    iget v1, p0, Lcom/netflix/ninja/NetflixService;->mVideoWidth:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/netflix/ninja/NetflixService;->mVideoHeight:I

    if-ne v1, p2, :cond_1

    .line 1291
    const-string v1, "netflix-service"

    const-string v2, "Already known w/h, do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_0
    return-void

    .line 1294
    :cond_1
    const-string v1, "netflix-service"

    const-string v2, "Different video w/h, update"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iput p2, p0, Lcom/netflix/ninja/NetflixService;->mVideoHeight:I

    .line 1296
    iput p1, p0, Lcom/netflix/ninja/NetflixService;->mVideoWidth:I

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NETFLIXSERVICE_VIDEO_SIZE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "w"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    const-string v1, "h"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1302
    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private repostStopServiceCallback(J)V
    .locals 3
    .param p1, "when"    # J

    .prologue
    .line 542
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mStopServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 543
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mStopServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    return-void
.end method

.method private static setMute(Z)V
    .locals 3
    .param p0, "muteState"    # Z

    .prologue
    .line 968
    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v1, :cond_0

    .line 977
    :goto_0
    return-void

    .line 970
    :cond_0
    sget-object v1, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 971
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 972
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 973
    sput-boolean p0, Lcom/netflix/ninja/NetflixService;->isVolumeMuted:Z

    goto :goto_0

    .line 975
    :cond_1
    const-string v1, "netflix-service"

    const-string v2, "Audio manager unable to change mute settings"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setStreamVolume(I)V
    .locals 7
    .param p0, "volumePercent"    # I

    .prologue
    const/4 v6, 0x3

    .line 891
    const-string v3, "netflix-service"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    const-string v3, "netflix-service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    sget-object v3, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    if-nez v3, :cond_2

    .line 913
    :cond_1
    :goto_0
    return-void

    .line 897
    :cond_2
    sget-object v3, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 898
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 901
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/netflix/ninja/NetflixService;->setMute(Z)V

    .line 902
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 903
    .local v1, "maxVolume":I
    mul-int v3, v1, p0

    div-int/lit8 v2, v3, 0x64

    .line 904
    .local v2, "volumeValue":I
    const/4 v3, 0x1

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 905
    const-string v3, "netflix-service"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    const-string v3, "netflix-service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxStreamVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v3, "netflix-service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStreamVolume set to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    .end local v1    # "maxVolume":I
    .end local v2    # "volumeValue":I
    :cond_3
    const-string v3, "netflix-service"

    const-string v4, "Audio manager is not available, can not change volume"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldSendKeyEvent()Z
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;

    move-result-object v0

    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdownOnConfigError()V
    .locals 3

    .prologue
    .line 999
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_CONFIG_ERROR_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1000
    return-void
.end method

.method private startDisplayListener()V
    .locals 3

    .prologue
    .line 350
    const-string v1, "display"

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 351
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->updateDisplays()V

    .line 352
    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 353
    return-void
.end method

.method private stopDisplayListener()V
    .locals 2

    .prologue
    .line 355
    const-string v1, "display"

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 356
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 357
    return-void
.end method

.method private updateDisplays()V
    .locals 9

    .prologue
    .line 336
    const-string v6, "display"

    invoke-virtual {p0, v6}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 337
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 338
    .local v2, "displays":[Landroid/view/Display;
    const-string v6, "netflix-service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displays "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/Display;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 340
    .local v1, "d":Landroid/view/Display;
    const-string v6, "netflix-service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "has display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "d":Landroid/view/Display;
    :cond_0
    iget-object v7, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplaysLock:Ljava/lang/Object;

    monitor-enter v7

    .line 344
    :try_start_0
    iput-object v2, p0, Lcom/netflix/ninja/NetflixService;->mAvailableDisplays:[Landroid/view/Display;

    .line 345
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeVideoOutputStatusChanged()V

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method


# virtual methods
.method public configStatus()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->getConfigStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method public drmError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .param p1, "res"    # Lcom/netflix/mediaclient/android/app/Status;

    .prologue
    .line 565
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm error, error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService;->mDrmStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/ninja/NetflixService;->mInitComplete:Z

    .line 571
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_DRM_ERROR_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 572
    return-void
.end method

.method public drmReady()V
    .locals 8

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/UserLocale;->getRawDeviceLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "deviceLocale":Ljava/lang/String;
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drmReady(), ESN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/netflix/ninja/NetflixService;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getClverString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/ninja/NetflixService;->nativeSetDeviceStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmReady:Z

    .line 531
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->initCompleted()V

    .line 533
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    if-eqz v0, :cond_1

    .line 534
    const-string v0, "netflix-service"

    const-string v1, "Drm ready, GibbonUI being started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    invoke-static {v0}, Lcom/netflix/ninja/NetflixService$UiParam;->access$200(Lcom/netflix/ninja/NetflixService$UiParam;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    invoke-static {v1}, Lcom/netflix/ninja/NetflixService$UiParam;->access$300(Lcom/netflix/ninja/NetflixService$UiParam;)Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    invoke-static {v2}, Lcom/netflix/ninja/NetflixService$UiParam;->access$400(Lcom/netflix/ninja/NetflixService$UiParam;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/ninja/NetflixService;->startUi(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    .line 539
    :cond_1
    return-void
.end method

.method public drmStatus()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    return-object v0
.end method

.method public getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeGibbonState()I

    move-result v0

    .line 156
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 169
    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    :goto_0
    return-object v1

    .line 159
    :pswitch_0
    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    goto :goto_0

    .line 161
    :pswitch_1
    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ACTIVE:Lcom/netflix/ninja/NetflixService$GibbonState;

    goto :goto_0

    .line 164
    :pswitch_2
    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->SUSPENDED:Lcom/netflix/ninja/NetflixService$GibbonState;

    goto :goto_0

    .line 167
    :pswitch_3
    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public gibbonPause(Ljava/lang/String;)V
    .locals 3
    .param p1, "exitType"    # Ljava/lang/String;

    .prologue
    .line 766
    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v1, :cond_0

    .line 770
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/ninja/NetflixService;->mPlayerSurface:Landroid/view/Surface;

    .line 772
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/ninja/NetflixService;->nativeGibbonPause(Ljava/lang/String;)Z

    move-result v0

    .line 775
    .local v0, "suspended":Z
    if-nez v0, :cond_1

    .line 776
    const-string v1, "netflix-service"

    const-string v2, "Gibbon state change trouble shutting down"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->killAppProcess()V

    .line 782
    :goto_0
    return-void

    .line 779
    :cond_1
    const-string v1, "netflix-service"

    const-string v2, "Gibbon state change successful"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gibbonResetPlayer()V
    .locals 3

    .prologue
    .line 790
    const-string v0, "netflix-service"

    const-string v1, "gibbonResetPlayer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->release()V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mPlayerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 796
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->mPlayerSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/netflix/ninja/NetflixService;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;-><init>(Lcom/netflix/ninja/NetflixService;Landroid/view/Surface;Lcom/netflix/mediaclient/media/HevcCapabilityHelper;)V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .line 797
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mPlayer:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getNativePlayer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/ninja/NetflixService;->gibbonSetPlayer(J)V

    .line 799
    :cond_1
    return-void
.end method

.method public gibbonSetPlayer(J)V
    .locals 3
    .param p1, "p"    # J

    .prologue
    .line 802
    const-string v0, "netflix-service"

    const-string v1, "gibbonSetPlayer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/NetflixService;->nativeGibbonSetPlayer(J)V

    .line 805
    return-void
.end method

.method public gibbonShutdown()V
    .locals 2

    .prologue
    .line 785
    const-string v0, "netflix-service"

    const-string v1, "gibbonShutdown"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeGibbonShutdown()V

    .line 787
    return-void
.end method

.method keyDownEvent(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 592
    const-string v1, "netflix-service"

    const-string v2, "keyDownEvent"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->shouldSendKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    new-instance v1, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;-><init>(ILandroid/view/KeyEvent;)V

    invoke-static {v1}, Lcom/netflix/mediaclient/util/InputUtils;->mapKeys(Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;)Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    move-result-object v0

    .line 596
    .local v0, "wrapper":Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    iget v1, v0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    iget-object v2, v0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->event:Landroid/view/KeyEvent;

    invoke-direct {p0, v1, v2}, Lcom/netflix/ninja/NetflixService;->nativeKeyDownEvent(ILandroid/view/KeyEvent;)V

    .line 598
    .end local v0    # "wrapper":Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    :cond_0
    return-void
.end method

.method keyMultipleEvent(ILandroid/view/KeyEvent;I)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "repeatCount"    # I

    .prologue
    const/4 v5, 0x3

    .line 650
    const-string v2, "netflix-service"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    const-string v2, "netflix-service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyMultipleEvent:: keyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeatCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->shouldSendKeyEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    :goto_0
    return-void

    .line 658
    :cond_1
    if-nez p1, :cond_3

    .line 660
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "raw":Ljava/lang/String;
    const-string v2, "netflix-service"

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    const-string v2, "netflix-service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Special case for keyMultiple, keyCode is UNKOWN, use getCharacters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/netflix/ninja/NetflixService;->nativeKeyMultipleRawEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 668
    .end local v0    # "raw":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    invoke-direct {v2, p1, p2}, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;-><init>(ILandroid/view/KeyEvent;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/util/InputUtils;->mapKeys(Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;)Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    move-result-object v1

    .line 669
    .local v1, "wrapper":Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    iget v2, v1, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    iget-object v3, v1, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->event:Landroid/view/KeyEvent;

    invoke-direct {p0, v2, v3, p3}, Lcom/netflix/ninja/NetflixService;->nativeKeyMultipleEvent(ILandroid/view/KeyEvent;I)V

    goto :goto_0
.end method

.method keyRawEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 631
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyRawEvent:: raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->shouldSendKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/ninja/NetflixService;->nativeKeyMultipleRawEvent(Ljava/lang/String;I)V

    .line 637
    :cond_1
    return-void
.end method

.method keyUpEvent(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 607
    const-string v1, "netflix-service"

    const-string v2, "keyUpEvent"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->shouldSendKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    new-instance v1, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;-><init>(ILandroid/view/KeyEvent;)V

    invoke-static {v1}, Lcom/netflix/mediaclient/util/InputUtils;->mapKeys(Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;)Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;

    move-result-object v0

    .line 611
    .local v0, "wrapper":Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    iget v1, v0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->keyCode:I

    iget-object v2, v0, Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;->event:Landroid/view/KeyEvent;

    invoke-direct {p0, v1, v2}, Lcom/netflix/ninja/NetflixService;->nativeKeyUpEvent(ILandroid/view/KeyEvent;)V

    .line 613
    .end local v0    # "wrapper":Lcom/netflix/mediaclient/util/InputUtils$KeyWrapper;
    :cond_0
    return-void
.end method

.method public notifyVolumeChanged()V
    .locals 2

    .prologue
    .line 674
    const-string v0, "netflix-service"

    const-string v1, "notifyVolumeChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->nativeNotifyVolumeChanged()V

    .line 676
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 431
    const-string v0, "netflix-service"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "netflix-service"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 269
    sput-object p0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    .line 273
    const-string v0, "netflix-service"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "netflix-service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/ninja/NetflixService;->getNetflixModelGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->initNrdLib()V

    .line 279
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mConfigurationAgent:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;->init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;)V

    .line 281
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHdmiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 282
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    .line 284
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->startDisplayListener()V

    .line 285
    invoke-static {}, Lcom/netflix/ninja/HdcpLevelDetector;->getCurrentHdcpLevel()Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mCurrentHdcpLevel:Lcom/netflix/ninja/HdcpLevelDetector$DeviceHdcpLevel;

    .line 286
    new-instance v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    .line 287
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "netflix-service"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->stopDisplayListener()V

    .line 385
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHdmiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 386
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 388
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->gibbonShutdown()V

    .line 389
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->drmShutdown()V

    .line 391
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    .line 393
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 394
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->killAppProcess()V

    .line 395
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 438
    const-string v0, "netflix-service"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 365
    const-string v0, "netflix-service"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-boolean v0, p0, Lcom/netflix/ninja/NetflixService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/ninja/NetflixService;->doStartCommand(Landroid/content/Intent;II)V

    .line 373
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mInitCallbacks:Ljava/util/List;

    new-instance v1, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;-><init>(Lcom/netflix/ninja/NetflixService;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 444
    const-string v0, "netflix-service"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mDrmStatusCode:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const-string v0, "netflix-service"

    const-string v1, "starting shutdown timer (no Activity attached)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-wide/32 v0, 0xdbba00

    invoke-direct {p0, v0, v1}, Lcom/netflix/ninja/NetflixService;->repostStopServiceCallback(J)V

    .line 455
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 450
    :cond_0
    const-string v0, "netflix-service"

    const-string v1, "activity going away and drm startup failed, shutting down immediately"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->stopSelf()V

    goto :goto_0
.end method

.method public playerStop()V
    .locals 4

    .prologue
    .line 825
    const-string v0, "netflix-service"

    const-string v1, "playerStop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/ninja/NetflixService$5;

    invoke-direct {v1, p0}, Lcom/netflix/ninja/NetflixService$5;-><init>(Lcom/netflix/ninja/NetflixService;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 837
    return-void
.end method

.method simulateKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 623
    const-string v0, "netflix-service"

    const-string v1, "keyDownAndUpEvent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0}, Lcom/netflix/ninja/NetflixService;->shouldSendKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/NetflixService;->nativeKeyDownAndUpEvent(ILandroid/view/KeyEvent;)V

    .line 628
    :cond_0
    return-void
.end method

.method public startUi(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V
    .locals 4
    .param p1, "gibbonSurface"    # Landroid/view/Surface;
    .param p2, "playerSurface"    # Landroid/view/Surface;
    .param p3, "params"    # Lcom/netflix/ninja/StartupParameters;

    .prologue
    .line 687
    iget-boolean v1, p0, Lcom/netflix/ninja/NetflixService;->mDrmReady:Z

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;

    move-result-object v0

    .line 689
    .local v0, "state":Lcom/netflix/ninja/NetflixService$GibbonState;
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartUi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/netflix/ninja/NetflixService;->getStartupString(Lcom/netflix/ninja/StartupParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Gibbon State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService$GibbonState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    sget-object v1, Lcom/netflix/ninja/NetflixService$9;->$SwitchMap$com$netflix$ninja$NetflixService$GibbonState:[I

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService$GibbonState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 709
    .end local v0    # "state":Lcom/netflix/ninja/NetflixService$GibbonState;
    :goto_0
    return-void

    .line 695
    .restart local v0    # "state":Lcom/netflix/ninja/NetflixService$GibbonState;
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/netflix/ninja/NetflixService;->gibbonStartup(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;Z)V

    goto :goto_0

    .line 698
    :pswitch_1
    const-string v1, "netflix-service"

    const-string v2, "Already active"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/ninja/NetflixService;->gibbonResume(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V

    goto :goto_0

    .line 707
    .end local v0    # "state":Lcom/netflix/ninja/NetflixService$GibbonState;
    :cond_1
    new-instance v1, Lcom/netflix/ninja/NetflixService$UiParam;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/ninja/NetflixService$UiParam;-><init>(Lcom/netflix/ninja/NetflixService;Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V

    iput-object v1, p0, Lcom/netflix/ninja/NetflixService;->mUiParams:Lcom/netflix/ninja/NetflixService$UiParam;

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopUi(Ljava/lang/String;)V
    .locals 4
    .param p1, "exit_type"    # Ljava/lang/String;

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;

    move-result-object v0

    .line 713
    .local v0, "state":Lcom/netflix/ninja/NetflixService$GibbonState;
    const-string v1, "netflix-service"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const-string v1, "netflix-service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StopUi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Gibbon State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService$GibbonState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    sget-object v1, Lcom/netflix/ninja/NetflixService$9;->$SwitchMap$com$netflix$ninja$NetflixService$GibbonState:[I

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService$GibbonState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 729
    :goto_0
    return-void

    .line 718
    :pswitch_0
    const-string v1, "netflix-service"

    const-string v2, "Absent do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/netflix/ninja/NetflixService;->gibbonPause(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :pswitch_2
    const-string v1, "netflix-service"

    const-string v2, "Already suspended do nothing"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public touchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 679
    const-string v0, "netflix-service"

    const-string v1, "touchEvent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/ninja/NetflixService;->getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;

    move-result-object v0

    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    if-eq v0, v1, :cond_0

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/NetflixService;->nativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 683
    :cond_0
    return-void
.end method

.method public triggerShutdown()V
    .locals 3

    .prologue
    .line 732
    const-string v0, "netflix-service"

    const-string v1, "triggerShutdown"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-object v0, Lcom/netflix/ninja/NetflixService;->sInstance:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_SHUTDOWN_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 734
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService;->mShutInstantly:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 735
    return-void
.end method
