.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;
.implements Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;,
        Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;
    }
.end annotation


# static fields
.field static final HD_HEIGHT:I = 0x438

.field static final HD_WIDTH:I = 0x780

.field static final STATE_FLUSHED:I = 0x3

.field static final STATE_INIT:I = -0x1

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x1

.field static final STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NF_JPlayer2"


# instance fields
.field private mAudioHdmiDetector:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;

.field private mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

.field private mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

.field private mAudioSessionId:I

.field private mCrypto:Landroid/media/MediaCrypto;

.field private mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

.field private mDolbyDigitalPlusDecoderPresent:Z

.field private mFirstPts:J

.field private mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

.field private mHevcProfileLevel:I

.field private mNativePlayer:J

.field private mService:Lcom/netflix/ninja/NetflixService;

.field private volatile mState:I

.field private mSurface:Landroid/view/Surface;

.field private mUseTunneledMode:Z

.field private mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;


# direct methods
.method public constructor <init>(Lcom/netflix/ninja/NetflixService;Landroid/view/Surface;Lcom/netflix/mediaclient/media/HevcCapabilityHelper;)V
    .locals 3
    .param p1, "service"    # Lcom/netflix/ninja/NetflixService;
    .param p2, "h"    # Landroid/view/Surface;
    .param p3, "HevcCap"    # Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->isEAC3supported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mFirstPts:J

    .line 232
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    .line 233
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    .line 234
    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/ninja/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetector;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiDectectorCallback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiDetector:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiDetector:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;->startAudioHdmiDetector()Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "NF_JPlayer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " plugState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isPlugged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dd+: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->isTunnelModeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getHevcProfileLevel()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcProfileLevel:I

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;[BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->getBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->updatePosition(ZJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->notifyEndOfStream(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifytError(ZIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mFirstPts:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;J)J
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mFirstPts:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isAudioPipeNeedReconfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->reconfigureAudioPipe(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->notifyReady()V

    return-void
.end method

.method private configureAudioPipe()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureAudioPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusPassthrough()V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusDecoder()V

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createAACDecoder()V

    goto :goto_0
.end method

.method private configureRegularMediaCodecVideoPipe()V
    .locals 7

    .prologue
    .line 355
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureRegularMediaCodecVideoPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcProfileLevel:I

    invoke-static {v0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->createVideoFormatForLevel(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 358
    .local v3, "videoFormat":Landroid/media/MediaFormat;
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcProfileLevel:I

    if-nez v0, :cond_0

    .line 359
    const-string v2, "video/avc"

    .line 363
    .local v2, "videoMime":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getCreatedCryptoAnsSetListener(Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;)Landroid/media/MediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 369
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureRegularMediaCodecVideoPipe video pipe is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_1
    return-void

    .line 361
    .end local v2    # "videoMime":Ljava/lang/String;
    :cond_0
    const-string v2, "video/hevc"

    .restart local v2    # "videoMime":Ljava/lang/String;
    goto :goto_0

    .line 371
    :cond_1
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureRegularMediaCodecVideoPipe video pipe is not ready, wait..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private configureTunneledVideoPipe()V
    .locals 7

    .prologue
    .line 340
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureTunneledVideoPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->getCreatedCryptoAnsSetListener(Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine$MediaDrmListener;)Landroid/media/MediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcCapabilityHelper:Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getTunneledDecoder()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mHevcProfileLevel:I

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioSessionId:I

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getMediaFormatTunneled(II)Landroid/media/MediaFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mSurface:Landroid/view/Surface;

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 348
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureTunneledVideoPipe video pipe is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureTunneledVideoPipe video pipe is not ready, wait..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configureVideoPipe()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "NF_JPlayer2"

    const-string v1, "configureVideoPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureTunneledVideoPipe()V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureRegularMediaCodecVideoPipe()V

    goto :goto_0
.end method

.method private createAACDecoder()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 271
    const-string v4, "NF_JPlayer2"

    const-string v5, "createAACDecoder"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 273
    .local v1, "audioFormat":Landroid/media/MediaFormat;
    const-string v3, "audio/mp4a-latm"

    .line 274
    .local v3, "audioMime":Ljava/lang/String;
    const-string v4, "mime"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v4, "max-input-size"

    const/16 v5, 0x600

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 276
    const-string v4, "channel-count"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 277
    const-string v4, "sample-rate"

    const v5, 0xbb80

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 278
    const-string v4, "is-adts"

    invoke-virtual {v1, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 280
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    new-instance v4, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    invoke-direct {v4, p0, v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 282
    .local v0, "audioDecoder":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
    iget-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    if-eqz v4, :cond_0

    .line 283
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 284
    .local v2, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioTrackSessionId(Landroid/media/AudioManager;)I

    move-result v4

    iput v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioSessionId:I

    .line 286
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 287
    const-string v4, "NF_JPlayer2"

    const-string v5, "createAACDecoder done"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private createDDPlusDecoder()V
    .locals 6

    .prologue
    .line 290
    const-string v3, "NF_JPlayer2"

    const-string v4, "createDDPlusDecoder"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/DolbyDigitalHelper;->getMediaFormatEAC3()Landroid/media/MediaFormat;

    move-result-object v1

    .line 292
    .local v1, "audioFormat":Landroid/media/MediaFormat;
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    new-instance v3, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    const-string v4, "audio/eac3"

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 294
    .local v0, "audioDecoder":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
    iget-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/netflix/ninja/NetflixService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 296
    .local v2, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioTrackSessionId(Landroid/media/AudioManager;)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioSessionId:I

    .line 298
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 299
    const-string v3, "NF_JPlayer2"

    const-string v4, "createDDPlusDecoder done"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private createDDPlusPassthrough()V
    .locals 5

    .prologue
    .line 302
    const-string v0, "NF_JPlayer2"

    const-string v1, "createDDPlusPassthrought"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;-><init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    const/16 v2, 0xfc

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDecoderListener:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;IILcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 305
    const-string v0, "NF_JPlayer2"

    const-string v1, "createDDPlusPassthrough done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method private declared-synchronized getBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "isAudio"    # Z
    .param p3, "info"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_0
    monitor-exit p0

    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "isAudio"    # Z
    .param p3, "info"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAudioPipeNeedReconfig(Ljava/lang/String;)Z
    .locals 8
    .param p1, "codecId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 141
    const-string v6, "ec-3"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 142
    .local v3, "isDDPstream":Z
    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    instance-of v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    if-eqz v6, :cond_1

    move v2, v4

    .line 143
    .local v2, "isCurrentAudioDDPpassthrough":Z
    :goto_0
    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v6, :cond_2

    const-string v6, "audio/eac3"

    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getMime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 144
    .local v1, "isCurrentAudioDDPlocal":Z
    :goto_1
    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v6, :cond_3

    const-string v6, "audio/mp4a-latm"

    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getMime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 145
    .local v0, "isCurrentAudioAAC":Z
    :goto_2
    if-eqz v3, :cond_6

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 155
    :cond_0
    :goto_3
    return v5

    .end local v0    # "isCurrentAudioAAC":Z
    .end local v1    # "isCurrentAudioDDPlocal":Z
    .end local v2    # "isCurrentAudioDDPpassthrough":Z
    :cond_1
    move v2, v5

    .line 142
    goto :goto_0

    .restart local v2    # "isCurrentAudioDDPpassthrough":Z
    :cond_2
    move v1, v5

    .line 143
    goto :goto_1

    .restart local v1    # "isCurrentAudioDDPlocal":Z
    :cond_3
    move v0, v5

    .line 144
    goto :goto_2

    .line 148
    .restart local v0    # "isCurrentAudioAAC":Z
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_0

    :cond_5
    move v5, v4

    .line 155
    goto :goto_3

    .line 152
    :cond_6
    if-eqz v0, :cond_5

    goto :goto_3
.end method

.method private isDDPlocal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    if-nez v1, :cond_0

    .line 328
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->is5Point1Supported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isDDPpassthrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 311
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    if-nez v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mUseTunneledMode:Z

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiInfo:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isDDPsupported()Z
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeGetBuffer([BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
.end method

.method private native nativeGetBufferDirect(Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
.end method

.method private native nativeGetPlayer()J
.end method

.method private native nativeNotifyEndOfStream(Z)V
.end method

.method private native nativeNotifyReady()V
.end method

.method private native nativeNotifytError(ZIILjava/lang/String;)V
.end method

.method private native nativeReleasePlayer(J)V
.end method

.method private native nativeUpdatePosition(ZJ)V
.end method

.method private declared-synchronized notifyEndOfStream(Z)V
    .locals 1
    .param p1, "isAudio"    # Z

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifyEndOfStream(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :cond_0
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyReady()V
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifyReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    monitor-exit p0

    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reconfigureAudioPipe(Z)Z
    .locals 2
    .param p1, "isDDP"    # Z

    .prologue
    .line 256
    const-string v0, "NF_JPlayer2"

    const-string v1, "reconfigureAudioPipe"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p1, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPpassthrough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusPassthrough()V

    .line 268
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->isDDPlocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createDDPlusDecoder()V

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->createAACDecoder()V

    goto :goto_0
.end method

.method private setUpVideoPipe()V
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->isDecoderCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v0

    .line 446
    .local v0, "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 447
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    .line 455
    .end local v0    # "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string v1, "NF_JPlayer2"

    const-string v2, "VideoDecoder initialization failed, exiting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "NF_JPlayer2"

    const-string v2, "mVideoPipe is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized updatePosition(ZJ)V
    .locals 2
    .param p1, "isAudio"    # Z
    .param p2, "pts"    # J

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeUpdatePosition(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_0
    monitor-exit p0

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public Flush()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->flush()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->flush()V

    .line 498
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mFirstPts:J

    .line 499
    const/4 v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    .line 500
    const-string v0, "NF_JPlayer2"

    const-string v1, "Flush called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public MediaDrmError(IILjava/lang/String;)V
    .locals 3
    .param p1, "errorCat"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 587
    const-string v0, "NF_JPlayer2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "NF_JPlayer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received DRM error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeNotifytError(ZIILjava/lang/String;)V

    .line 592
    return-void
.end method

.method public Pause()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->pause()V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->pause()V

    .line 487
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    .line 488
    const-string v0, "NF_JPlayer2"

    const-string v1, "Pause called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method

.method public Play()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 403
    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 438
    :pswitch_0
    const-string v1, "NF_JPlayer2"

    const-string v2, "can not call Play "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    const-string v1, "NF_JPlayer2"

    const-string v2, "Play called"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 405
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 411
    :cond_1
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto :goto_0

    .line 414
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v0

    .line 416
    .local v0, "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 417
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    .line 418
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 423
    .end local v0    # "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->setUpVideoPipe()V

    .line 424
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto :goto_0

    .line 420
    :cond_2
    const-string v1, "NF_JPlayer2"

    const-string v2, "mAudioPipe is null"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    :pswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->restart()V

    .line 429
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 432
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v1, :cond_4

    .line 433
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->restart()V

    .line 435
    :cond_4
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public Start()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_PLAYBACK_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 395
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureAudioPipe()V

    .line 397
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->configureVideoPipe()V

    .line 399
    :cond_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "Start called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public Stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NETFLIXSERVICE_PLAYBACK_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 460
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->stop()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->stop()V

    .line 466
    :cond_1
    iput-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mVideoPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 467
    iput-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_2

    .line 470
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/drm/DrmManagerRegistry;->getWidevineMediaDrmEngine()Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineMediaDrmEngine;->releaseMediaCryptoAndRemoveListener()V

    .line 471
    iput-object v3, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mCrypto:Landroid/media/MediaCrypto;

    .line 473
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    .line 474
    const-string v0, "NF_JPlayer2"

    const-string v1, "Stop called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/ninja/NetflixService;->playerStop()V

    .line 478
    return-void
.end method

.method public getNativePlayer()J
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeGetPlayer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    .line 384
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    return-wide v0
.end method

.method public onAudioHdmiChanged(Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;)V
    .locals 6
    .param p1, "hdmiInfo"    # Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 556
    const-string v4, "NF_JPlayer2"

    const-string v5, "onAudioHdmiChanged"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    if-eqz p1, :cond_2

    .line 558
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isPlugged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 559
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-eqz v4, :cond_6

    .line 564
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    instance-of v1, v4, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .line 565
    .local v1, "isCurrentAudioDDPpassthrough":Z
    const-string v4, "audio/eac3"

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioPipe:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getMime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 566
    .local v0, "isCurrentAudioDDPlocal":Z
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->is5Point1Supported()Z

    move-result v4

    if-nez v4, :cond_6

    .line 568
    :cond_1
    const-string v4, "NF_JPlayer2"

    const-string v5, "HDMI plugin to a lesser audio sink during playback, request to stop player"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->is5Point1Supported()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    if-eqz v5, :cond_3

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->notifyAudioHdmiStateStopPlayback(Landroid/content/Context;ZZ)V

    .line 583
    .end local v0    # "isCurrentAudioDDPlocal":Z
    .end local v1    # "isCurrentAudioDDPpassthrough":Z
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "isCurrentAudioDDPlocal":Z
    .restart local v1    # "isCurrentAudioDDPpassthrough":Z
    :cond_3
    move v2, v3

    .line 569
    goto :goto_0

    .line 574
    .end local v0    # "isCurrentAudioDDPlocal":Z
    .end local v1    # "isCurrentAudioDDPpassthrough":Z
    :cond_4
    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mState:I

    if-ne v4, v2, :cond_6

    .line 575
    const-string v4, "NF_JPlayer2"

    const-string v5, "HDMI unplug during playback, request to pause player"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->is5Point1Supported()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    if-eqz v5, :cond_5

    :goto_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->notifyAudioHdmiStatePausePlayback(Landroid/content/Context;ZZ)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    .line 580
    :cond_6
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mService:Lcom/netflix/ninja/NetflixService;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->is5Point1Supported()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mDolbyDigitalPlusDecoderPresent:Z

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase$AudioHdmiInfo;->isDDPlusSupported()Z

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiNotifyNflx;->notifyAudioHdmiState(Landroid/content/Context;ZZ)V

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public release()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mAudioHdmiDetector:Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/AudioHdmiDetectorBase;->stopAudioHdmiDetector()V

    .line 379
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->mNativePlayer:J

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->nativeReleasePlayer(J)V

    .line 380
    return-void
.end method
