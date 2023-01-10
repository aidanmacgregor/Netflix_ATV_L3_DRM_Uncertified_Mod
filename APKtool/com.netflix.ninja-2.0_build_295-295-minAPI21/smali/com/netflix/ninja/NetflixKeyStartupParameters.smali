.class public Lcom/netflix/ninja/NetflixKeyStartupParameters;
.super Ljava/lang/Object;
.source "NetflixKeyStartupParameters.java"

# interfaces
.implements Lcom/netflix/ninja/StartupParameters;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_input"


# instance fields
.field private mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    iput-object v1, p0, Lcom/netflix/ninja/NetflixKeyStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 25
    const-string v1, "source_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(I)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v0

    .line 26
    .local v0, "sourceType":Lcom/netflix/ninja/StartupParameters$SourceType;
    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-ne v0, v1, :cond_0

    .line 27
    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    iput-object v1, p0, Lcom/netflix/ninja/NetflixKeyStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    iput-object v1, p0, Lcom/netflix/ninja/NetflixKeyStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    goto :goto_0
.end method

.method static createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;
    .locals 1
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 57
    new-instance v0, Lcom/netflix/ninja/NetflixKeyStartupParameters;

    invoke-direct {v0, p0}, Lcom/netflix/ninja/NetflixKeyStartupParameters;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static isNetflixKey(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string v1, "nf_input"

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 48
    const-string v1, "source_type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/netflix/ninja/StartupParameters$SourceType;->fromValue(I)Lcom/netflix/ninja/StartupParameters$SourceType;

    move-result-object v0

    .line 49
    .local v0, "sourceType":Lcom/netflix/ninja/StartupParameters$SourceType;
    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    if-ne v0, v1, :cond_1

    .line 50
    :cond_0
    const-string v1, "nf_input"

    const-string v2, "NetflixKey source"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, 0x1

    .line 53
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSourceType()Lcom/netflix/ninja/StartupParameters$SourceType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/ninja/NetflixKeyStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    return-object v0
.end method

.method public getStartupParameters()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "source_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/ninja/NetflixKeyStartupParameters;->mSourceType:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v2}, Lcom/netflix/ninja/StartupParameters$SourceType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
