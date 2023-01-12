.class Lcom/netflix/ninja/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/MainActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$1;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 230
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerViewSurface surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$1;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/ninja/MainActivity$MainActivityState;->playerSurface:Landroid/view/Surface;

    .line 234
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$1;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToRunning()V

    .line 235
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 239
    const-string v0, "netflix-activity"

    const-string v1, "playerViewSurface created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 244
    const-string v0, "netflix-activity"

    const-string v1, "playerViewSurface destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$1;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToSuspend()V

    .line 246
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$1;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/ninja/MainActivity$MainActivityState;->playerSurface:Landroid/view/Surface;

    .line 247
    return-void
.end method
