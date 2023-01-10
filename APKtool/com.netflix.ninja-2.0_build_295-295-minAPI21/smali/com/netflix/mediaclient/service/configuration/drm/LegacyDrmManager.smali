.class public final Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;
.super Ljava/lang/Object;
.source "LegacyDrmManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getDeviceId()[B
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrmType()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/LegacyDrmManager;->mCallback:Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManager$DrmReadyCallback;->drmReady()V

    .line 38
    return-void
.end method

.method public resetCryptoFactory()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
