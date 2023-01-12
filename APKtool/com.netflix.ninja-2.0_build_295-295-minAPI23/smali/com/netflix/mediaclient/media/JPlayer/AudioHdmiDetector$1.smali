.class Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioHdmiDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->access$000(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->access$100(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;Landroid/content/Intent;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    move-result-object v0

    .line 24
    .local v0, "hdmiInfo":Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;
    if-eqz v0, :cond_0

    .line 25
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    invoke-static {v1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;->access$000(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;)Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;->onAudioHdmiChanged(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;)V

    .line 28
    .end local v0    # "hdmiInfo":Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;
    :cond_0
    return-void
.end method
