.class Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$2;
.super Ljava/lang/Object;
.source "MSLWidevineDrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->mediaDrmFailure(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 489
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v1, "Redo CDM provisioning"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$2;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->init()V

    .line 491
    return-void
.end method
