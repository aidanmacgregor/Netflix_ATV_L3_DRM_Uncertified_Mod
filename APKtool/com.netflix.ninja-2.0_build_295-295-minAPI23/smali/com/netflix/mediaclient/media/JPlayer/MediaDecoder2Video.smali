.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.source "MediaDecoder2Video.java"


# static fields
.field private static final DEFAULT_LOOPING_TIME:I = 0x1e

.field private static final MAX_AHEAD_TIMED_RELEASE_MS:J = 0x1f4L

.field private static final MAX_LOOPING_TIME:I = 0x32

.field private static final MSG_RENDER_FLUSH:I = 0x2

.field private static final MSG_RENDER_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2Video"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

.field private mLastFrameRendered:Z

.field private volatile mPaused:Z

.field private mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

.field private mRendererStarted:Z

.field private nFrameRendered:J

.field private nFrameSkipped:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 4
    .param p1, "dataSource"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .param p2, "t"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "s"    # Landroid/view/Surface;
    .param p5, "c"    # Landroid/media/MediaCrypto;
    .param p6, "listener"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 19
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 20
    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 21
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    .line 22
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    .line 23
    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->showHeatBeat()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V
    .locals 0
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    return-object v0
.end method

.method private removeFrameFromQ(I)V
    .locals 2
    .param p1, "bufIndex"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showHeatBeat()V
    .locals 4

    .prologue
    .line 116
    const-string v1, "MediaDecoder2Video"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RenderThreadVideo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ", rendered frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ,skipped frame  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHearbeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;->ShowHearbeat(Ljava/lang/String;)V

    .line 122
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private tryToReleaseBuffers()V
    .locals 22

    .prologue
    .line 132
    :goto_0
    const/4 v8, -0x1

    .line 133
    .local v8, "bufIndex":I
    const/4 v9, 0x0

    .line 134
    .local v9, "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v15

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    move-object v9, v0

    .line 141
    const/4 v2, -0x1

    if-eq v8, v2, :cond_3

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v2, :cond_3

    .line 142
    iget-wide v0, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v0

    .line 143
    .local v16, "pts":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    .line 144
    .local v6, "ref":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gez v2, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    :cond_0
    monitor-exit v15

    .line 189
    .end local v6    # "ref":J
    .end local v16    # "pts":J
    :goto_1
    return-void

    .line 139
    :cond_1
    monitor-exit v15

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 151
    .restart local v6    # "ref":J
    .restart local v16    # "pts":J
    :cond_2
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    .line 152
    .local v18, "ptsInNs":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v20

    .line 153
    .local v20, "refInNs":J
    sub-long v12, v18, v20

    .line 154
    .local v12, "deltaInNs":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 155
    .local v10, "deltaInMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_4

    .line 156
    const-string v2, "MediaDecoder2Video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip a frame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 165
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameSkipped:J

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 187
    .end local v6    # "ref":J
    .end local v10    # "deltaInMs":J
    .end local v12    # "deltaInNs":J
    .end local v16    # "pts":J
    .end local v18    # "ptsInNs":J
    .end local v20    # "refInNs":J
    :cond_3
    :goto_3
    monitor-exit v15

    goto/16 :goto_0

    .line 160
    .restart local v6    # "ref":J
    .restart local v10    # "deltaInMs":J
    .restart local v12    # "deltaInNs":J
    .restart local v16    # "pts":J
    .restart local v18    # "ptsInNs":J
    .restart local v20    # "refInNs":J
    :catch_0
    move-exception v14

    .line 161
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "MediaDecoder2Video"

    const-string v3, "get exception as skip frame with releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    goto :goto_2

    .line 167
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_4
    const-wide/16 v2, 0x1f4

    cmp-long v2, v10, v2

    if-lez v2, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    monitor-exit v15

    goto/16 :goto_1

    .line 172
    :cond_5
    const-string v2, "MediaDecoder2Video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shedule a frame to render in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v12

    invoke-virtual {v2, v8, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->removeFrameFromQ(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->nFrameRendered:J

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    goto :goto_3

    .line 176
    :catch_1
    move-exception v14

    .line 177
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v2, "MediaDecoder2Video"

    const-string v3, "get exception as a result of timed releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bufInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->showHeatBeat()V

    .line 197
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->tryToReleaseBuffers()V

    .line 200
    :cond_0
    return-void

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method createRenderer()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RenderThreadVideo"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method flushRenderer()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRenderState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 106
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaDecoder2Video"

    const-string v3, "flushRenderer interrupted"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method pauseRenderer()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 86
    return-void
.end method

.method startRenderer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mLastFrameRendered:Z

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    if-nez v0, :cond_0

    .line 77
    const-string v0, "MediaDecoder2Video"

    const-string v1, "start rendering"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mRendererStarted:Z

    goto :goto_0
.end method

.method stopRenderer()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 113
    :cond_1
    return-void
.end method

.method unpauseRenderer()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mPaused:Z

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    const-string v0, "MediaDecoder2Video"

    const-string v1, "unpauseRenderer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
