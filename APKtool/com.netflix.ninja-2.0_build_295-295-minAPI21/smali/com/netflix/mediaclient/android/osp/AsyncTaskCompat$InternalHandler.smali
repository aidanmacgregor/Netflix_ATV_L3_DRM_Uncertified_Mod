.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$1;

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;

    .line 467
    .local v0, "result":Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 476
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v1, v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    iget-object v2, v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->access$500(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v1, v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    iget-object v2, v0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
