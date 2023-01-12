.class public Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;
.super Ljava/lang/Object;
.source "JPlayer2.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecoderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDecoderReady(Z)V
    .locals 2
    .param p1, "isAudio"    # Z

    .prologue
    .line 159
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 160
    :try_start_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "AUDIO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    const-string v0, "NF_JPlayer2"

    const-string v1, "VIDEO init\'d"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDecoderStarted(Z)V
    .locals 2
    .param p1, "isAudio"    # Z

    .prologue
    .line 169
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "AUDIO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    const-string v0, "NF_JPlayer2"

    const-string v1, "VIDEO ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$800(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;->unpause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndOfStream(Z)V
    .locals 2
    .param p1, "isAudio"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$1100(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;Z)V

    .line 217
    if-eqz p1, :cond_0

    .line 218
    const-string v0, "NF_JPlayer2"

    const-string v1, "AUDIO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "VIDEO END_OF_STREAM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isAudio"    # Z
    .param p2, "errorCat"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1, p2, p2, p3}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$1200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZIILjava/lang/String;)V

    .line 227
    return-void
.end method

.method public declared-synchronized onFlushed(Z)V
    .locals 2
    .param p1, "isAudio"    # Z

    .prologue
    .line 207
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 208
    :try_start_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "AUDIO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    const-string v0, "NF_JPlayer2"

    const-string v1, "VIDEO flushed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPasued(Z)V
    .locals 2
    .param p1, "isAudio"    # Z

    .prologue
    .line 198
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    const-string v0, "NF_JPlayer2"

    const-string v1, "AUDIO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$900(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    const-string v0, "NF_JPlayer2"

    const-string v1, "VIDEO paused"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSampleRendered(ZJJ)V
    .locals 4
    .param p1, "isAudio"    # Z
    .param p2, "n"    # J
    .param p4, "pts"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$300(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$200(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;)J

    move-result-wide v0

    add-long/2addr p4, v0

    .line 187
    :cond_0
    cmp-long v0, p4, v2

    if-ltz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2$DecoderListener;->this$0:Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;

    invoke-static {v0, p1, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;->access$1000(Lcom/netflix/mediaclient/media/JPlayer/JPlayer2;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    if-eqz p1, :cond_2

    .line 195
    :cond_2
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
