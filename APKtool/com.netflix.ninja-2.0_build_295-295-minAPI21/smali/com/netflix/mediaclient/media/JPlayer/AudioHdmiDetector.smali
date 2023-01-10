.class public final Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;
.super Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;
.source "AudioHdmiDetector.java"


# static fields
.field private static final ACTION_HDMI_AUDIO_PLUG_INTENT:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field private static final EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field private static final EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field private static final EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioHdmiRecevier:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;-><init>()V

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mAudioHdmiRecevier:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mCallback:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mCallback:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;Landroid/content/Intent;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->parseIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    move-result-object v0

    return-object v0
.end method

.method private parseIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    sget-object v3, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got inent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz p1, :cond_0

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "pluggedState":I
    const-string v3, "android.media.extra.ENCODINGS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 61
    .local v0, "formats":[I
    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, "maxChannels":I
    new-instance v3, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;-><init>(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;I[II)V

    .line 64
    .end local v0    # "formats":[I
    .end local v1    # "maxChannels":I
    .end local v2    # "pluggedState":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method printarray([I)Ljava/lang/String;
    .locals 6
    .param p1, "d"    # [I

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v2, "null"

    .line 79
    :goto_0
    return-object v2

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v1, "line":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 77
    const-string v2, "%04x  "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public startAudioHdmiDetector()Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;
    .locals 4

    .prologue
    .line 37
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->TAG:Ljava/lang/String;

    const-string v3, "startAudioHdmiDetector"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mAudioHdmiRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->parseIntent(Landroid/content/Intent;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    move-result-object v2

    return-object v2
.end method

.method public stopAudioHdmiDetector()V
    .locals 4

    .prologue
    .line 44
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->TAG:Ljava/lang/String;

    const-string v2, "stopAudioHdmiDetector"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->mAudioHdmiRecevier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
