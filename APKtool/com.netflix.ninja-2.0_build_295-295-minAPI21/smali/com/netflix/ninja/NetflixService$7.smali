.class Lcom/netflix/ninja/NetflixService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/NetflixService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/NetflixService;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$7;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x7f

    const/16 v7, 0x56

    const/4 v6, 0x0

    .line 1412
    const-string v4, "needpause"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1413
    .local v0, "needpause":Z
    const-string v4, "needstop"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1414
    .local v1, "needstop":Z
    if-eqz v1, :cond_2

    .line 1415
    iget-object v4, p0, Lcom/netflix/ninja/NetflixService$7;->this$0:Lcom/netflix/ninja/NetflixService;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v7, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v7, v5}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    .line 1419
    :cond_0
    :goto_0
    const-string v4, "support5p1"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1420
    .local v2, "support5P1":Z
    const-string v4, "supportddp"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1421
    .local v3, "supportDDP":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    .line 1422
    :cond_1
    const-string v4, "netflix-service"

    const-string v5, "support DDP"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v4, p0, Lcom/netflix/ninja/NetflixService$7;->this$0:Lcom/netflix/ninja/NetflixService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/netflix/ninja/NetflixService;->access$700(Lcom/netflix/ninja/NetflixService;Z)V

    .line 1431
    :goto_1
    return-void

    .line 1416
    .end local v2    # "support5P1":Z
    .end local v3    # "supportDDP":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 1417
    iget-object v4, p0, Lcom/netflix/ninja/NetflixService$7;->this$0:Lcom/netflix/ninja/NetflixService;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v8, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v8, v5}, Lcom/netflix/ninja/NetflixService;->simulateKeyEvent(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 1426
    .restart local v2    # "support5P1":Z
    .restart local v3    # "supportDDP":Z
    :cond_3
    const-string v4, "netflix-service"

    const-string v5, "not support DDP"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v4, p0, Lcom/netflix/ninja/NetflixService$7;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-static {v4, v6}, Lcom/netflix/ninja/NetflixService;->access$700(Lcom/netflix/ninja/NetflixService;Z)V

    goto :goto_1
.end method
