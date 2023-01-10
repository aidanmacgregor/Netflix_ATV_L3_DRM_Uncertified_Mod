.class public final Lcom/netflix/mediaclient/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final USER_HIGH_PRIORITY:I = 0x3e7

.field public static final USER_LOW_PRIORITY:I = -0x3e7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/netflix/mediaclient/util/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSafePriority(I)I
    .locals 2
    .param p0, "priority"    # I

    .prologue
    .line 223
    move v0, p0

    .line 224
    .local v0, "ret":I
    const/16 v1, -0x3e8

    if-ge p0, v1, :cond_1

    .line 225
    const/16 v0, -0x3e7

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const/16 v1, 0x3e8

    if-le p0, v1, :cond_0

    .line 227
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public static registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 202
    const/4 v1, 0x1

    .line 204
    .local v1, "res":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Failed to register "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Receiver is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_1
    if-eqz p4, :cond_2

    array-length v5, p4

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 172
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No actions!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Category can not be null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 181
    move-object v1, p4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v0, v1, v3

    .line 182
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    invoke-static {p3}, Lcom/netflix/mediaclient/util/IntentUtils;->getSafePriority(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 188
    invoke-static {p0, p1, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Z

    move-result v5

    return v5
.end method

.method public static varargs registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 145
    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Context is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_0
    if-nez p1, :cond_1

    .line 72
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Receiver is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :cond_1
    if-eqz p4, :cond_2

    array-length v7, p4

    const/4 v8, 0x1

    if-ge v7, v8, :cond_3

    .line 76
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No actions!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    :cond_3
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Category can not be null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 85
    move-object v1, p4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v0, v1, v4

    .line 86
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 87
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    :cond_6
    invoke-static {p3}, Lcom/netflix/mediaclient/util/IntentUtils;->getSafePriority(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 93
    const/4 v6, 0x1

    .line 95
    .local v6, "res":Z
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    return v6

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v7, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string v8, "Failed to register "

    invoke-static {v7, v8, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static varargs registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 49
    const/16 v0, 0x3e7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    if-nez p1, :cond_1

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Receiver is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v1, 0x1

    .line 256
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Receiver is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v1, 0x1

    .line 130
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lcom/netflix/mediaclient/util/IntentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method
