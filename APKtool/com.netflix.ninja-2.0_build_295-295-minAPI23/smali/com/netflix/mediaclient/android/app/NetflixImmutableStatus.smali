.class public final Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;
.super Ljava/lang/Object;
.source "NetflixImmutableStatus.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/Status;


# instance fields
.field private final mStatusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0
    .param p1, "statusCode"    # Lcom/netflix/mediaclient/StatusCode;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 26
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7fffffff

    return v0
.end method

.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->isSucces()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSucces()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisplayMessage()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixImmutableStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
