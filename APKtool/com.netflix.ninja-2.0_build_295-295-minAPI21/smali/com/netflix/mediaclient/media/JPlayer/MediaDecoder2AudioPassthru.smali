.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.source "MediaDecoder2AudioPassthru.java"


# static fields
.field private static final DATA_BUFFER_SIZE:I = 0x400

.field private static final MSG_DECODER_FLUSH:I = 0x2

.field private static final MSG_DECODER_GET_FRAME:I = 0x1

.field private static final MSG_DECODER_INITIALIZED:I = 0x0

.field private static final MSG_RENDER_PAUSE:I = 0x3

.field private static final SAMPLE_PER_DDPLUS_FRAME:I = 0x600

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAudioTrack:Landroid/media/AudioTrack;

.field private mBufferSize:I

.field private mChannelConfig:I

.field private mDataBuffer:Ljava/nio/ByteBuffer;

.field private mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

.field private mEncoding:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSampleCnt:J

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;IILcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 3
    .param p1, "dataSource"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .param p2, "channelConfig"    # I
    .param p3, "encodeFormat"    # I
    .param p4, "listener"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;-><init>()V

    .line 25
    const v0, 0xbb80

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleRate:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mIsAudio:Z

    .line 42
    invoke-virtual {p0, p4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    .line 44
    iput p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mChannelConfig:I

    .line 45
    iput p3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEncoding:I

    .line 46
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleRate:I

    iget v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mChannelConfig:I

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEncoding:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mBufferSize:I

    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->createAudioTrack()V

    .line 48
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mDataBuffer:Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mDataBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleCnt:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;J)J
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleCnt:J

    return-wide p1
.end method

.method static synthetic access$414(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;J)J
    .locals 3
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleCnt:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleCnt:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)I
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    .prologue
    .line 16
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleRate:I

    return v0
.end method

.method private createAudioTrack()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->TAG:Ljava/lang/String;

    const-string v2, "create audiotrack ... "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mSampleRate:I

    iget v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mChannelConfig:I

    iget v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEncoding:I

    iget v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mBufferSize:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    .line 218
    :cond_1
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreadAudioPassthru"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 174
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_2
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->TAG:Ljava/lang/String;

    const-string v2, "AudioTrack.stop() has  IllegalStateException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unpause()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->createAudioTrack()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    :cond_1
    return-void
.end method
