.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaDataSource"
.end annotation


# static fields
.field static final TYPE_AUDIO:Z = true

.field static final TYPE_VIDEO:Z


# instance fields
.field private mIsAudio:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V
    .locals 0
    .param p2, "isAudio"    # Z

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p2, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    .line 69
    return-void
.end method


# virtual methods
.method public onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    .locals 12
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 72
    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    invoke-direct {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;-><init>()V

    .line 73
    .local v2, "meta":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    iput v8, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 74
    iput v8, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v4, p1, v5, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/nio/ByteBuffer;ZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    .line 90
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_1

    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-lez v4, :cond_1

    iget-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_1

    .line 91
    const-string v4, "NF_JPlayer2"

    invoke-static {v4, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const-string v4, "NF_JPlayer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mFirstPts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-wide v6, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-static {v4, v6, v7}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$202(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;J)J

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    iget-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-lez v4, :cond_6

    .line 99
    iget-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    .line 107
    :cond_2
    :goto_1
    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iget-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    if-eqz v4, :cond_3

    .line 111
    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 113
    iget v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    new-array v0, v4, [B

    .line 114
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 115
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 116
    .local v1, "codecId":Ljava/lang/String;
    const-string v4, "NF_JPlayer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "codecId:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$400(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 118
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    const-string v5, "ec-3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$500(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 120
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 121
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$600(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reconfigureAudioPipe failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->onError(ZILjava/lang/String;)V

    .line 137
    .end local v0    # "b":[B
    .end local v1    # "codecId":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v2

    .line 78
    :cond_4
    const-string v4, "NF_JPlayer2"

    const-string v5, "WITH NON-DIRECT BYTEBUFFER"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 80
    .restart local v0    # "b":[B
    if-nez v0, :cond_5

    .line 81
    iput v8, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    .line 82
    const/4 v4, 0x4

    iput v4, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 84
    const-string v4, "NF_JPlayer2"

    const-string v5, "can\'t get bytearray"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    :cond_5
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    invoke-static {v4, v0, v5, v2}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;[BZLcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "b":[B
    :cond_6
    const-string v4, "NF_JPlayer2"

    invoke-static {v4, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    const-string v5, "NF_JPlayer2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->mIsAudio:Z

    if-eqz v4, :cond_8

    const-string v4, "audio"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " timestamp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mFirstPts: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v6}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_7
    iput-wide v10, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    goto/16 :goto_1

    .line 102
    :cond_8
    const-string v4, "video"

    goto :goto_3

    .line 125
    .restart local v0    # "b":[B
    .restart local v1    # "codecId":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->getClock()Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    move-result-object v3

    .line 126
    .local v3, "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    .line 127
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->start()V

    .line 128
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$700(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V

    .line 129
    iget-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$MediaDataSource;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v4}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->setReferenceClock(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;)V

    goto/16 :goto_2

    .line 132
    .end local v3    # "ref":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;
    :cond_a
    iput v8, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    .line 133
    iput v8, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    goto/16 :goto_2
.end method
