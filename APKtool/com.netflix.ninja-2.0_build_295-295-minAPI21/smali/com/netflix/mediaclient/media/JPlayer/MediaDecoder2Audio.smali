.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Audio.java"


# static fields
.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FLUSHED:I = 0x4

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final MSG_RENDER_PAUSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Audio"


# instance fields
.field private isEac3:Z

.field private isUsedForSideBand:Z

.field private mAudioFormat:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mChannelConfig:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

.field private mSampleCnt:J

.field private mSampleRate:I

.field private mSampleSize:I

.field private nFrameRendered:J

.field private sidebandSessionId:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 7
    .param p1, "dataSource"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "listener"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 23
    const v0, 0xbb80

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    .line 24
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    return-wide v0
.end method

.method static synthetic access$014(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;J)J
    .locals 3
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
    .param p1, "x1"    # J

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    return-void
.end method

.method static synthetic access$108(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 4
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->nFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;
    .param p1, "x1"    # Landroid/media/AudioTrack;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioHeaderPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)I
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)I
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->getAudioPresentationLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isEac3:Z

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createAudioTrack()V
    .locals 7

    .prologue
    const v4, 0x8000

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 295
    const-string v0, "MediaDecoder2Audio"

    const-string v2, "create audiotrack ... "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, "audio/eac3"

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iput-boolean v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isEac3:Z

    .line 298
    const/16 v0, 0xfc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 299
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    .line 300
    iput v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    .line 306
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    invoke-static {v0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 307
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    if-ge v0, v4, :cond_0

    iput v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isUsedForSideBand:Z

    if-eqz v0, :cond_3

    .line 309
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createSidebandAudioTrack()V

    .line 319
    :goto_1
    const-string v0, "MediaDecoder2Audio"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const-string v0, "MediaDecoder2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    return-void

    .line 302
    :cond_2
    const/16 v0, 0xc

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    .line 303
    iput v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    .line 304
    const/4 v0, 0x4

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleSize:I

    goto :goto_0

    .line 311
    :cond_3
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_1
.end method

.method private createSidebandAudioTrack()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 56
    const-string v0, "MediaDecoder2Audio"

    const-string v1, "createSidebandAudioTrack"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mChannelConfig:I

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioFormat:I

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleRate:I

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mBufferSize:I

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->sidebandSessionId:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 71
    return-void
.end method

.method private getAudioHeaderPosition()J
    .locals 4

    .prologue
    .line 270
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 271
    .local v0, "timestamp":Landroid/media/AudioTimestamp;
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-wide v2, v0, Landroid/media/AudioTimestamp;->framePosition:J

    .line 276
    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method private getAudioPresentationLatencyMs()J
    .locals 2

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bufInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPaused()V

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RenderThreadAudeo"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    .line 267
    return-void
.end method

.method flushRenderer()V
    .locals 6

    .prologue
    .line 373
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v2

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 384
    :cond_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "MediaDecoder2Audio"

    const-string v3, "flushRenderer interrupted"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getAudioTrackSessionId(Landroid/media/AudioManager;)I
    .locals 1
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->isUsedForSideBand:Z

    .line 50
    invoke-virtual {p1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->sidebandSessionId:I

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createAudioTrack()V

    .line 53
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->sidebandSessionId:I

    return v0
.end method

.method pauseRenderer()V
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 345
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPausing()V

    .line 347
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 356
    :cond_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaDecoder2Audio"

    const-string v3, "pauseRenderer interrupted"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method startRenderer()V
    .locals 4

    .prologue
    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string v1, "MediaDecoder2Audio"

    const-string v2, "start audiotrack ... "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 331
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 334
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaDecoder2Audio"

    const-string v2, "mAudioTrack already stopped/uninitialized"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method stopRenderer()V
    .locals 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 397
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 399
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 400
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_2
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mSampleCnt:J

    .line 407
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaDecoder2Audio"

    const-string v2, "AudioTrack.stop() has  IllegalStateException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unpauseRenderer()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 361
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 370
    :cond_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaDecoder2Audio"

    const-string v3, "unpauseRenderer interrupted"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
