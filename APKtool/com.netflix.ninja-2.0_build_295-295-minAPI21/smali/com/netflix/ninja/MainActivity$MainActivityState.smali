.class Lcom/netflix/ninja/MainActivity$MainActivityState;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainActivityState"
.end annotation


# instance fields
.field gibbonSurface:Landroid/view/Surface;

.field mUiEnabled:Z

.field mWindowFocus:Z

.field playerSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/MainActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mUiEnabled:Z

    .line 131
    iput-object v1, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->gibbonSurface:Landroid/view/Surface;

    .line 132
    iput-object v1, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->playerSurface:Landroid/view/Surface;

    .line 134
    iput-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mWindowFocus:Z

    return-void
.end method


# virtual methods
.method setUiToRunning()V
    .locals 4

    .prologue
    .line 140
    const-string v0, "netflix-activity"

    const-string v1, "SetUiToRunning called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$000(Lcom/netflix/ninja/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mUiEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->gibbonSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->playerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$200(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->gibbonSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->playerSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v3}, Lcom/netflix/ninja/MainActivity;->access$100(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/ninja/NetflixService;->startUi(Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mUiEnabled:Z

    .line 145
    :cond_0
    return-void
.end method

.method setUiToSuspend()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "netflix-activity"

    const-string v1, "SetUiToSuspend called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$000(Lcom/netflix/ninja/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mUiEnabled:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$200(Lcom/netflix/ninja/MainActivity;)Lcom/netflix/ninja/NetflixService;

    move-result-object v0

    const-string v1, "exit_type=2"

    invoke-virtual {v0, v1}, Lcom/netflix/ninja/NetflixService;->stopUi(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->mUiEnabled:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "netflix-activity"

    const-string v1, "Notifying cast server that we are stopping"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->notifyStopped()Z

    .line 160
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$300(Lcom/netflix/ninja/MainActivity;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->disconnect()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$MainActivityState;->this$0:Lcom/netflix/ninja/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/ninja/MainActivity;->access$302(Lcom/netflix/ninja/MainActivity;Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    .line 163
    return-void
.end method
