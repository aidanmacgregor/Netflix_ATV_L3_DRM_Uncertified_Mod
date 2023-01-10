.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;
.super Landroid/os/Handler;
.source "MediaDecoderPipe2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createOutputThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field frameDecoded:J

.field outputHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

.field final synthetic val$threadNmae:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 2
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iput-object p3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->val$threadNmae:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    .line 354
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->outputHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->val$threadNmae:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, ", frameDecoded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->outputHeartBeat:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$DecoderHeartbeat;->ShowHearbeat(Ljava/lang/String;)V

    .line 362
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 455
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "outputthread handler had unknown message"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return-void

    .line 364
    :pswitch_0
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "outputthread pause"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_1
    const/4 v3, -0x1

    .line 370
    .local v3, "index":I
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-boolean v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-nez v5, :cond_2

    .line 371
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoking dequeueOutputBuffer"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 375
    .local v0, "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    :try_start_0
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 381
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-boolean v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-nez v5, :cond_3

    .line 382
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "invoking dequeueOutputBuffer completed"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    .line 432
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-boolean v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-nez v5, :cond_5

    .line 434
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "schedule next dequeueOutputBuffer"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_5
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get un-documented exception as a result of dequeueOutputBuffer() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v5, -0x3

    if-ne v3, v5, :cond_7

    .line 387
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OUTPUT_BUFFERS_CHANGED"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 389
    :cond_7
    const/4 v5, -0x2

    if-ne v3, v5, :cond_8

    .line 390
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 391
    .local v2, "format":Landroid/media/MediaFormat;
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 392
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OUTPUT_FORMAT_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 395
    .end local v2    # "format":Landroid/media/MediaFormat;
    :cond_8
    if-ltz v3, :cond_d

    .line 397
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    .line 398
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "got decoder output BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_9
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_a

    .line 401
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 402
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DequeueOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_a
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v5, :cond_c

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_c

    .line 407
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 408
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STAT:DEC output late "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v7, v7, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-object v7, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v7, v7, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_b
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-boolean v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-eqz v5, :cond_c

    .line 413
    :try_start_1
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    :goto_2
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 414
    :catch_1
    move-exception v1

    .line 415
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "MediaDecoder2"

    const-string v6, "get exception as a result of releaseOutputBuffer()"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-virtual {v5, v3, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 423
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    .line 425
    iget-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v5, :cond_4

    .line 426
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-object v5, v5, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    iget-boolean v6, v6, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderStarted(Z)V

    goto/16 :goto_1

    .line 430
    :cond_d
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 442
    .end local v0    # "bufInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v3    # "index":I
    :pswitch_1
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v6

    monitor-enter v6

    .line 443
    :try_start_2
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 444
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->frameDecoded:J

    .line 446
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "flush output done"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 449
    :pswitch_2
    iget-object v5, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;

    invoke-static {v5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "output is initialized"

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
