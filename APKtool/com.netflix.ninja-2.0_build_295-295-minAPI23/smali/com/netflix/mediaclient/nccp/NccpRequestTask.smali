.class public Lcom/netflix/mediaclient/nccp/NccpRequestTask;
.super Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;
.source "NccpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netflix/mediaclient/nccp/NccpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private connectionTimeout:I

.field private socketTimeout:I

.field private transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/nccp/NccpTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/netflix/mediaclient/nccp/NccpTransaction;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;-><init>()V

    .line 48
    const-string v0, "nf_nccp"

    iput-object v0, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->connectionTimeout:I

    .line 51
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->socketTimeout:I

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/nccp/NccpTransaction;II)V
    .locals 0
    .param p1, "transaction"    # Lcom/netflix/mediaclient/nccp/NccpTransaction;
    .param p2, "connectionTimeout"    # I
    .param p3, "socketTimeout"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/nccp/NccpRequestTask;-><init>(Lcom/netflix/mediaclient/nccp/NccpTransaction;)V

    .line 73
    iput p2, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->connectionTimeout:I

    .line 74
    iput p3, p0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->socketTimeout:I

    .line 75
    return-void
.end method

.method private getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/nccp/NccpKeyStore;->getInstance()Ljava/security/KeyStore;

    move-result-object v5

    .line 86
    .local v5, "trustStore":Ljava/security/KeyStore;
    new-instance v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v4, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 87
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 89
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 91
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 93
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 94
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 95
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 97
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 99
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "nf_nccp"

    const-string v7, "Failed to initialize http client"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 109
    const-string v15, "nf_nccp"

    const-string v16, "Starting nccp call..."

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 112
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 113
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->connectionTimeout:I

    invoke-static {v6, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    move-object/from16 v0, p0

    iget v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->socketTimeout:I

    invoke-static {v6, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 116
    const-string v15, "http.useragent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getUserAgent()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 117
    const/4 v11, 0x0

    .line 121
    .local v11, "nccpResponse":Lcom/netflix/mediaclient/nccp/NccpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "content":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getEndpoint()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 123
    .local v9, "method":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/entity/StringEntity;

    const-string v15, "UTF-8"

    invoke-direct {v13, v1, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v13, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 126
    const-string v15, "nf_nccp"

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 127
    const-string v15, "nf_nccp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "PostRequest:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v15, "nf_nccp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Endpoint "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getEndpoint()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v15, "nf_nccp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Content "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getRequestHeaders()Ljava/util/List;

    move-result-object v4

    .line 133
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/nccp/RequestParameter;>;"
    if-eqz v4, :cond_1

    .line 134
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netflix/mediaclient/nccp/RequestParameter;

    .line 135
    .local v10, "nameValuePair":Lcom/netflix/mediaclient/nccp/RequestParameter;
    iget-object v15, v10, Lcom/netflix/mediaclient/nccp/RequestParameter;->name:Ljava/lang/String;

    iget-object v0, v10, Lcom/netflix/mediaclient/nccp/RequestParameter;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 145
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/nccp/RequestParameter;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v10    # "nameValuePair":Lcom/netflix/mediaclient/nccp/RequestParameter;
    .end local v13    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v2

    .line 146
    .local v2, "cte":Lorg/apache/http/conn/ConnectTimeoutException;
    const-string v15, "nf_nccp"

    const-string v16, "Connection timeout"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15, v2}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v11

    .line 159
    .end local v2    # "cte":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getResponseHandler()Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 160
    const-string v15, "nf_nccp"

    const-string v16, "Handle response..."

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->getResponseHandler()Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v11}, Lcom/netflix/mediaclient/nccp/NccpResponseHandler;->handle(Lcom/netflix/mediaclient/nccp/NccpTransaction;Lcom/netflix/mediaclient/nccp/NccpResponse;)V

    .line 166
    :goto_2
    return-object v11

    .line 139
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v4    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/nccp/RequestParameter;>;"
    .restart local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_1
    :try_start_1
    const-string v15, "nf_nccp"

    const-string v16, "Execute..."

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {v5, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 141
    .local v12, "response":Lorg/apache/http/HttpResponse;
    const-string v15, "nf_nccp"

    const-string v16, "Response received..."

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15, v12}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->processResponse(Lorg/apache/http/HttpResponse;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    goto :goto_1

    .line 148
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/nccp/RequestParameter;>;"
    .end local v9    # "method":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v14

    .line 149
    .local v14, "ste":Ljava/net/SocketTimeoutException;
    const-string v15, "nf_nccp"

    const-string v16, "Socket timeout"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15, v14}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v11

    .line 157
    goto :goto_1

    .line 151
    .end local v14    # "ste":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v3

    .line 152
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v15, "nf_nccp"

    const-string v16, "Request protocol failed"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15, v3}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v11

    .line 157
    goto :goto_1

    .line 154
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v8

    .line 155
    .local v8, "ioe":Ljava/io/IOException;
    const-string v15, "nf_nccp"

    const-string v16, "Request IO failed "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->transaction:Lcom/netflix/mediaclient/nccp/NccpTransaction;

    invoke-interface {v15, v8}, Lcom/netflix/mediaclient/nccp/NccpTransaction;->processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v11

    goto :goto_1

    .line 163
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_2
    const-string v15, "nf_nccp"

    const-string v16, "Response handler is null!"

    invoke-static/range {v15 .. v16}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/nccp/NccpRequestTask;->doInBackground([Ljava/lang/Void;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v0

    return-object v0
.end method
