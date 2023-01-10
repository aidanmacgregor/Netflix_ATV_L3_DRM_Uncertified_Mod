.class public final Lcom/netflix/mediaclient/nccp/NccpKeyStore;
.super Ljava/lang/Object;
.source "NccpKeyStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_nccp"

.field private static nccpKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump()V
    .locals 6

    .prologue
    .line 73
    sget-object v3, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->nccpKeyStore:Ljava/security/KeyStore;

    if-nez v3, :cond_1

    .line 74
    const-string v3, "nf_nccp"

    const-string v4, "Key store is empty!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 78
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    sget-object v3, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->nccpKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 79
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "alias":Ljava/lang/String;
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    .end local v0    # "alias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v3, "nf_nccp"

    const-string v4, "Failed to list aliases"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->nccpKeyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v2, "BKS"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->nccpKeyStore:Ljava/security/KeyStore;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->nccpKeyStore:Ljava/security/KeyStore;

    const-string v3, "spyder"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    :cond_0
    :goto_0
    const-string v2, "nf_nccp"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-static {}, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->dump()V

    .line 60
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "nf_nccp"

    const-string v3, "We failed to load NCCP trust store from res/raw"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    if-eqz v1, :cond_0

    .line 51
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v2

    goto :goto_0

    .line 49
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 53
    :cond_2
    :goto_1
    throw v2

    .line 52
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method
