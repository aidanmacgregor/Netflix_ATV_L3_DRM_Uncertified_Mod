.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;
.super Landroid/os/Handler;
.source "MediaDecoder2AudioPassthru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "had unknown message"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 58
    :pswitch_1
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v10, :cond_0

    .line 61
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    move-result-object v10

    iget-object v11, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;->onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    move-result-object v1

    .line 62
    .local v1, "meta":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get input from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " flags "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-gtz v10, :cond_2

    iget v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    if-eqz v10, :cond_3

    .line 66
    :cond_2
    iget v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    const/high16 v11, 0x10000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "got codec change, need to terminate the pipe"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 73
    :cond_3
    iget v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_4

    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "got input BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v10, :cond_4

    .line 76
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onEndOfStream(Z)V

    .line 79
    :cond_4
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    if-eqz v10, :cond_6

    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "start audiotrack ... "

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    .line 83
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$402(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;J)J

    .line 86
    :cond_5
    :try_start_0
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v10, :cond_6

    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "output started"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderStarted(Z)V

    .line 95
    :cond_6
    iget v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-lez v10, :cond_9

    .line 97
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v11, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget v12, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v6

    .line 98
    .local v6, "ret":I
    if-lez v6, :cond_a

    .line 100
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    const-wide/16 v12, 0x600

    invoke-static {v10, v12, v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$414(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;J)J

    .line 102
    :try_start_1
    new-instance v7, Landroid/media/AudioTimestamp;

    invoke-direct {v7}, Landroid/media/AudioTimestamp;-><init>()V

    .line 103
    .local v7, "timestamp":Landroid/media/AudioTimestamp;
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10, v7}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 104
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)J

    move-result-wide v10

    iget-wide v12, v7, Landroid/media/AudioTimestamp;->framePosition:J

    sub-long v2, v10, v12

    .line 105
    .local v2, "pendingSample":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_7

    .line 106
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WRONG AudioTimestamp = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Landroid/media/AudioTimestamp;->framePosition:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",nanoTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "sampleFed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-wide/16 v2, 0x0

    .line 109
    :cond_7
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    iget-object v12, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)I

    move-result v12

    int-to-long v12, v12

    div-long v4, v10, v12

    .line 110
    .local v4, "pendingTime":J
    iget-wide v10, v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    sub-long v8, v10, v4

    .line 111
    .local v8, "updateToTime":J
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AudioClock: predicted "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v12, v12, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms, update to = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms, delta = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v12, v12, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v12

    sub-long v12, v8, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pending in ms = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", total "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v12}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_8
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v10, v8, v9}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->update(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v2    # "pendingSample":J
    .end local v4    # "pendingTime":J
    .end local v6    # "ret":I
    .end local v7    # "timestamp":Landroid/media/AudioTimestamp;
    .end local v8    # "updateToTime":J
    :cond_9
    :goto_2
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    const-wide/16 v12, 0x14

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAudioTrack already stopped/uninitialized "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 116
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v6    # "ret":I
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getTimestamp has Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 121
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AudioTrack.write() returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_b
    const/16 v10, -0x20

    if-ne v6, v10, :cond_9

    .line 125
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->release()V

    .line 126
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_2

    .line 133
    .end local v1    # "meta":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    .end local v6    # "ret":I
    :pswitch_2
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v10, :cond_c

    .line 134
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->pause()V

    .line 136
    :cond_c
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->pause()J

    goto/16 :goto_0

    .line 141
    :pswitch_3
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "initialized"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v10, :cond_d

    .line 143
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    iget-object v10, v10, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderReady(Z)V

    .line 145
    :cond_d
    iget-object v10, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;

    invoke-static {v10}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2AudioPassthru;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
