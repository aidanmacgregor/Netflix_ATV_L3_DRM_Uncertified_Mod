.class public Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;
.super Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;
.source "CdmProvisionNccpTransaction.java"


# instance fields
.field private keyRequest:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;Lcom/netflix/mediaclient/nccp/NccpResponseHandler;[B)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "esn"    # Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .param p3, "handler"    # Lcom/netflix/mediaclient/nccp/NccpResponseHandler;
    .param p4, "keyRequest"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;Lcom/netflix/mediaclient/nccp/NccpResponseHandler;)V

    .line 39
    iput-object p4, p0, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->keyRequest:[B

    .line 40
    return-void
.end method


# virtual methods
.method protected createCustomRequest(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->keyRequest:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "enc":Ljava/lang/String;
    const-string v1, "nf_nccp"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "nf_nccp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key request encoded base64: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const-string v1, "<nccp:cdmprovision>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "<nccp:cdmtype>MediaDrm.Widevine</nccp:cdmtype>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "<nccp:keyrequest>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "</nccp:keyrequest>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "</nccp:cdmprovision>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "cdmprovision"

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/nccp/RequestParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/netflix/mediaclient/nccp/RequestParameter;>;"
    new-instance v1, Lcom/netflix/mediaclient/nccp/RequestParameter;

    const-string v2, "X-AuthenticationType"

    const-string v3, "NONE"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/nccp/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/netflix/mediaclient/nccp/RequestParameter;

    const-string v2, "X-AllowCompression"

    const-string v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/nccp/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/netflix/mediaclient/nccp/RequestParameter;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/nccp/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/netflix/mediaclient/nccp/RequestParameter;

    const-string v2, "X-ESN"

    iget-object v3, p0, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/nccp/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/netflix/mediaclient/nccp/RequestParameter;

    const-string v2, "X-DeviceModel"

    iget-object v3, p0, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/nccp/RequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method

.method public processError(Ljava/lang/Throwable;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    new-instance v0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public processResponseBody(Ljava/lang/String;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    .locals 5
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "resp":Lcom/netflix/mediaclient/nccp/NccpResponse;
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;

    .end local v1    # "resp":Lcom/netflix/mediaclient/nccp/NccpResponse;
    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .restart local v1    # "resp":Lcom/netflix/mediaclient/nccp/NccpResponse;
    :goto_0
    return-object v1

    .line 83
    .end local v1    # "resp":Lcom/netflix/mediaclient/nccp/NccpResponse;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "nf_nccp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v1, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/transaction/CdmProvisionNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;-><init>(Ljava/lang/String;)V

    .restart local v1    # "resp":Lcom/netflix/mediaclient/nccp/NccpResponse;
    goto :goto_0
.end method
