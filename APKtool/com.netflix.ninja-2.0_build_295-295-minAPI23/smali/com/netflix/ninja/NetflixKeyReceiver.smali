.class public final Lcom/netflix/ninja/NetflixKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetflixKeyReceiver.java"


# static fields
.field private static final EXTRA_IN_BACKGROUND:Ljava/lang/String; = "in_background"

.field public static final INTENT_NETFLIX_KEY:Ljava/lang/String; = "com.netflix.ninja.intent.action.NETFLIX_KEY"

.field public static final POWER_ON:Ljava/lang/String; = "power_on"

.field private static final TAG:Ljava/lang/String; = "nf_input"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleNetflixKey(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 54
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/netflix/ninja/MainActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "power_on"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 56
    .local v3, "powerOn":Z
    if-eqz v3, :cond_2

    .line 57
    const-string v4, "nf_input"

    const-string v5, "power_on true"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "source_type"

    sget-object v5, Lcom/netflix/ninja/StartupParameters$SourceType;->powerOnFromNetflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v5}, Lcom/netflix/ninja/StartupParameters$SourceType;->getValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    :goto_0
    invoke-static {}, Lcom/netflix/ninja/MainActivity;->isUIInForeground()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 65
    .local v0, "background":Z
    :cond_0
    const-string v4, "nf_input"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v4, "nf_input"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UI is in background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    const-string v4, "in_background"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x10020000

    .line 71
    .local v1, "flags":I
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void

    .line 60
    .end local v0    # "background":Z
    .end local v1    # "flags":I
    :cond_2
    const-string v4, "nf_input"

    const-string v5, "power_on false"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v4, "source_type"

    sget-object v5, Lcom/netflix/ninja/StartupParameters$SourceType;->netflixButton:Lcom/netflix/ninja/StartupParameters$SourceType;

    invoke-virtual {v5}, Lcom/netflix/ninja/StartupParameters$SourceType;->getValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const-string v0, "nf_input"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "nf_input"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    const-string v0, "com.netflix.ninja.intent.action.NETFLIX_KEY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const-string v0, "nf_input"

    const-string v1, "Netflix Key intent received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "nf_input"

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/util/AndroidUtils;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/netflix/ninja/NetflixKeyReceiver;->handleNetflixKey(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "nf_input"

    const-string v1, "Not supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
