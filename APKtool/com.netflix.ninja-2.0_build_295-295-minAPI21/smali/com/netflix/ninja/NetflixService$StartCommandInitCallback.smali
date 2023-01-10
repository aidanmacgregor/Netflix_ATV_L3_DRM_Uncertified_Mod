.class final Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/ninja/NetflixService$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/NetflixService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartCommandInitCallback"
.end annotation


# instance fields
.field private final flags:I

.field private final intent:Landroid/content/Intent;

.field private final startId:I

.field final synthetic this$0:Lcom/netflix/ninja/NetflixService;


# direct methods
.method public constructor <init>(Lcom/netflix/ninja/NetflixService;Landroid/content/Intent;II)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "startId"    # I

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput-object p2, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    .line 1398
    iput p3, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->flags:I

    .line 1399
    iput p4, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->startId:I

    .line 1400
    return-void
.end method


# virtual methods
.method public onInitComplete()V
    .locals 4

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->this$0:Lcom/netflix/ninja/NetflixService;

    iget-object v1, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->flags:I

    iget v3, p0, Lcom/netflix/ninja/NetflixService$StartCommandInitCallback;->startId:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/ninja/NetflixService;->access$600(Lcom/netflix/ninja/NetflixService;Landroid/content/Intent;II)V

    .line 1405
    return-void
.end method
