.class public final Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;
.super Ljava/lang/Object;
.source "AudioHdmiNotifyNflx.java"


# static fields
.field public static final ACTION_HDMI_AUDIO_PLUG_INTENT:Ljava/lang/String; = "com.netflix.intent.action.HDMI_AUDIO_PLUG"

.field public static final EXTRA_HDMI_AUDIO_5P1_SUPPORT:Ljava/lang/String; = "support5p1"

.field public static final EXTRA_HDMI_AUDIO_DDP_SUPPORT:Ljava/lang/String; = "supportddp"

.field public static final EXTRA_HDMI_AUDIO_NEEDPAUSE:Ljava/lang/String; = "needpause"

.field public static final EXTRA_HDMI_AUDIO_NEEDSTOP:Ljava/lang/String; = "needstop"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.netflix.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method private static getNotifyAudioHdmiStateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support5p1"    # Z
    .param p2, "supportddp"    # Z

    .prologue
    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "support5p1"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "supportddp"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static notifyAudioHdmiState(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support5p1"    # Z
    .param p2, "supportddp"    # Z

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->getNotifyAudioHdmiStateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static notifyAudioHdmiStatePausePlayback(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support5p1"    # Z
    .param p2, "supportddp"    # Z

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->getNotifyAudioHdmiStateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "needpause"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public static notifyAudioHdmiStateStopPlayback(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "support5p1"    # Z
    .param p2, "supportddp"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->getNotifyAudioHdmiStateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "needstop"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
