.class public interface abstract Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;
    }
.end annotation


# static fields
.field public static final DRM_TYPE_NONE:I = 0x0

.field public static final DRM_TYPE_WIDEVINE:I = 0x1


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getDeviceId()[B
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getDrmType()I
.end method

.method public abstract init()V
.end method

.method public abstract resetCryptoFactory()V
.end method
