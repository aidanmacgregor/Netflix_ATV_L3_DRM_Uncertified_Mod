.class public Lcom/netflix/ninja/DeepLinkStartupParameters;
.super Ljava/lang/Object;
.source "DeepLinkStartupParameters.java"

# interfaces
.implements Lcom/netflix/ninja/StartupParameters;


# static fields
.field public static final EXTRA_DEEPLINK:Ljava/lang/String; = "deeplink"

.field private static final TAG:Ljava/lang/String; = "netflix-activity"


# instance fields
.field private mPayload:Ljava/lang/String;

.field private mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netflix/ninja/DeepLinkStartupParameters;->mPayload:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/netflix/ninja/DeepLinkStartupParameters;->getParamsAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "source_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "sourceString":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(Ljava/lang/String;)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/ninja/DeepLinkStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 40
    return-void
.end method

.method static createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;
    .locals 4
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string v1, "deeplink"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "deepLink":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "netflix-activity"

    const-string v2, "Regular launch"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/netflix/ninja/GenericStartupParameters;

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-direct {v1, v2}, Lcom/netflix/ninja/GenericStartupParameters;-><init>(Lcom/netflix/ninja/StartupParameters$SourceType;)V

    .line 72
    :goto_0
    return-object v1

    .line 67
    :cond_0
    const-string v1, "netflix-activity"

    const-string v2, "Launched by Deep linking"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, "netflix-activity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "netflix-activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deeplink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    new-instance v1, Lcom/netflix/ninja/DeepLinkStartupParameters;

    invoke-direct {v1, v0}, Lcom/netflix/ninja/DeepLinkStartupParameters;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getParamsAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "paramsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const-string v9, "[&]"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "paramArray":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v7, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 94
    .local v5, "param":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "equalsIndex":I
    if-gtz v1, :cond_0

    .line 96
    const-string v9, "netflix-activity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No params found for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "value":Ljava/lang/String;
    const-string v9, "netflix-activity"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 102
    const-string v9, "netflix-activity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Param name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    .end local v1    # "equalsIndex":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method public static isDeepLink(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deeplink"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deeplink"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/ninja/DeepLinkStartupParameters;->isValidDeeplinkSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDeeplinkSource(Ljava/lang/String;)Z
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/netflix/ninja/DeepLinkStartupParameters;->getParamsAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "source_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "sourceType":Ljava/lang/String;
    const-string v2, "netflix-activity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "netflix-activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deep Link source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(Ljava/lang/String;)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v2

    sget-object v3, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixPreApp:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-ne v2, v3, :cond_1

    .line 85
    const/4 v2, 0x1

    .line 87
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/ninja/DeepLinkStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method

.method public getStartupParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/ninja/DeepLinkStartupParameters;->mPayload:Ljava/lang/String;

    return-object v0
.end method
