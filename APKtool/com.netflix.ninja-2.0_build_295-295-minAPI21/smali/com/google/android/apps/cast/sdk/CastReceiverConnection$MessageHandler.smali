.class Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;
.super Landroid/os/Handler;
.source "CastReceiverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .param p2, "x1"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;-><init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 343
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 369
    const-string v6, "CastReceiverConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-static {v8}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->access$200(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->getAppInstance()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 345
    :sswitch_0
    iget-object v6, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-static {v6}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->access$200(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onStopReceived()V

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "m"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "msgStr":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "jsonMessage":Lorg/json/JSONObject;
    const-string v6, "senderId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "senderId":Ljava/lang/String;
    const-string v6, "namespace"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "namespace":Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "payload":Ljava/lang/String;
    const-string v6, "urn:x-cast:com.google.cast.system"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 356
    iget-object v6, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-static {v6, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->access$300(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v1    # "jsonMessage":Lorg/json/JSONObject;
    .end local v3    # "namespace":Ljava/lang/String;
    .end local v4    # "payload":Ljava/lang/String;
    .end local v5    # "senderId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "CastReceiverConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid JSON received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 357
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonMessage":Lorg/json/JSONObject;
    .restart local v3    # "namespace":Ljava/lang/String;
    .restart local v4    # "payload":Ljava/lang/String;
    .restart local v5    # "senderId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-virtual {v6}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    iget-object v6, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;->this$0:Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    invoke-static {v6}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->access$200(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method
