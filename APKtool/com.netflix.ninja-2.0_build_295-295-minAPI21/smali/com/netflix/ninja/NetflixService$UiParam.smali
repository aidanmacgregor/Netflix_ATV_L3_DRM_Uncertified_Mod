.class Lcom/netflix/ninja/NetflixService$UiParam;
.super Ljava/lang/Object;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/NetflixService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiParam"
.end annotation


# instance fields
.field private mGibbonUi:Landroid/view/Surface;

.field private mParams:Lcom/netflix/ninja/StartupParameters;

.field private mPlayerUi:Landroid/view/Surface;

.field final synthetic this$0:Lcom/netflix/ninja/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/NetflixService;Landroid/view/Surface;Landroid/view/Surface;Lcom/netflix/ninja/StartupParameters;)V
    .locals 0
    .param p2, "gibbonUi"    # Landroid/view/Surface;
    .param p3, "playerUi"    # Landroid/view/Surface;
    .param p4, "params"    # Lcom/netflix/ninja/StartupParameters;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/netflix/ninja/NetflixService$UiParam;->this$0:Lcom/netflix/ninja/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mGibbonUi:Landroid/view/Surface;

    .line 190
    iput-object p3, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mPlayerUi:Landroid/view/Surface;

    .line 191
    iput-object p4, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mParams:Lcom/netflix/ninja/StartupParameters;

    .line 192
    return-void
.end method

.method static synthetic access$200(Lcom/netflix/ninja/NetflixService$UiParam;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService$UiParam;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mGibbonUi:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/ninja/NetflixService$UiParam;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService$UiParam;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mPlayerUi:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/ninja/NetflixService$UiParam;)Lcom/netflix/ninja/StartupParameters;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/ninja/NetflixService$UiParam;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/ninja/NetflixService$UiParam;->mParams:Lcom/netflix/ninja/StartupParameters;

    return-object v0
.end method
