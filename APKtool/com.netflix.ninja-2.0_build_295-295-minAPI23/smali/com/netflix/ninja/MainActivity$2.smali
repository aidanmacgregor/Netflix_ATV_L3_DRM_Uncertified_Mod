.class Lcom/netflix/ninja/MainActivity$2;
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
    .line 251
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

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
    .line 255
    const-string v0, "netflix-activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "netflix-activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gibbonViewSurface surfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/ninja/MainActivity$MainActivityState;->gibbonSurface:Landroid/view/Surface;

    .line 259
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToRunning()V

    .line 260
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 264
    const-string v0, "netflix-activity"

    const-string v1, "gibbonViewSurface created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 269
    const-string v1, "netflix-activity"

    const-string v2, "gibbonViewSurface destroyed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v1}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/ninja/MainActivity$MainActivityState;->setUiToSuspend()V

    .line 271
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v1}, Lcom/netflix/ninja/MainActivity;->access$400(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/MainActivity$MainActivityState;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/netflix/ninja/MainActivity$MainActivityState;->gibbonSurface:Landroid/view/Surface;

    .line 273
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 275
    .local v0, "playerParam":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v1}, Lcom/netflix/ninja/MainActivity;->access$600(Lcom/netflix/ninja/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v2}, Lcom/netflix/ninja/MainActivity;->access$500(Lcom/netflix/ninja/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$2;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v1}, Lcom/netflix/ninja/MainActivity;->access$700(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setVideoResize(II)V

    .line 277
    return-void
.end method
