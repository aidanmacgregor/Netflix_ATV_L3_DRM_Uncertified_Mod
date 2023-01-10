.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;
.super Landroid/os/Handler;
.source "MediaDecoder2VideoTunneled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->createInputThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 187
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "outputthread handler had unknown message"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inputthread pause"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, -0x1

    .line 148
    .local v0, "bufIndex":I
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-ltz v0, :cond_4

    .line 154
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;I)Z

    move-result v1

    .line 155
    .local v1, "result":Z
    if-eqz v1, :cond_4

    .line 156
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 157
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 158
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderStarted(Z)V

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$608(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J

    goto :goto_0

    .line 152
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 158
    .restart local v1    # "result":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 170
    .end local v1    # "result":Z
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 174
    .end local v0    # "bufIndex":I
    :pswitch_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 175
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v3

    monitor-enter v3

    .line 176
    :try_start_4
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-static {v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 177
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flush input done"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 181
    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "input is initialized"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onDecoderReady(Z)V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
