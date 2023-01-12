.class Lcom/netflix/ninja/StartupParametersFactory;
.super Ljava/lang/Object;
.source "StartupParametersFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "netflix-activity"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v1, "netflix-activity"

    const-string v2, "Launched regular way"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lcom/netflix/ninja/GenericStartupParameters;

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-direct {v1, v2}, Lcom/netflix/ninja/GenericStartupParameters;-><init>(Lcom/netflix/ninja/StartupParameters$SourceType;)V

    .line 45
    :goto_0
    return-object v1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/netflix/ninja/DialStartupParameters;->isDial(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {p0}, Lcom/netflix/ninja/DialStartupParameters;->createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/netflix/ninja/DeepLinkStartupParameters;->isDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-static {p0}, Lcom/netflix/ninja/DeepLinkStartupParameters;->createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p0}, Lcom/netflix/ninja/NetflixKeyStartupParameters;->isNetflixKey(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-static {p0}, Lcom/netflix/ninja/NetflixKeyStartupParameters;->createStartupParameters(Landroid/content/Intent;)Lcom/netflix/ninja/StartupParameters;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_3
    const-string v1, "netflix-activity"

    const-string v2, "Regular launch"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v1, Lcom/netflix/ninja/GenericStartupParameters;

    sget-object v2, Lcom/netflix/ninja/StartupParameters$SourceType;->dedicatedOnScreenIcon:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-direct {v1, v2}, Lcom/netflix/ninja/GenericStartupParameters;-><init>(Lcom/netflix/ninja/StartupParameters$SourceType;)V

    goto :goto_0
.end method
