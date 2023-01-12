.class public Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;
.super Ljava/lang/Object;
.source "AdaptiveMediaDecoderHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 18
    new-instance v3, Landroid/media/MediaCodecList;

    const/4 v9, 0x1

    invoke-direct {v3, v9}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 19
    .local v3, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 20
    .local v2, "codecInfos":[Landroid/media/MediaCodecInfo;
    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v8

    .line 24
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Landroid/media/MediaCodecInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 25
    .local v5, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 24
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 30
    .local v7, "supportedTypes":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_2

    .line 34
    invoke-virtual {v5, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 35
    .local v1, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const-string v9, "adaptive-playback"

    invoke-virtual {v1, v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 37
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static isAvcDecoderSupportsAdaptivePlayback()Z
    .locals 1

    .prologue
    .line 47
    const-string v0, "video/avc"

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
