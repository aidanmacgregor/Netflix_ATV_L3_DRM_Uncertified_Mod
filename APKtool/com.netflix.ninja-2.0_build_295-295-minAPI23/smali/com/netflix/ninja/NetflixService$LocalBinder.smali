.class public Lcom/netflix/ninja/NetflixService$LocalBinder;
.super Landroid/os/Binder;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/NetflixService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/NetflixService;


# direct methods
.method public constructor <init>(Lcom/netflix/ninja/NetflixService;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$LocalBinder;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetflixService()Lcom/netflix/ninja/NetflixService;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$LocalBinder;->this$0:Lcom/netflix/ninja/NetflixService;

    return-object v0
.end method
