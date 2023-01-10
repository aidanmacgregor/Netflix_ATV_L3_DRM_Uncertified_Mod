.class Lcom/netflix/ninja/MainActivity$3;
.super Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/ninja/MainActivity;->reportDialConnection(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$3;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0, p2}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onConnectCompleted(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 346
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CastReceiver::onConnectCompleted:  sucess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    if-eqz p1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$3;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->notifyStarted()Z

    .line 352
    :cond_1
    return-void
.end method

.method protected onStopReceived()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "netflix-activity"

    const-string v1, "CastReceiver::onStopReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$3;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$000(Lcom/netflix/ninja/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$3;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$200(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService;->triggerShutdown()V

    .line 360
    :cond_0
    return-void
.end method
