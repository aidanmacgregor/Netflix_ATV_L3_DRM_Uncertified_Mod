.class Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$3;
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
    .line 499
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$3;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$200(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->clearApplicationData(Landroid/content/Context;)V

    .line 503
    return-void
.end method
