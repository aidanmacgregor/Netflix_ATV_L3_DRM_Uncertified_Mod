.class Lcom/netflix/ninja/NetflixService$4;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/ninja/NetflixService;->drmReset()V
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
    .line 504
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$4;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$4;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Lcom/netflix/ninja/NetflixService;->access$100(Lcom/netflix/ninja/NetflixService;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;->resetCryptoFactory()V

    .line 509
    return-void
.end method
