.class public Lcom/netflix/ninja/GenericStartupParameters;
.super Ljava/lang/Object;
.source "GenericStartupParameters.java"

# interfaces
.implements Lcom/netflix/ninja/StartupParameters;


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
.method public constructor <init>(Lcom/netflix/ninja/StartupParameters$SourceType;)V
    .locals 1
    .param p1, "sourceType"    # Lcom/netflix/ninja/StartupParameters$SourceType;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/ninja/GenericStartupParameters;->mParameters:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/netflix/ninja/GenericStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 30
    return-void
.end method


# virtual methods
.method addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/netflix/ninja/GenericStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method

.method public getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/ninja/GenericStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method

.method public getStartupParameters()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 54
    .local v0, "first":Z
    iget-object v5, p0, Lcom/netflix/ninja/GenericStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-eqz v5, :cond_0

    .line 55
    const-string v5, "source_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/ninja/GenericStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v6}, Lcom/netflix/ninja/StartupParameters$SourceType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const/4 v0, 0x0

    .line 59
    :cond_0
    iget-object v5, p0, Lcom/netflix/ninja/GenericStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 61
    iget-object v5, p0, Lcom/netflix/ninja/GenericStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/netflix/ninja/GenericStartupParameters;->mParameters:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 65
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
