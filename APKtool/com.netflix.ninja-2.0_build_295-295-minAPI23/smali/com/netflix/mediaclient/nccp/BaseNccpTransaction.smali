.class public abstract Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;
.super Ljava/lang/Object;
.source "BaseNccpTransaction.java"

# interfaces
.implements Lcom/netflix/mediaclient/nccp/NccpTransaction;


# static fields
.field protected static final ENDPOINT:Ljava/lang/String; = "https://android.nccp.netflix.com"

.field protected static final NS:Ljava/lang/String; = "nccp"

.field protected static final TAG:Ljava/lang/String; = "nf_nccp"

.field protected static final nccp_bcp47:Ljava/lang/String; = "nccp:bcp47"

.field protected static final nccp_certificationversion:Ljava/lang/String; = "nccp:certificationversion"

.field protected static final nccp_header:Ljava/lang/String; = "nccp:header"

.field protected static final nccp_index:Ljava/lang/String; = "nccp:index"

.field protected static final nccp_language:Ljava/lang/String; = "nccp:language"

.field protected static final nccp_payload:Ljava/lang/String; = "nccp:payload"

.field protected static final nccp_platformselectedlanguages:Ljava/lang/String; = "nccp:platformselectedlanguages"

.field protected static final nccp_preferredlanguages:Ljava/lang/String; = "nccp:preferredlanguages"

.field protected static final nccp_request:Ljava/lang/String; = "nccp:request"

.field protected static final nccp_sdkversion:Ljava/lang/String; = "nccp:sdkversion"

.field protected static final nccp_softwareversion:Ljava/lang/String; = "nccp:softwareversion"

.field protected static final nccp_uiversion:Ljava/lang/String; = "nccp:uiversion"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

.field protected responseHandler:Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;Lcom/netflix/mediaclient/nccp/NccpResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "esn"    # Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
    .param p3, "handler"    # Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->mEsn:Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    .line 70
    iput-object p3, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->responseHandler:Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

    .line 71
    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->userAgent:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract createCustomRequest(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method protected createHeader(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .restart local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "<nccp:header>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "<nccp:sdkversion>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getBootloaderParameterSdkVersionValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</nccp:sdkversion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 134
    const-string v0, "N/A"

    .line 137
    :cond_1
    const-string v1, "<nccp:softwareversion>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</nccp:softwareversion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "<nccp:uiversion>N/A</nccp:uiversion>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "<nccp:certificationversion>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</nccp:certificationversion>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createLanguages(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createHeaderPayload(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "</nccp:header>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    return-object p1
.end method

.method protected createHeaderPayload(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .restart local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nccp:payload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " compressed=\"false\" encrypted=\"false\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createHeaderPayloadValue()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "payload":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "</"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nccp:payload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    return-object p1
.end method

.method protected createHeaderPayloadValue()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 209
    .local v2, "now":J
    const-string v1, "<nccp:clientservertimes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "<nccp:clienttime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</nccp:clienttime>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "<nccp:servertime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</nccp:servertime>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "</nccp:clientservertimes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    return-object v0
.end method

.method protected createLanguages(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .restart local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:preferredlanguages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:platformselectedlanguages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:bcp47"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "en-US"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:bcp47"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:language"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:platformselectedlanguages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nccp:preferredlanguages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    return-object p1
.end method

.method protected createRequest(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .restart local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    const-string v0, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, "<nccp:request xmlns:nccp=\"http://www.netflix.com/eds/nccp/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->getNccpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createHeader(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createCustomRequest(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "</nccp:request>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    return-object p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "text/xml"

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://android.nccp.netflix.com/nccp/controller/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->getNccpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNccpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "2.16"

    return-object v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->createRequest(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHandler()Lcom/netflix/mediaclient/nccp/NccpResponseHandler;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->responseHandler:Lcom/netflix/mediaclient/nccp/NccpResponseHandler;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;)Lcom/netflix/mediaclient/nccp/NccpResponse;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "responseBody":[B
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 230
    .local v2, "responseCode":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 231
    const-string v3, "nf_nccp"

    const-string v4, "Response status OK"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 241
    if-nez v1, :cond_2

    .line 242
    const-string v3, "nf_nccp"

    const-string v4, "Response body is null"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v3, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;-><init>(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-object v3

    .line 234
    :cond_0
    const-string v3, "nf_nccp"

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server returned HTTP error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    new-instance v3, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 246
    .local v0, "body":Ljava/lang/String;
    const-string v3, "nf_nccp"

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response body is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/nccp/BaseNccpTransaction;->processResponseBody(Ljava/lang/String;)Lcom/netflix/mediaclient/nccp/NccpResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract processResponseBody(Ljava/lang/String;)Lcom/netflix/mediaclient/nccp/NccpResponse;
.end method
