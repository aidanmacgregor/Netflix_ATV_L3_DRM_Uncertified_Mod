.class public interface abstract Lcom/netflix/mediaclient/nccp/NccpTransaction;
.super Ljava/lang/Object;
.source "NccpTransaction.java"


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNccpVersion()Ljava/lang/String;
.end method

.method public abstract getRequestBody()Ljava/lang/String;
.end method

.method public abstract getRequestHeaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/nccp/RequestParameter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponseHandler()Lcom/netflix/mediaclient/nccp/NccpResponseHandler;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;
.end method

.method public abstract processResponse(Lorg/apache/http/HttpResponse;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
