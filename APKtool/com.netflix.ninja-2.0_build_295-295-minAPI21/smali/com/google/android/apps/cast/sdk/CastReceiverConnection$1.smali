.class Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;
.super Ljava/lang/Object;
.source "CastReceiverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;


# direct methods
.method constructor <init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-static {v0, p2}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->access$000(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Landroid/os/IBinder;)V

    .line 116
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    return-void
.end method
