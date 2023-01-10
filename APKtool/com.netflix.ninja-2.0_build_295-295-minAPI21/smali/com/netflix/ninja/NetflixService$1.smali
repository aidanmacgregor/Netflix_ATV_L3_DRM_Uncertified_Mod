.class Lcom/netflix/ninja/NetflixService$1;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;


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
    .line 297
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$1;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/netflix/ninja/NetflixService;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$1;->this$0:Lcom/netflix/ninja/NetflixService;

    return-object v0
.end method
