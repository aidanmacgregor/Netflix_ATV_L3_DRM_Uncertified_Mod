.class public Lcom/netflix/ninja/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/ninja/MainActivity$8;,
        Lcom/netflix/ninja/MainActivity$UiReceiver;,
        Lcom/netflix/ninja/MainActivity$MainActivityState;
    }
.end annotation


# static fields
.field public static final ACTION_DISPLAY_ERROR:Ljava/lang/String; = "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

.field private static final DELAY_NETWORK_CHECK:I = 0x3e8

.field private static final DELAY_NETWORK_CHECK_MAX:I = 0x3

.field public static final EXTRA_IN_BACKGROUND:Ljava/lang/String; = "in_background"

.field public static final EXTRA_PARAM_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_PARAM_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_PARAM_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "netflix-activity"

.field public static final UserExit:Ljava/lang/String; = "exit_type=2"

.field public static final VIDEOOUTPUT_HEIGHT:I = 0x438

.field public static final VIDEOOUTPUT_WIDTH:I = 0x780

.field private static sIsUIInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field gibbonViewSurface:Landroid/view/SurfaceHolder$Callback;

.field private mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

.field private mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mDisplayErrorReceiver:Landroid/content/BroadcastReceiver;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mGibbonView:Landroid/view/SurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoPlaying:Z

.field private mLastChar:I

.field private mMetaState:J

.field private mPlayerContainer:Landroid/widget/RelativeLayout;

.field private mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

.field public mReceiver:Lcom/netflix/ninja/MainActivity$UiReceiver;

.field private mService:Lcom/netflix/ninja/NetflixService;

.field private mStartupParameters:Lcom/netflix/ninja/StartupParameters;

.field private mVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private noNtwkDialog:Landroid/app/AlertDialog;

.field playerViewSurface:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netflix/ninja/MainActivity;->sIsUIInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput v1, p0, Lcom/netflix/ninja/MainActivity;->mLastChar:I

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    new-instance v0, Lcom/netflix/ninja/MainActivity$MainActivityState;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$MainActivityState;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    .line 226
    new-instance v0, Lcom/netflix/ninja/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$1;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->playerViewSurface:Landroid/view/SurfaceHolder$Callback;

    .line 251
    new-instance v0, Lcom/netflix/ninja/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$2;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->gibbonViewSurface:Landroid/view/SurfaceHolder$Callback;

    .line 696
    new-instance v0, Lcom/netflix/ninja/MainActivity$UiReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$UiReceiver;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mReceiver:Lcom/netflix/ninja/MainActivity$UiReceiver;

    .line 730
    new-instance v0, Lcom/netflix/ninja/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$5;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 1052
    new-instance v0, Lcom/netflix/ninja/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/MainActivity$7;-><init>(Lcom/netflix/ninja/MainActivity;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mDisplayErrorReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/ninja/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/StartupParameters;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mStartupParameters:Lcom/netflix/ninja/StartupParameters;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->handlePlaybackStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->handlePlaybackEnded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/ninja/MainActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->handleVideoSizeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/ninja/MainActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->handleVideoResize(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->onServiceAttached()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->onServiceDetached()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/ninja/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/ninja/MainActivity;ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/netflix/mediaclient/StatusCode;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/MainActivity;->getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/ninja/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->displayNativeError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/NetflixService;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/ninja/MainActivity;Lcom/netflix/ninja/NetflixService;)Lcom/netflix/ninja/NetflixService;
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # Lcom/netflix/ninja/NetflixService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/ninja/MainActivity;Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;
    .param p1, "x1"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/ninja/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/ninja/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->displayNativeDrmError()V

    return-void
.end method

.method static synthetic access$900(Lcom/netflix/ninja/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/ninja/MainActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->displayNativeConfigError()V

    return-void
.end method

.method private checkForNetflixKey(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x61

    const/4 v5, 0x0

    .line 302
    const-string v3, "source_type"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(I)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v1

    .line 303
    .local v1, "sourceType":Lcom/netflix/ninja/StartupParameters$SourceType;
    const-string v3, "in_background"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 304
    .local v2, "wasInBackground":Z
    sget-object v3, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-ne v1, v3, :cond_3

    .line 305
    :cond_0
    if-eqz v2, :cond_2

    .line 306
    const-string v3, "netflix-activity"

    const-string v4, "Netflix Key pressed when application is in background, do NOT pass Netflix key to Gibbon."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    const-string v3, "netflix-activity"

    const-string v4, "Netflix Key pressed when application is in foreground"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    .line 310
    .local v0, "key":Landroid/view/KeyEvent;
    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->setSource(I)V

    .line 312
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v3, v6, v0}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 317
    .end local v0    # "key":Landroid/view/KeyEvent;
    :cond_3
    const-string v3, "netflix-activity"

    const-string v4, "Ignoring intent"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->setContentView(I)V

    .line 207
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 208
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    .line 209
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 210
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    .line 212
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setFocusable(Z)V

    .line 213
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setFocusableInTouchMode(Z)V

    .line 214
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 216
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->playerViewSurface:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 219
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 220
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 222
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 223
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->gibbonViewSurface:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 224
    return-void
.end method

.method private displayNativeConfigError()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 540
    const-string v2, "netflix-activity"

    const-string v3, "displayNativeConfigError"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 544
    .local v1, "status":Lcom/netflix/mediaclient/android/app/Status;
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/ninja/NetflixService;->configStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 548
    :cond_0
    sget-object v2, Lcom/netflix/ninja/MainActivity$8;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 560
    const v2, 0x7f060007

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netflix/ninja/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "errorString":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/ninja/MainActivity;->displayNativeError(Ljava/lang/String;)V

    .line 565
    return-void

    .line 550
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f060006

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netflix/ninja/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f060005

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/netflix/ninja/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private displayNativeDrmError()V
    .locals 6

    .prologue
    .line 568
    const-string v2, "netflix-activity"

    const-string v3, "displayNativeDrmError"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 571
    .local v1, "status":Lcom/netflix/mediaclient/android/app/Status;
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/ninja/NetflixService;->drmStatus()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 575
    :cond_0
    const v2, 0x7f060004

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/netflix/ninja/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "errorString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/netflix/ninja/MainActivity;->displayNativeError(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private displayNativeError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 525
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "netflix-activity"

    const-string v1, "displayNativeErrorerrorString: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/ninja/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/netflix/ninja/MainActivity$4;-><init>(Lcom/netflix/ninja/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 537
    return-void
.end method

.method private getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "statusCode"    # Lcom/netflix/mediaclient/StatusCode;

    .prologue
    const v4, 0x7f060009

    .line 1086
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_1

    .line 1087
    invoke-virtual {p0, v4}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1098
    :cond_0
    :goto_0
    return-object v0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    .line 1090
    .local v0, "text":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 1091
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/netflix/ninja/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :goto_1
    if-nez v0, :cond_0

    .line 1096
    invoke-virtual {p0, v4}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1093
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getWindowFlags()I
    .locals 1

    .prologue
    .line 195
    const v0, 0x200080

    return v0
.end method

.method private handleOnKeyDownAsAccented(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "accented":Z
    iget-wide v6, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v6, v7, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    .line 942
    iget-wide v6, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v6, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    .line 943
    .local v1, "c":I
    move v4, v1

    .line 944
    .local v4, "lc":I
    iget-wide v6, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v6, v7}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    .line 945
    const/4 v2, 0x0

    .line 947
    .local v2, "compString":Ljava/lang/String;
    const/high16 v5, -0x80000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 948
    const v5, 0x7fffffff

    and-int/2addr v1, v5

    .line 949
    iget v5, p0, Lcom/netflix/ninja/MainActivity;->mLastChar:I

    invoke-static {v5, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    .line 950
    .local v3, "composed":I
    const/4 v0, 0x1

    .line 951
    move v1, v3

    .line 952
    int-to-char v5, v1

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    .line 954
    const-string v5, "netflix-activity"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 955
    const-string v5, "netflix-activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleOnKeyDownAsUnicode:: accent used, composed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 959
    iget-object v5, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v5, v2}, Lcom/netflix/ninja/NetflixService;->keyRawEvent(Ljava/lang/String;)V

    .line 963
    .end local v3    # "composed":I
    :cond_1
    iput v4, p0, Lcom/netflix/ninja/MainActivity;->mLastChar:I

    .line 964
    return v0
.end method

.method private handleOnKeyDownAsUnicode(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x3

    .line 910
    iget-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v4, v5, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    .line 911
    iget-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v4, v5}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 912
    .local v0, "c":I
    move v3, v0

    .line 913
    .local v3, "lc":I
    iget-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v4, v5}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    .line 914
    const/4 v1, 0x0

    .line 916
    .local v1, "compString":Ljava/lang/String;
    const/high16 v4, -0x80000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 917
    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 918
    iget v4, p0, Lcom/netflix/ninja/MainActivity;->mLastChar:I

    invoke-static {v4, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 919
    .local v2, "composed":I
    move v0, v2

    .line 920
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 922
    const-string v4, "netflix-activity"

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    const-string v4, "netflix-activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOnKeyDownAsUnicode:: accent used, composed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v2    # "composed":I
    :cond_0
    :goto_0
    iput v3, p0, Lcom/netflix/ninja/MainActivity;->mLastChar:I

    .line 933
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 934
    iget-object v4, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v4, v1}, Lcom/netflix/ninja/NetflixService;->keyRawEvent(Ljava/lang/String;)V

    .line 936
    :cond_1
    return-void

    .line 926
    :cond_2
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 927
    const-string v4, "netflix-activity"

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 928
    const-string v4, "netflix-activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleOnKeyDownAsUnicode:: unicode value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePlaybackEnded()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 681
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 683
    .local v1, "playerParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v2, v4, v4}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoResize(II)V

    .line 686
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/netflix/ninja/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 687
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 689
    const-string v2, "netflix-activity"

    const-string v3, "Playback ended, audio focus released"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    iput-boolean v4, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    .line 694
    return-void

    .line 691
    :cond_0
    const-string v2, "netflix-activity"

    const-string v3, "Playback ended, audio manager not found. Unable to ask to release audio focus!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePlaybackStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 669
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 670
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 671
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 672
    const-string v1, "netflix-activity"

    const-string v2, "Playback started, audio focus gained"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_0
    iput-boolean v3, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    .line 677
    return-void

    .line 674
    :cond_0
    const-string v1, "netflix-activity"

    const-string v2, "Playback started, audio manager not found. Unable to ask for audio focus!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleVideoResize(Landroid/content/Intent;)V
    .locals 12
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 626
    const-string v7, "w"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 627
    .local v3, "w":I
    const-string v7, "h"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 628
    .local v0, "h":I
    const-string v7, "x"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 629
    .local v5, "x":I
    const-string v7, "y"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 630
    .local v6, "y":I
    const-string v7, "netflix-activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleVideoResize: @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 632
    const-string v7, "netflix-activity"

    const-string v8, "RESIZED SCREEN"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    .line 634
    .local v4, "width":I
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 635
    .local v1, "height":I
    mul-int v7, v3, v4

    div-int/lit16 v3, v7, 0x780

    .line 636
    mul-int v7, v0, v1

    div-int/lit16 v0, v7, 0x438

    .line 637
    mul-int v7, v5, v4

    div-int/lit16 v5, v7, 0x780

    .line 638
    mul-int v7, v6, v1

    div-int/lit16 v6, v7, 0x438

    .line 639
    const-string v7, "netflix-activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "X"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", VideoResize: @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 642
    .local v2, "postplayParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v5, v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 643
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v7, v3, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoResize(II)V

    .line 654
    .end local v1    # "height":I
    .end local v4    # "width":I
    :goto_0
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->forceLayout()V

    .line 655
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->invalidate()V

    .line 656
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 658
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 659
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 660
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 662
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 663
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->invalidate()V

    .line 664
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 665
    return-void

    .line 648
    .end local v2    # "postplayParam":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const-string v7, "netflix-activity"

    const-string v8, "FULL SCREEN"

    invoke-static {v7, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v2, v11, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 651
    .restart local v2    # "postplayParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object v7, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v7, v10, v10}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoResize(II)V

    goto :goto_0
.end method

.method private handleVideoSizeChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 617
    const-string v0, "w"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    :cond_0
    const-string v0, "netflix-activity"

    const-string v1, "We received video size changed intent, without w/h!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v0, "netflix-activity"

    const-string v1, "We received video size changed intent, sets video w/h!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "w"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "h"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/ninja/MainActivity;->setSurface(II)V

    goto :goto_0
.end method

.method private initService(I)V
    .locals 9
    .param p1, "count"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 825
    :cond_0
    const-string v4, "netflix-activity"

    const-string v5, "Activity is gpme, do not attempt to initiate NRDLib"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    .line 831
    .local v1, "networkConnected":Z
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v2

    .line 832
    .local v2, "networkConnectedOrConnecting":Z
    if-le p1, v7, :cond_4

    move v3, v4

    .line 833
    .local v3, "noMoreAttempts":Z
    :goto_1
    const-string v6, "netflix-activity"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 834
    const-string v6, "netflix-activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Init service attempt # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", more attempts "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_5

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", network connected "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " or connecting "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_2
    if-nez v2, :cond_3

    invoke-static {}, Lcom/netflix/ninja/NetflixService;->isInstanceCreated()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 839
    :cond_3
    const-string v4, "netflix-activity"

    const-string v5, "Attach to service"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceAttach()V

    goto :goto_0

    .end local v3    # "noMoreAttempts":Z
    :cond_4
    move v3, v5

    .line 832
    goto :goto_1

    .restart local v3    # "noMoreAttempts":Z
    :cond_5
    move v4, v5

    .line 834
    goto :goto_2

    .line 842
    :cond_6
    const v4, 0x7f06000a

    sget-object v6, Lcom/netflix/mediaclient/android/app/CommonStatus;->NO_CONNECTIVITY:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/netflix/ninja/MainActivity;->getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "message":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f060003

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {p0, v5}, Lcom/netflix/ninja/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/ninja/MainActivity$6;

    invoke-direct {v6, p0}, Lcom/netflix/ninja/MainActivity$6;-><init>(Lcom/netflix/ninja/MainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/ninja/MainActivity;->noNtwkDialog:Landroid/app/AlertDialog;

    .line 853
    iget-object v4, p0, Lcom/netflix/ninja/MainActivity;->noNtwkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method static isUIInForeground()Z
    .locals 1

    .prologue
    .line 1111
    sget-object v0, Lcom/netflix/ninja/MainActivity;->sIsUIInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private onServiceAttached()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "netflix-activity"

    const-string v1, "onServiceAttached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToRunning()V

    .line 495
    :cond_0
    return-void
.end method

.method private onServiceDetached()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "netflix-activity"

    const-string v1, "onServiceDetached"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private reportDialConnection(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 337
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Landroid/content/Intent;)V

    .line 338
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "netflix-activity"

    const-string v1, "Cast receiver connection exist!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->connect()V

    .line 367
    :cond_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    new-instance v1, Lcom/netflix/ninja/MainActivity$3;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/ninja/MainActivity$3;-><init>(Lcom/netflix/ninja/MainActivity;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;-><init>(Landroid/content/Context;Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;)V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mCastReceiverConnection:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    goto :goto_0
.end method

.method private serviceAttach()V
    .locals 4

    .prologue
    .line 502
    const-string v1, "netflix-activity"

    const-string v2, "serviceAttach"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netflix/ninja/NetflixService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/netflix/ninja/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netflix/ninja/NetflixService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/netflix/ninja/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 508
    .local v0, "bindingOk":Z
    if-nez v0, :cond_0

    .line 509
    const-string v1, "netflix-activity"

    const-string v2, "bindService failed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    return-void
.end method

.method private serviceDetach()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "netflix-activity"

    const-string v1, "serviceDetach"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/netflix/ninja/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 516
    return-void
.end method

.method private serviceIsAttached()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStartupParameters(Landroid/content/Intent;)V
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 329
    invoke-static {p1}, Lcom/netflix/ninja/StartupParametersFactory;->createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mStartupParameters:Lcom/netflix/ninja/StartupParameters;

    .line 330
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mStartupParameters:Lcom/netflix/ninja/StartupParameters;

    invoke-interface {v0}, Lcom/netflix/ninja/StartupParameters;->getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v0

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->dial:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-ne v0, v1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->reportDialConnection(Landroid/content/Intent;)V

    .line 333
    :cond_0
    return-void
.end method

.method private setSurface(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 785
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 786
    .local v0, "playerView":Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
    if-nez v0, :cond_0

    .line 787
    const-string v1, "netflix-activity"

    const-string v2, "Player view is not available anymore!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-void

    .line 791
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 792
    :cond_1
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid aspect ratio width("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or aspect ratio height("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_2
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 796
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MP onVideoSizeChanged: aspect ratio width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aspect ratio height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoSize(II)V

    .line 802
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->forceLayout()V

    .line 803
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->invalidate()V

    .line 804
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 806
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 807
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 808
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 810
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->forceLayout()V

    .line 811
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 812
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0
.end method

.method private shouldHandleOnKeyUpAsAccented(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "accented":Z
    iget-wide v2, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    .line 1026
    .local v1, "c":I
    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 1027
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 1028
    const/4 v0, 0x1

    .line 1030
    :cond_0
    return v0
.end method


# virtual methods
.method public addMessageReceiver()V
    .locals 3

    .prologue
    .line 713
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 714
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mDisplayErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 717
    return-void
.end method

.method public addReceiver()V
    .locals 3

    .prologue
    .line 699
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 700
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "NETFLIXSERVICE_SHUTDOWN_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v1, "NETFLIXSERVICE_DRM_ERROR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v1, "NETFLIXSERVICE_CONFIG_ERROR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v1, "NETFLIXSERVICE_PLAYBACK_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v1, "NETFLIXSERVICE_PLAYBACK_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v1, "NETFLIXSERVICE_VIDEO_SIZE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v1, "NETFLIXSERVICE_VIDEO_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    const-string v1, "NETFLIXSERVICE_SHUTDOWN_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/MainActivity;->mReceiver:Lcom/netflix/ninja/MainActivity$UiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 710
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    .line 753
    const-string v0, ""

    .line 754
    .local v0, "eventType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 775
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uknowwn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    :goto_0
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    return-void

    .line 756
    :pswitch_1
    const-string v0, "AUDIOFOCUS_GAIN"

    .line 757
    goto :goto_0

    .line 759
    :pswitch_2
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    .line 760
    goto :goto_0

    .line 762
    :pswitch_3
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    .line 763
    goto :goto_0

    .line 765
    :pswitch_4
    const-string v0, "AUDIOFOCUS_LOSS"

    .line 766
    goto :goto_0

    .line 768
    :pswitch_5
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    .line 769
    goto :goto_0

    .line 771
    :pswitch_6
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    .line 772
    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const-string v0, "netflix-activity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/MainActivity;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/ninja/MainActivity;->setStartupParameters(Landroid/content/Intent;)V

    .line 181
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->createUi()V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->addReceiver()V

    .line 183
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->addMessageReceiver()V

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/ninja/MainActivity;->initService(I)V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 377
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, finishing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->isFinishing()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-static {}, Lcom/netflix/ninja/NetflixService;->isInstanceCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceDetach()V

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->removeReceiver()V

    .line 385
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->removeMessageReceiver()V

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 883
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown:: keycode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unicode char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", raw unicode char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event keycode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa4

    if-ne p1, v1, :cond_3

    .line 888
    :cond_1
    const-string v1, "netflix-activity"

    const-string v2, "Volume key is pressed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 892
    .local v0, "val":Z
    iget-boolean v1, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    if-eqz v1, :cond_2

    .line 893
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/ninja/NetflixService;->notifyVolumeChanged()V

    .line 905
    .end local v0    # "val":Z
    :cond_2
    :goto_0
    return v0

    .line 897
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/util/InputUtils;->shouldHandleAsUnicode(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/MainActivity;->handleOnKeyDownAsUnicode(ILandroid/view/KeyEvent;)V

    .line 905
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 899
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/MainActivity;->handleOnKeyDownAsAccented(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 900
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 901
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/ninja/NetflixService;->keyDownEvent(ILandroid/view/KeyEvent;)V

    goto :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 974
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyLongPress:: keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/ninja/NetflixService;->keyMultipleEvent(ILandroid/view/KeyEvent;I)V

    .line 989
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 999
    iget-wide v2, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-static {v2, v3, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    .line 1001
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp:: keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMetaState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/netflix/ninja/MainActivity;->mMetaState:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_0
    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa4

    if-ne p1, v1, :cond_3

    .line 1006
    :cond_1
    const-string v0, "netflix-activity"

    const-string v1, "Volume key is released"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1019
    :cond_2
    :goto_0
    return v0

    .line 1010
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/util/InputUtils;->shouldHandleAsUnicode(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/MainActivity;->shouldHandleOnKeyUpAsAccented(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1015
    :cond_4
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/ninja/NetflixService;->keyUpEvent(ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 287
    const-string v0, "netflix-activity"

    const-string v1, "Received new intent when UI is visible"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Landroid/content/Intent;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->checkForNetflixKey(Landroid/content/Intent;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/netflix/ninja/MainActivity;->setStartupParameters(Landroid/content/Intent;)V

    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/16 v3, 0x7f

    .line 396
    const-string v1, "netflix-activity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/netflix/ninja/MainActivity;->getWindowFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 398
    iget-boolean v1, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    if-eqz v1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 401
    .local v0, "key":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, v3, v0}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    .line 404
    .end local v0    # "key":Landroid/view/KeyEvent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "netflix-activity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/netflix/ninja/MainActivity;->getWindowFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 421
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToRunning()V

    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 424
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/16 v4, 0x54

    const/4 v1, 0x0

    .line 1040
    const-string v2, "netflix-activity"

    const-string v3, "onSearchRequested"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1043
    const-string v2, "netflix-activity"

    const-string v3, "onSearchRequested execute"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1045
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, v4, v0}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    .line 1046
    const/4 v1, 0x1

    .line 1048
    .end local v0    # "event":Landroid/view/KeyEvent;
    :cond_0
    return v1
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/16 v4, 0x56

    const/4 v3, 0x0

    .line 432
    const-string v1, "netflix-activity"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->noNtwkDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->noNtwkDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 436
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/ninja/MainActivity;->noNtwkDialog:Landroid/app/AlertDialog;

    .line 437
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->finish()V

    .line 440
    :cond_0
    iget-boolean v1, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 442
    .local v0, "key":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, v4, v0}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    .line 445
    .end local v0    # "key":Landroid/view/KeyEvent;
    :cond_1
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    invoke-virtual {v1}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToSuspend()V

    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 448
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/ninja/NetflixService;->touchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 872
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 410
    const-string v0, "netflix-activity"

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 471
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: Focus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    sget-object v0, Lcom/netflix/ninja/MainActivity;->sIsUIInForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 475
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mActivityState:Lcom/netflix/ninja/MainActivity$MainActivityState;

    iput-boolean p1, v0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mWindowFocus:Z

    .line 477
    if-nez p1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/netflix/ninja/MainActivity;->pauseVideoAndDisableViewVisibility()V

    .line 483
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 484
    return-void

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected pauseVideoAndDisableViewVisibility()V
    .locals 4

    .prologue
    const/16 v2, 0x7f

    const/4 v3, 0x4

    .line 451
    iget-boolean v1, p0, Lcom/netflix/ninja/MainActivity;->mIsVideoPlaying:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/ninja/MainActivity;->serviceIsAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 453
    .local v0, "key":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    .line 457
    .end local v0    # "key":Landroid/view/KeyEvent;
    :cond_0
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/ninja/NetflixService;->getGibbonState()Lcom/netflix/ninja/NetflixService$GibbonState;

    move-result-object v1

    sget-object v2, Lcom/netflix/ninja/NetflixService$GibbonState;->ACTIVE:Lcom/netflix/ninja/NetflixService$GibbonState;

    if-ne v1, v2, :cond_1

    .line 458
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mGibbonView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mPlayerView:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVisibility(I)V

    .line 461
    :cond_1
    return-void
.end method

.method public removeMessageReceiver()V
    .locals 2

    .prologue
    .line 724
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mDisplayErrorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 725
    return-void
.end method

.method public removeReceiver()V
    .locals 2

    .prologue
    .line 720
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/MainActivity;->mReceiver:Lcom/netflix/ninja/MainActivity$UiReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 721
    return-void
.end method
