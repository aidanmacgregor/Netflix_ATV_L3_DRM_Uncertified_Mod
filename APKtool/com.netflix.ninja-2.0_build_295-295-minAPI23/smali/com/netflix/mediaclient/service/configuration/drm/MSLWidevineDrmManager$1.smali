.class Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;
.super Ljava/lang/Object;
.source "MSLWidevineDrmManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->startWidewineProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done([B)V
    .locals 5
    .param p1, "response"    # [B

    .prologue
    .line 396
    if-eqz p1, :cond_2

    .line 397
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got CDM provisiong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$000(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Landroid/media/MediaDrm;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 403
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->init()V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "ex":Landroid/media/DeniedByServerException;
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server declined Widewine provisioning request. Server URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$100(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_GOOGLE_CDM_PROVISIONG_DENIED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 410
    .end local v1    # "ex":Landroid/media/DeniedByServerException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, "cause":Ljava/lang/Throwable;
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "Fatal error on seting Widewine provisioning response"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$100(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$100(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 419
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get provisiong certificate"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$1;->this$0:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;->access$100(Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager;)Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->DRM_FAILURE_CDM:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmError(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
