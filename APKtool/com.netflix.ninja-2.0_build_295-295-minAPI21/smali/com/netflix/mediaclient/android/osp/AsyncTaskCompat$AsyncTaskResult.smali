.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;


# direct methods
.method varargs constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;, "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 490
    iput-object p2, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 491
    return-void
.end method
