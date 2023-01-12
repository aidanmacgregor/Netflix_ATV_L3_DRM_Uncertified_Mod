.class public final Lcom/netflix/mediaclient/media/HevcCapabilityHelper;
.super Ljava/lang/Object;
.source "HevcCapabilityHelper.java"


# static fields
.field private static final HEIGHT_4K:I = 0x870

.field private static final HEIGHT_HD:I = 0x438

.field private static final MAX_FRAMERATE_4K:D = 60.0

.field private static final MAX_HEIGHT_4K:I = 0x870

.field private static final MAX_WIDTH_4K:I = 0xf00

.field private static final TAG:Ljava/lang/String;

.field private static final USE_NON_TUNNEL_HEVC:Z = false

.field private static final USE_TUNNELED_AVC:Z = false

.field private static final WIDTH_4K:I = 0xf00

.field private static final WIDTH_HD:I = 0x780

.field private static mHevcSelected:Z

.field private static mMain10Selected:Z

.field private static mTunneledModeSelected:Z


# instance fields
.field mDecoderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedDecoder:Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    .line 30
    sput-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mMain10Selected:Z

    .line 31
    sput-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mTunneledModeSelected:Z

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mHevcSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mHevcSelected:Z

    .line 37
    return-void
.end method

.method public static createVideoFormatForLevel(I)Landroid/media/MediaFormat;
    .locals 7
    .param p0, "level"    # I

    .prologue
    const/16 v6, 0xf00

    const/16 v5, 0x870

    const/16 v4, 0x780

    const/16 v3, 0x438

    .line 247
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 248
    .local v0, "videoFormat":Landroid/media/MediaFormat;
    if-lez p0, :cond_2

    .line 249
    const-string v1, "mime"

    const-string v2, "video/hevc"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 251
    :cond_0
    const-string v1, "max-width"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 252
    const-string v1, "max-height"

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 253
    const-string v1, "width"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 254
    const-string v1, "height"

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 269
    :goto_0
    return-object v0

    .line 256
    :cond_1
    const-string v1, "max-width"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 257
    const-string v1, "max-height"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 258
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 259
    const-string v1, "height"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 262
    :cond_2
    const-string v1, "mime"

    const-string v2, "video/avc"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "max-width"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 264
    const-string v1, "max-height"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 265
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 266
    const-string v1, "height"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getDecoders(Ljava/lang/Boolean;Z)Ljava/util/List;
    .locals 13
    .param p1, "istunneled"    # Ljava/lang/Boolean;
    .param p2, "isHevc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p2, :cond_1

    const-string v9, "video/hevc"

    .line 135
    .local v9, "type":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v4, "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    new-instance v3, Landroid/media/MediaCodecList;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 137
    .local v3, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 138
    .local v2, "codecInfos":[Landroid/media/MediaCodecInfo;
    move-object v0, v2

    .local v0, "arr$":[Landroid/media/MediaCodecInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v7, v0, v5

    .line 139
    .local v7, "mci":Landroid/media/MediaCodecInfo;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 138
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "arr$":[Landroid/media/MediaCodecInfo;
    .end local v2    # "codecInfos":[Landroid/media/MediaCodecInfo;
    .end local v3    # "codecList":Landroid/media/MediaCodecList;
    .end local v4    # "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mci":Landroid/media/MediaCodecInfo;
    .end local v9    # "type":Ljava/lang/String;
    :cond_1
    const-string v9, "video/avc"

    goto :goto_0

    .line 144
    .restart local v0    # "arr$":[Landroid/media/MediaCodecInfo;
    .restart local v2    # "codecInfos":[Landroid/media/MediaCodecInfo;
    .restart local v3    # "codecList":Landroid/media/MediaCodecList;
    .restart local v4    # "decoders":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v9    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "supportedTypes":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_0

    .line 149
    invoke-virtual {v7, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 152
    .local v1, "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const-string v10, "adaptive-playback"

    invoke-virtual {v1, v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 153
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 154
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not support "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "adaptive-playback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 168
    const-string v10, "tunneled-playback"

    invoke-virtual {v1, v10}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 169
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 170
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not support "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "tunneled-playback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 175
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 177
    sget-object v11, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HEVC decoder "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "supports tunneled mode"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string v10, ""

    goto :goto_3

    .line 180
    .end local v1    # "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v7    # "mci":Landroid/media/MediaCodecInfo;
    .end local v8    # "supportedTypes":[Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 181
    sget-object v10, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  HEVC decoders"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_7
    return-object v4
.end method

.method private getHighestLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)I
    .locals 7
    .param p1, "decoderCap"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .param p2, "profile"    # I

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "maxLevel":I
    iget-object v5, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 230
    .local v5, "pls":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object v0, v5

    .local v0, "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 231
    .local v4, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v6, p2, :cond_0

    .line 232
    iget v6, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_1
    return v3
.end method

.method public static getMediaFormatTunneled(II)Landroid/media/MediaFormat;
    .locals 3
    .param p0, "level"    # I
    .param p1, "audioSessionId"    # I

    .prologue
    .line 272
    invoke-static {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->createVideoFormatForLevel(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 273
    .local v0, "videoFormat":Landroid/media/MediaFormat;
    const-string v1, "audio-session-id"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 274
    const-string v1, "feature-tunneled-playback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 275
    return-object v0
.end method

.method private getSupportedAvcDecoderFromList(Ljava/util/List;)Landroid/media/MediaCodecInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;)",
            "Landroid/media/MediaCodecInfo;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSupportedHevcDecoderFromList(Ljava/util/List;ZIID)Landroid/media/MediaCodecInfo;
    .locals 15
    .param p2, "isMain10"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameRate"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;ZIID)",
            "Landroid/media/MediaCodecInfo;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaCodecInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaCodecInfo;

    .line 188
    .local v9, "mci":Landroid/media/MediaCodecInfo;
    const-string v12, "video/hevc"

    invoke-virtual {v9, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 191
    .local v5, "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v12

    move/from16 v0, p3

    move/from16 v1, p4

    move-wide/from16 v2, p5

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v12

    if-nez v12, :cond_1

    .line 192
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 193
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " does not support "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p5

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    iget-object v11, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 200
    .local v11, "pls":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "profileLevel: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    move-object v4, v11

    .local v4, "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v10, v4, v7

    .line 203
    .local v10, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    if-eqz p2, :cond_3

    .line 205
    iget v12, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 206
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 207
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " supports main10 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p5

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v4    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v5    # "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mci":Landroid/media/MediaCodecInfo;
    .end local v10    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v11    # "pls":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2
    :goto_2
    return-object v9

    .line 211
    .restart local v4    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v5    # "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v10    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v11    # "pls":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_3
    iget v12, v10, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 213
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 214
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " supports main "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p5

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 201
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 224
    .end local v4    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v5    # "capability":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mci":Landroid/media/MediaCodecInfo;
    .end local v10    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v11    # "pls":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5
    sget-object v12, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const-string v13, "Found no HEVC decoder"

    invoke-static {v12, v13}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v9, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getHevcProfileLevel()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 118
    sget-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mHevcSelected:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mSelectedDecoder:Landroid/media/MediaCodecInfo;

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mSelectedDecoder:Landroid/media/MediaCodecInfo;

    const-string v4, "video/hevc"

    invoke-virtual {v1, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    sget-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mMain10Selected:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getHighestLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)I

    move-result v0

    .line 121
    .local v0, "level":I
    const/16 v1, 0x4000

    if-lt v0, v1, :cond_2

    .line 122
    sget-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mMain10Selected:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 127
    .end local v0    # "level":I
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 119
    goto :goto_0

    .line 124
    .restart local v0    # "level":I
    :cond_2
    sget-boolean v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mMain10Selected:Z

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    :cond_3
    move v2, v3

    goto :goto_1

    .line 127
    .end local v0    # "level":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTunneledDecoder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mSelectedDecoder:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTunnelModeSupported()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mTunneledModeSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mSelectedDecoder:Landroid/media/MediaCodecInfo;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
