.class public final Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;
.super Ljava/lang/Object;
.source "EsnProviderRegistry.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_esn"

.field private static sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getESN(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 40
    const-class v1, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    if-nez v0, :cond_1

    .line 41
    const-string v0, "nf_esn"

    const-string v2, "Create ESN"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnCdmProvider;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    .line 43
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->initialize(Landroid/content/Context;)V

    .line 48
    :goto_0
    const-string v0, "nf_esn"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "nf_esn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ESN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProviderRegistry;->sEsnProvider:Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :cond_1
    :try_start_1
    const-string v0, "nf_esn"

    const-string v2, "Get created ESN"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
