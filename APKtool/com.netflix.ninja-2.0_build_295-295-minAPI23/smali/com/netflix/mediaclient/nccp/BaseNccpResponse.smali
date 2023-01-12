.class public abstract Lcom/netflix/mediaclient/nccp/BaseNccpResponse;
.super Ljava/lang/Object;
.source "BaseNccpResponse.java"

# interfaces
.implements Lcom/netflix/mediaclient/nccp/NccpResponse;


# static fields
.field protected static final RESPONSE:Ljava/lang/String; = "nccp:response"

.field protected static final RESPONSE_HEADER:Ljava/lang/String; = "nccp:responseheader"

.field protected static final RESPONSE_HEADER_PAYLOAD:Ljava/lang/String; = "nccp:payload"

.field protected static final RESPONSE_PARAMETERS:Ljava/lang/String; = "nccp:parameters"

.field protected static final RESPONSE_RESULT:Ljava/lang/String; = "nccp:result"

.field protected static final RESPONSE_RESULT_STATUS_ERROR_ACTIONID:Ljava/lang/String; = "nccp:actionid"

.field protected static final RESPONSE_RESULT_STATUS_ERROR_CODE:Ljava/lang/String; = "nccp:code"

.field protected static final RESPONSE_RESULT_STATUS_ERROR_DESC:Ljava/lang/String; = "nccp:description"

.field protected static final RESPONSE_RESULT_STATUS_SUCCESS:Ljava/lang/String; = "nccp:success"

.field protected static final TAG:Ljava/lang/String; = "nf_nccp"


# instance fields
.field protected error:Lcom/netflix/mediaclient/nccp/NccpError;

.field protected success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 54
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v3, "nf_nccp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Doc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 59
    .local v1, "response":Lorg/w3c/dom/Element;
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->parseHeader(Lorg/w3c/dom/Element;)V

    .line 60
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->parseStatuses(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "nccp:result"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 62
    .local v2, "results":Lorg/w3c/dom/NodeList;
    const-string v3, "No result in response!"

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->verify(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->parseResult(Lorg/w3c/dom/NodeList;)V

    .line 67
    .end local v2    # "results":Lorg/w3c/dom/NodeList;
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NCCP request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->error:Lcom/netflix/mediaclient/nccp/NccpError;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 106
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 107
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 108
    .local v2, "is":Lorg/xml/sax/InputSource;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 109
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    return-object v3
.end method

.method private parseHeader(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 140
    const-string v1, "nccp:payload"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementValueByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "payload":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No payload found in response!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    const-string v1, "nf_nccp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payload found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private parseStatuses(Lorg/w3c/dom/Element;)Z
    .locals 7
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 120
    const-string v4, "nccp:success"

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementValueByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "status":Ljava/lang/String;
    const-string v4, "nf_nccp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const-string v4, "nf_nccp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->success:Z

    .line 126
    iget-boolean v4, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->success:Z

    if-nez v4, :cond_1

    .line 127
    const-string v4, "nf_nccp"

    const-string v5, "Request failed, extract error data"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v4, "nccp:code"

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementValueByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "code":Ljava/lang/String;
    const-string v4, "nccp:description"

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementValueByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "description":Ljava/lang/String;
    const-string v4, "nccp:actionid"

    invoke-static {p1, v4}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementValueByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "actionId":Ljava/lang/String;
    new-instance v4, Lcom/netflix/mediaclient/nccp/NccpError;

    invoke-direct {v4, v1, v2, v0}, Lcom/netflix/mediaclient/nccp/NccpError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->error:Lcom/netflix/mediaclient/nccp/NccpError;

    .line 134
    .end local v0    # "actionId":Ljava/lang/String;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->success:Z

    return v4
.end method

.method private verify(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V
    .locals 1
    .param p1, "elements"    # Lorg/w3c/dom/NodeList;
    .param p2, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->verify(Lorg/w3c/dom/NodeList;Ljava/lang/String;Z)Z

    .line 78
    return-void
.end method

.method private verify(Lorg/w3c/dom/NodeList;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "elements"    # Lorg/w3c/dom/NodeList;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 92
    :cond_0
    if-eqz p3, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    const-string v0, "nf_nccp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 100
    :cond_2
    return v0
.end method


# virtual methods
.method public getError()Lcom/netflix/mediaclient/nccp/NccpError;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->error:Lcom/netflix/mediaclient/nccp/NccpError;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;->success:Z

    return v0
.end method

.method protected abstract parseResult(Lorg/w3c/dom/NodeList;)V
.end method
