.class public Lcom/netflix/mediaclient/android/app/BackgroundTask;
.super Ljava/lang/Object;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/app/BackgroundTask$1;,
        Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundTask"


# instance fields
.field private final task:Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;-><init>(Lcom/netflix/mediaclient/android/app/BackgroundTask$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/app/BackgroundTask;->task:Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BackgroundTask;->task:Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 30
    return-void
.end method

.method public executeInSerial(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BackgroundTask;->task:Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;

    sget-object v1, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask$NamedAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 38
    return-void
.end method
