.class public Lcom/netflix/ninja/DialStartupParameters;
.super Ljava/lang/Object;
.source "DialStartupParameters.java"

# interfaces
.implements Lcom/netflix/ninja/StartupParameters;


# static fields
.field public static final DIAL_PARAM:Ljava/lang/String; = "dial"

.field private static final TAG:Ljava/lang/String; = "netflix-activity"


# instance fields
.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/DialStartupParameters;->mParameters:Ljava/util/Map;

    .line 30
    sget-object v0, Lcom/netflix/ninja/StartupParameters$SourceType;->dial:Lcom/netflix/ninja/StartupParameters$SourceType;

    iput-object v0, p0, Lcom/netflix/ninja/DialStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 31
    return-void
.end method

.method static createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;
    .locals 4
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/ninja/DialStartupParameters;->isCorrectCastStartTarget(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v2, "netflix-activity"

    const-string v3, "Launched by cast"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "com.google.cast.intent.extra.START_DATA"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/UriUtil;->safelyEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "payload":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 86
    const-string v1, ""

    .line 88
    :cond_0
    new-instance v0, Lcom/netflix/ninja/DialStartupParameters;

    invoke-direct {v0}, Lcom/netflix/ninja/DialStartupParameters;-><init>()V

    .line 89
    .local v0, "dial":Lcom/netflix/ninja/DialStartupParameters;
    const-string v2, "dial"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/ninja/DialStartupParameters;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "dial":Lcom/netflix/ninja/DialStartupParameters;
    .end local v1    # "payload":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/netflix/ninja/GenericStartupParameters;

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-direct {v0, v2}, Lcom/netflix/ninja/GenericStartupParameters;-><init>(Lcom/netflix/ninja/StartupParameters$SourceType;)V

    goto :goto_0
.end method

.method private static isCorrectCastStartTarget(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cast uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    if-nez p0, :cond_2

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    const-string v1, "cast"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isDial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "com.google.cast.action.START"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/netflix/ninja/DialStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method public getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/ninja/DialStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method

.method public getStartupParameters()Ljava/lang/String;
    .locals 6

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, "str":Ljava/lang/StringBuilder;
    const-string v4, "source_type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/ninja/DialStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v5}, Lcom/netflix/ninja/StartupParameters$SourceType;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    iget-object v4, p0, Lcom/netflix/ninja/DialStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/netflix/ninja/DialStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/netflix/ninja/DialStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartupParameters [mSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/ninja/DialStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
