.class public Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
.super Ljava/lang/Object;
.source "CastReceiverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;,
        Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CastReceiverConnection"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

.field private mIsReady:Z

.field private mLocalMessenger:Landroid/os/Messenger;

.field private mPeerMessenger:Landroid/os/Messenger;

.field private mService:Lcom/google/android/apps/cast/ICastReceiverService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mIsReady:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->setBinders(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/cast/sdk/CastReceiverConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->handleSystemMessage(Ljava/lang/String;)V

    return-void
.end method

.method private clearBinders()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 307
    iput-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    .line 309
    :cond_0
    iput-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mLocalMessenger:Landroid/os/Messenger;

    .line 310
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->unbindService()V

    .line 311
    return-void
.end method

.method private handleConnectFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    const-string v0, "CastReceiverConnection"

    const-string v1, "Cast receiver connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onConnectCompleted(Z)V

    .line 334
    iput-boolean v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mIsReady:Z

    .line 335
    return-void
.end method

.method private handleConnectSucceeded()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onConnectCompleted(Z)V

    .line 329
    return-void
.end method

.method private handleSystemMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 377
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    .local v1, "jsonMessage":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "type":Ljava/lang/String;
    const-string v3, "ready"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mIsReady:Z

    .line 382
    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const-string v4, "applicationId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onReady(Ljava/lang/String;)V

    .line 401
    .end local v1    # "jsonMessage":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 383
    .restart local v1    # "jsonMessage":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v3, "senderconnected"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const-string v4, "senderId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userAgent"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onSenderConnected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v1    # "jsonMessage":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "CastReceiverConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid JSON received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonMessage":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "senderdisconnected"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const-string v4, "senderId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onSenderDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    const-string v3, "volumechanged"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const-string v4, "level"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "muted"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onSystemVolumeChanged(DZ)V

    goto :goto_0

    .line 393
    :cond_3
    const-string v3, "visibilitychanged"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    const-string v4, "visible"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 396
    :cond_4
    const-string v3, "CastReceiverConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type in system namespace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private notify(I)Z
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->sendAndroidMessageToReceiver(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static resolveServiceAndBuildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.cast.action.BIND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 91
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.apps."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.cast."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendAndroidMessageToReceiver(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_0

    .line 281
    :goto_0
    return v1

    .line 276
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v1, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CastReceiverConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->getAppInstance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    const-string v4, "CastReceiverConnection"

    const-string v5, "Cannot send message if not connected to receiver."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return v3

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SystemSender"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "urn:x-cast:com.google.cast.system"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    :cond_1
    const-string v4, "CastReceiverConnection"

    const-string v5, "Cannot send message if ready message not received."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 202
    .local v2, "jsonMessage":Lorg/json/JSONObject;
    const-string v4, "senderId"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v4, "namespace"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v4, "data"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "m"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v4, 0x0

    const/16 v5, 0x15

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->sendAndroidMessageToReceiver(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 209
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "jsonMessage":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "CastReceiverConnection"

    const-string v5, "JSON failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setBinders(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 285
    invoke-static {p1}, Lcom/google/android/apps/cast/ICastReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/apps/cast/ICastReceiverService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mService:Lcom/google/android/apps/cast/ICastReceiverService;

    .line 286
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$MessageHandler;-><init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mLocalMessenger:Landroid/os/Messenger;

    .line 289
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mService:Lcom/google/android/apps/cast/ICastReceiverService;

    iget-object v3, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v3}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->getAppInstance()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mLocalMessenger:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/cast/ICastReceiverService;->connect(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 291
    .local v1, "peerBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 292
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    .line 293
    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->handleConnectSucceeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "peerBinder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CastReceiverConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v4}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->getAppInstance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->handleConnectFailed()V

    .line 301
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->clearBinders()V

    goto :goto_0
.end method

.method private unbindService()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mService:Lcom/google/android/apps/cast/ICastReceiverService;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mService:Lcom/google/android/apps/cast/ICastReceiverService;

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "CastReceiverConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cast receiver died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v2}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->getAppInstance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mDelegate:Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;

    invoke-virtual {v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$Delegate;->onStopReceived()V

    .line 325
    return-void
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->handleConnectSucceeded()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v1, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection$1;-><init>(Lcom/google/android/apps/cast/sdk/CastReceiverConnection;)V

    iput-object v1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->resolveServiceAndBuildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->handleConnectFailed()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->clearBinders()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mIsReady:Z

    .line 145
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mPeerMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->mIsReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyStarted()Z
    .locals 2

    .prologue
    .line 253
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->notifyStarted(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public notifyStarted(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "statusText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 227
    const/16 v3, 0xb

    invoke-direct {p0, v3}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->notify(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    :goto_0
    return v2

    .line 232
    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .local v1, "readyMessage":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "ready"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v3, "statusText"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v3, "activeNamespaces"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v3, "SystemSender"

    const-string v4, "urn:x-cast:com.google.cast.system"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->sendMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 241
    .end local v1    # "readyMessage":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "CastReceiverConnection"

    const-string v4, "JSON failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyStopped()Z
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->notify(I)Z

    move-result v0

    return v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "payload"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "SystemSender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "CastReceiverConnection"

    const-string v1, "Invalid senderId. Cannot send message to receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->sendMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "m"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/cast/sdk/CastReceiverConnection;->sendAndroidMessageToReceiver(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method
