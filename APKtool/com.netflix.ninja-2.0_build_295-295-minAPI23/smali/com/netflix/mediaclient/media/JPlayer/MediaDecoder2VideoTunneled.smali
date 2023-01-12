.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.source "MediaDecoder2VideoTunneled.java"


# static fields
.field private static final MSG_DECODER_FLUSH:I = 0x2

.field private static final MSG_DECODER_GET_FRAME:I = 0x1

.field private static final MSG_DECODER_INITIALIZED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field protected static final TIME_TO_NEXT_RETRY:J = 0x14L


# instance fields
.field private mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

.field protected mDecoder:Landroid/media/MediaCodec;

.field private mDecoderPause:Z

.field private mEncrypted:Z

.field private mFrameReceived:J

.field private mFrameRendered:J

.field private mInputBuffersQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputHandler:Landroid/os/Handler;

.field private mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

.field private mInputThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 6
    .param p1, "dataSource"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .param p2, "decoderName"    # Ljava/lang/String;
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "s"    # Landroid/view/Surface;
    .param p5, "crypto"    # Landroid/media/MediaCrypto;
    .param p6, "listener"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;-><init>()V

    .line 35
    new-instance v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    .line 37
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    .line 38
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameRendered:J

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mIsAudio:Z

    .line 42
    invoke-virtual {p0, p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    .line 44
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEncrypted:Z

    .line 45
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputBuffersQ:Ljava/util/LinkedList;

    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->createInputThread()V

    .line 52
    :try_start_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 107
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, p5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 108
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureDecoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    const/4 v2, -0x1

    iput v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mState:I

    .line 131
    :goto_1
    return-void

    .line 44
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaDecoder2VideoTunneled fail to create decoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getDetailMediaCodecError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "err":Ljava/lang/String;
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->reportError(ILjava/lang/String;)V

    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "err":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaDecoder2VideoTunneled fail to configure decoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getDetailMediaCodecError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "err":Ljava/lang/String;
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->reportError(ILjava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "err":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaDecoder2VideoTunneled fail to start decoder, exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getDetailMediaCodecError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "err":Ljava/lang/String;
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->reportError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$108(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J
    .locals 4
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameRendered:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameRendered:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputBuffersQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoderPause:Z

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->queueInputbuffer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J
    .locals 2
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    return-wide v0
.end method

.method static synthetic access$608(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)J
    .locals 4
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    return-object v0
.end method

.method private createInputThread()V
    .locals 4

    .prologue
    .line 134
    const-string v0, "InputthreadVideoTunneled"

    .line 135
    .local v0, "threadNmae":Ljava/lang/String;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "InputthreadVideoTunneled"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputThread:Landroid/os/HandlerThread;

    .line 136
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled$2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method private queueInputbuffer(I)Z
    .locals 20
    .param p1, "bufIndex"    # I

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 194
    .local v13, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    invoke-interface {v2, v13}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;->onRequestData(Ljava/nio/ByteBuffer;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;

    move-result-object v17

    .line 195
    .local v17, "meta":Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    if-gtz v2, :cond_0

    move-object/from16 v0, v17

    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    if-eqz v2, :cond_8

    .line 198
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueueInput "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 205
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STAT:DEC input late "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mRefClock:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$Clock;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    move-object/from16 v0, v17

    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v3, "got decoder input BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEncrypted:Z

    if-eqz v2, :cond_7

    .line 216
    new-instance v5, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 217
    .local v5, "ci":Landroid/media/MediaCodec$CryptoInfo;
    const/4 v2, 0x1

    iput v2, v5, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 218
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    array-length v2, v2

    if-nez v2, :cond_6

    .line 220
    const/16 v2, 0x10

    new-array v14, v2, [B

    .line 221
    .local v14, "dummy":[B
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v2, v14

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    .line 222
    const/4 v2, 0x0

    aput-byte v2, v14, v16

    .line 221
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 224
    :cond_4
    iput-object v14, v5, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 225
    iput-object v14, v5, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 226
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget v3, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    aput v3, v18, v2

    .line 227
    .local v18, "numBytesOfClearData":[I
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 228
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v19, v2

    .line 229
    .local v19, "numBytesOfEncryptedData":[I
    move-object/from16 v0, v19

    iput-object v0, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 230
    const/4 v2, 0x1

    iput v2, v5, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 249
    .end local v14    # "dummy":[B
    .end local v16    # "i":I
    .end local v18    # "numBytesOfClearData":[I
    .end local v19    # "numBytesOfEncryptedData":[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object/from16 v0, v17

    iget v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 255
    .end local v5    # "ci":Landroid/media/MediaCodec$CryptoInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    if-eqz v2, :cond_5

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mEventListener:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mFrameReceived:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    invoke-interface/range {v6 .. v11}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;->onSampleRendered(ZJJ)V

    .line 265
    :cond_5
    const/4 v2, 0x1

    .line 268
    :goto_3
    return v2

    .line 232
    .restart local v5    # "ci":Landroid/media/MediaCodec$CryptoInfo;
    :cond_6
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    iput-object v2, v5, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 233
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    iput-object v2, v5, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 234
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteInClear:[I

    iput-object v2, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 235
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    iput-object v2, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 236
    move-object/from16 v0, v17

    iget v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nSubsample:I

    iput v2, v5, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    .end local v5    # "ci":Landroid/media/MediaCodec$CryptoInfo;
    :catch_0
    move-exception v15

    .line 260
    .local v15, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get exception queueInputBuffer() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getDetailMediaCodecError(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->reportError(ILjava/lang/String;)V

    .line 262
    const/4 v2, 0x0

    goto :goto_3

    .line 252
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->offset:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->timestamp:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    move-object/from16 v0, v17

    iget v12, v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->flags:I

    move/from16 v7, p1

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 268
    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method


# virtual methods
.method public flush()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v2, "flushinput"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 328
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    monitor-enter v2

    .line 329
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$LocalStateNotifier;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    :cond_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get exception as a result of flush() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v3, "flushinput interrupted"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoderPause:Z

    .line 310
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v1, "restart()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoderPause:Z

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoderPause:Z

    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 287
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v2, "stop()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 296
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v2, "stop()/release()"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 299
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get exception as a result of stop/releas() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unpause()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->TAG:Ljava/lang/String;

    const-string v1, "unpause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mDecoderPause:Z

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoder2VideoTunneled;->mInputHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method
