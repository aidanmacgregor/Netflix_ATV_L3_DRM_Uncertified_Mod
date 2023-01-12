.class Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;
.super Landroid/os/Handler;
.source "MediaDecoder2Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->createRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    const-string v0, "MediaDecoder2Video"

    const-string v1, "RenderThreadVideo had unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const-string v0, "MediaDecoder2Video"

    const-string v1, "check if there is frame to render"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)V

    goto :goto_0

    .line 57
    :pswitch_1
    const-string v0, "MediaDecoder2Video"

    const-string v1, "render state flushing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v1, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video$1;->this$0:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;->access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2Video;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 60
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
