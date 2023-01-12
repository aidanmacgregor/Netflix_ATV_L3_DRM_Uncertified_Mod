.class public Lcom/netflix/ninja/MainActivity$UiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/ninja/MainActivity;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 586
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received action request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    const-string v0, "NETFLIXSERVICE_SHUTDOWN_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    const-string v0, "netflix-activity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity;->finish()V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    const-string v0, "NETFLIXSERVICE_DRM_ERROR_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    const-string v0, "netflix-activity"

    const-string v1, "drm error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$800(Lcom/netflix/ninja/MainActivity;)V

    goto :goto_0

    .line 596
    :cond_3
    const-string v0, "NETFLIXSERVICE_CONFIG_ERROR_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    const-string v0, "netflix-activity"

    const-string v1, "config error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$900(Lcom/netflix/ninja/MainActivity;)V

    goto :goto_0

    .line 599
    :cond_4
    const-string v0, "NETFLIXSERVICE_PLAYBACK_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 600
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$1000(Lcom/netflix/ninja/MainActivity;)V

    goto :goto_0

    .line 601
    :cond_5
    const-string v0, "NETFLIXSERVICE_PLAYBACK_ENDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 602
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$1100(Lcom/netflix/ninja/MainActivity;)V

    goto :goto_0

    .line 603
    :cond_6
    const-string v0, "NETFLIXSERVICE_VIDEO_SIZE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0, p2}, Lcom/netflix/ninja/MainActivity;->access$1200(Lcom/netflix/ninja/MainActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 605
    :cond_7
    const-string v0, "NETFLIXSERVICE_VIDEO_RESIZE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0, p2}, Lcom/netflix/ninja/MainActivity;->access$1300(Lcom/netflix/ninja/MainActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 607
    :cond_8
    const-string v0, "NETFLIXSERVICE_SHUTDOWN_ACTIVITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const-string v0, "netflix-activity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$UiReceiver;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity;->finish()V

    goto/16 :goto_0
.end method
