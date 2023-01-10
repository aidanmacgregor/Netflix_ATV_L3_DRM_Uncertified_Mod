.class Lcom/netflix/ninja/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 730
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$5;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "rawBinder"    # Landroid/os/IBinder;

    .prologue
    .line 734
    move-object v0, p2

    check-cast v0, Lcom/netflix/ninja/NetflixService$LocalBinder;

    .line 735
    .local v0, "binder":Lcom/netflix/ninja/NetflixService$LocalBinder;
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$5;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService$LocalBinder;->getNetflixService()Lcom/netflix/ninja/NetflixService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/ninja/MainActivity;->access$202(Lcom/netflix/ninja/MainActivity;Lcom/netflix/ninja/NetflixService;)Lcom/netflix/ninja/NetflixService;

    .line 736
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$5;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v1}, Lcom/netflix/ninja/MainActivity;->access$1400(Lcom/netflix/ninja/MainActivity;)V

    .line 737
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$5;->this$0:Lcom/netflix/ninja/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/ninja/MainActivity;->access$202(Lcom/netflix/ninja/MainActivity;Lcom/netflix/ninja/NetflixService;)Lcom/netflix/ninja/NetflixService;

    .line 742
    iget-object v0, p0, Lcom/netflix/ninja/MainActivity$5;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-static {v0}, Lcom/netflix/ninja/MainActivity;->access$1500(Lcom/netflix/ninja/MainActivity;)V

    .line 743
    return-void
.end method
