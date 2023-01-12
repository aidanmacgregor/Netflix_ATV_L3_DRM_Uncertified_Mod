.class public interface abstract Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmReadyCallback"
.end annotation


# virtual methods
.method public abstract drmError(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract drmReady()V
.end method
