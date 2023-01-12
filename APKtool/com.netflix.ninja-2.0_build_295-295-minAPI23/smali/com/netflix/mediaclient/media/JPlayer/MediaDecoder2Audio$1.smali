.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;
.super Landroid/os/Handler;
.source "MediaDecoder2Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->createRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field audioHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/os/Looper;)V
    .locals 2
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->audioHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const-string v2, "MediaDecoder2Audio"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v2, "RenderThreadAudeo"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string v2, ", nFrameRendered "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSampleCnt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->audioHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;->ShowHearbeat(Ljava/lang/String;)V

    .line 90
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 263
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "RenderThreadAudeo had unknown message"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 92
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    .line 93
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPlaying()V

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 96
    const-string v2, "MediaDecoder2Audio"

    const-string v4, "render state play"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/4 v9, -0x1

    .line 102
    .local v9, "bufIndex":I
    const/4 v10, 0x0

    .line 103
    .local v10, "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v8, 0x0

    .line 104
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v3, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v3

    .line 105
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    move-object v10, v0

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_3

    .line 110
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 116
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    if-eqz v10, :cond_4

    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 118
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "renderer got buffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onEndOfStream(Z)V

    goto/16 :goto_0

    .line 98
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v9    # "bufIndex":I
    .end local v10    # "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 111
    .restart local v8    # "buf":Ljava/nio/ByteBuffer;
    .restart local v9    # "bufIndex":I
    .restart local v10    # "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    :catch_0
    move-exception v11

    .line 112
    .local v11, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "MediaDecoder2Audio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOutputBuffer has Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 125
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->startRenderer()V

    .line 127
    if-ltz v9, :cond_9

    .line 128
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    .line 129
    .local v18, "ptsInMsThisFrame":J
    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v2

    iget v3, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v3, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 132
    const-wide/16 v12, 0x0

    .line 134
    .local v12, "headPosition":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v12

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->shouldUpdate(J)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_6

    .line 142
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    sub-long v14, v2, v12

    .line 143
    .local v14, "pendingSample":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    add-long v16, v2, v4

    .line 144
    .local v16, "pendingTime":J
    sub-long v24, v18, v16

    .line 145
    .local v24, "updateToTime":J
    const-string v2, "MediaDecoder2Audio"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    const-string v2, "MediaDecoder2Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v2, "MediaDecoder2Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioClock: predicted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v4, v4, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, update to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v4, v4, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v4

    sub-long v4, v24, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pending in ms = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->update(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 155
    .end local v14    # "pendingSample":J
    .end local v16    # "pendingTime":J
    .end local v24    # "updateToTime":J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    const-wide/16 v4, 0x600

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$014(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;J)J

    .line 165
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    .line 171
    .end local v12    # "headPosition":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v3, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v3

    .line 172
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBufferInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->delete(I)V

    .line 174
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 176
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 180
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    .line 181
    const-string v2, "MediaDecoder2Audio"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 182
    const-string v2, "MediaDecoder2Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReleaseOutputBuffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms,flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$108(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)J

    .line 192
    .end local v18    # "ptsInMsThisFrame":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    .line 193
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_b

    .line 194
    const-string v2, "MediaDecoder2Audio"

    const-string v4, "render state is not play"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 135
    .restart local v12    # "headPosition":J
    .restart local v18    # "ptsInMsThisFrame":J
    :catch_1
    move-exception v11

    .line 136
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "MediaDecoder2Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioHeaderPosition() has Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 152
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "MediaDecoder2Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update clock has Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 158
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget v3, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$014(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;J)J

    goto/16 :goto_3

    .line 174
    .end local v12    # "headPosition":J
    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v2

    .line 177
    :catch_3
    move-exception v11

    .line 178
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "get un-documented exception as a result of releaseOutputBuffer()"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 197
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v18    # "ptsInMsThisFrame":J
    :cond_b
    const-wide/16 v22, 0x14

    .line 198
    .local v22, "timeToNext":J
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    .line 205
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v9    # "bufIndex":I
    .end local v10    # "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v22    # "timeToNext":J
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->pause()J

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    .line 207
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;->onPaused()V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 209
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 210
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "render state pause"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onPasued(Z)V

    goto/16 :goto_0

    .line 209
    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    .line 216
    :pswitch_2
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "render state flushing"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->flush()V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v3, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v3

    .line 219
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 220
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 238
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_4

    .line 243
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$302(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 246
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->startRenderer()V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    .line 250
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 251
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 253
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "render state flushed"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :catchall_5
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v2

    .line 239
    :catch_4
    move-exception v11

    .line 241
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaDecoder2Audio"

    const-string v3, "mAudioTrack already stopped/uninitialized"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 251
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :catchall_6
    move-exception v2

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v2

    .line 258
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Audio;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onFlushed(Z)V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
