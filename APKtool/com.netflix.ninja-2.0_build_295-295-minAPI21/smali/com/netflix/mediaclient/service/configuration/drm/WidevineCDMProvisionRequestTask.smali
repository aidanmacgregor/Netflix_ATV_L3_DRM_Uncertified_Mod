.class public final Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;
.super Landroid/os/AsyncTask;
.source "WidevineCDMProvisionRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;

.field private connectionTimeout:I

.field private drmRequest:[B

.field private socketTimeout:I


# direct methods
.method public constructor <init>([BLcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;)V
    .locals 1
    .param p1, "drmRequest"    # [B
    .param p2, "callback"    # Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    const-string v0, "nf_net"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x1388

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    .line 42
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->socketTimeout:I

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->drmRequest:[B

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;

    .line 54
    return-void
.end method

.method public constructor <init>([BLcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;II)V
    .locals 0
    .param p1, "drmRequest"    # [B
    .param p2, "callback"    # Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;
    .param p3, "connectionTimeout"    # I
    .param p4, "socketTimeout"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;-><init>([BLcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;)V

    .line 66
    iput p3, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    .line 67
    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->socketTimeout:I

    .line 68
    return-void
.end method

.method private postRequest(Ljava/lang/String;[B)[B
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drmRequest"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x3

    .line 90
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 91
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&signedRequest="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "method":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 93
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    iget v9, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->connectionTimeout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    iget v9, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->socketTimeout:I

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    const-string v9, "nf_net"

    invoke-static {v9, v11}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    const-string v9, "nf_net"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PostRequest:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :try_start_0
    const-string v9, "Accept"

    const-string v10, "*/*"

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v9, "User-Agent"

    const-string v10, "Widevine CDM v1.0"

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v3, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 108
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 109
    .local v7, "responseCode":I
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_2

    .line 110
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    .line 128
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "responseCode":I
    :cond_1
    :goto_0
    return-object v6

    .line 112
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "responseCode":I
    :cond_2
    const-string v9, "nf_net"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    const-string v9, "nf_net"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Server returned HTTP error code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 119
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "responseCode":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "cte":Lorg/apache/http/conn/ConnectTimeoutException;
    const-string v9, "nf_net"

    const-string v10, "Connection timeout"

    invoke-static {v9, v10, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v0    # "cte":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v8

    .line 122
    .local v8, "ste":Ljava/net/SocketTimeoutException;
    const-string v9, "nf_net"

    const-string v10, "Socket timeout"

    invoke-static {v9, v10, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v8    # "ste":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "nf_net"

    const-string v10, "Request protocol failed"

    invoke-static {v9, v10, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "nf_net"

    const-string v10, "Request IO failed "

    invoke-static {v9, v10, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->drmRequest:[B

    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->postRequest(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 73
    .local v0, "responseBody":[B
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "nf_net"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string v1, "nf_net"

    const-string v2, "Response is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 1
    .param p1, "responseBody"    # [B

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/drm/WidevineCDMProvisionRequestTask;->callback:Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/configuration/drm/MSLWidevineDrmManager$WidewineProvisiongCallback;->done([B)V

    .line 86
    :cond_0
    return-void
.end method
