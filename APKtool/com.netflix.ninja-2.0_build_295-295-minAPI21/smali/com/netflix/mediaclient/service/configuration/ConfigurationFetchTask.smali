.class public Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;
.super Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.source "ConfigurationFetchTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netflix/mediaclient/android/app/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_configuration_fetchTask"


# instance fields
.field private fetchedConfigString:Ljava/lang/String;

.field private final mCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

.field private final mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;)V
    .locals 0
    .param p1, "endpointRegistry"    # Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;
    .param p2, "callback"    # Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    .line 20
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->mCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 25
    const-string v3, "nf_configuration_fetchTask"

    const-string v4, "start fetch..."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->mEndpointRegistry:Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/EndpointRegistryProvider;->getConfigUrlFull()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "configUrl":Ljava/lang/String;
    :try_start_0
    const-string v3, "nf_configuration_fetchTask"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "nf_configuration_fetchTask"

    const-string v4, "configurationUrl %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getRemoteDataAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->fetchedConfigString:Ljava/lang/String;

    .line 33
    const-string v3, "nf_configuration_fetchTask"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "nf_configuration_fetchTask"

    const-string v4, "Device config data=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->fetchedConfigString:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    return-object v3

    .line 38
    :catch_0
    move-exception v2

    .line 39
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "errorMsg":Ljava/lang/String;
    const-string v3, "nf_configuration_fetchTask"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const-string v3, "nf_configuration_fetchTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not fetch configuration! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    const-string v3, "could not validate certificate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "sslhandshakeexception"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    :cond_3
    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->HTTP_SSL_DATE_TIME_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    .line 46
    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->CONFIG_DOWNLOAD_FAILED:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->doInBackground([Ljava/lang/Void;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .param p1, "status"    # Lcom/netflix/mediaclient/android/app/Status;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->mCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->mCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->fetchedConfigString:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent$ConfigFetchCallback;->onConfigDataFetched(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationFetchTask;->onPostExecute(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
