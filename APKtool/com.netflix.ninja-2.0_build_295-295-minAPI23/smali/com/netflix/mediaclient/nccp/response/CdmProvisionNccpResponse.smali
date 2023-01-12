.class public final Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;
.super Lcom/netflix/mediaclient/nccp/BaseNccpResponse;
.source "CdmProvisionNccpResponse.java"


# static fields
.field protected static final KCE_KEY_ID:Ljava/lang/String; = "nccp:kcekeyid"

.field protected static final KCH_KEY_ID:Ljava/lang/String; = "nccp:kchkeyid"

.field protected static final KEYRESPONSE:Ljava/lang/String; = "nccp:keyresponse"


# instance fields
.field private kcekeyid:[B

.field private kchkeyid:[B

.field private keyResponse:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/nccp/BaseNccpResponse;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private handleKceKeyId(Lorg/w3c/dom/NodeList;)V
    .locals 7
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 127
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 128
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 129
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getElementText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "encoded":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kcekeyid:[B

    .line 131
    const-string v3, "nf_nccp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kce key id found  after unbase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kcekeyid:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method

.method private handleKchKeyId(Lorg/w3c/dom/NodeList;)V
    .locals 7
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 142
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 143
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 144
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getElementText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "encoded":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kchkeyid:[B

    .line 146
    const-string v3, "nf_nccp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const-string v3, "nf_nccp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kch key id found  after unbase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kchkeyid:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method private handleKeyResponse(Lorg/w3c/dom/NodeList;)V
    .locals 4
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 115
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 116
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 117
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2    # "node":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getElementText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "encoded":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->keyResponse:[B

    .line 113
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method private handleResult(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "result"    # Lorg/w3c/dom/Element;

    .prologue
    .line 103
    const-string v3, "nccp:keyresponse"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 104
    .local v2, "keyResponse":Lorg/w3c/dom/NodeList;
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->handleKeyResponse(Lorg/w3c/dom/NodeList;)V

    .line 105
    const-string v3, "nccp:kcekeyid"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 106
    .local v0, "kces":Lorg/w3c/dom/NodeList;
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->handleKceKeyId(Lorg/w3c/dom/NodeList;)V

    .line 107
    const-string v3, "nccp:kchkeyid"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 108
    .local v1, "kchs":Lorg/w3c/dom/NodeList;
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->handleKchKeyId(Lorg/w3c/dom/NodeList;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getKcekeyId()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kcekeyid:[B

    return-object v0
.end method

.method public getKchkeyId()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->kchkeyid:[B

    return-object v0
.end method

.method public getKeyResponse()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->keyResponse:[B

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "cdmprovision"

    return-object v0
.end method

.method protected parseResult(Lorg/w3c/dom/NodeList;)V
    .locals 4
    .param p1, "results"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 95
    .local v1, "node":Lorg/w3c/dom/Node;
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "nf_nccp"

    const-string v3, "Result found"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1    # "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/nccp/response/CdmProvisionNccpResponse;->handleResult(Lorg/w3c/dom/Element;)V

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method
