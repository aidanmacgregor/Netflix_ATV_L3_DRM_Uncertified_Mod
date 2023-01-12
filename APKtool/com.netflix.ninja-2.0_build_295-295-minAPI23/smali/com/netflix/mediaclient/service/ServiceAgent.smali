.class public abstract Lcom/netflix/mediaclient/service/ServiceAgent;
.super Ljava/lang/Object;
.source "ServiceAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;,
        Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_ServiceAgent"


# instance fields
.field private agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

.field private initCalled:Z

.field private initErrorResult:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->UNKNOWN:Lcom/netflix/mediaclient/StatusCode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/StatusCode;

    .line 106
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 96
    const-string v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 98
    return-void
.end method

.method protected abstract doInit()V
.end method

.method protected getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 121
    .local v0, "agentContext":Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/ninja/NetflixService;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService()Lcom/netflix/ninja/NetflixService;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 130
    .local v0, "agentContext":Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;->getService()Lcom/netflix/ninja/NetflixService;

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final init(Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;)V
    .locals 3
    .param p1, "agentContext"    # Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .prologue
    .line 47
    const-string v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ServiceAgent init already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AgentContext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->agentContext:Lcom/netflix/mediaclient/service/ServiceAgent$AgentContext;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initCalled:Z

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->doInit()V

    .line 58
    return-void
.end method

.method protected final initCompleted(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3
    .param p1, "res"    # Lcom/netflix/mediaclient/StatusCode;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/StatusCode;

    .line 69
    const-string v0, "nf_service_ServiceAgent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "nf_service_ServiceAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitComplete with errorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method

.method public declared-synchronized isReady()Z
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent;->initErrorResult:Lcom/netflix/mediaclient/StatusCode;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
