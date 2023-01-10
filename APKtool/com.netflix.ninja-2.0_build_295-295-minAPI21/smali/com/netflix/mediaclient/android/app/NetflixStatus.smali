.class public Lcom/netflix/mediaclient/android/app/NetflixStatus;
.super Ljava/lang/Object;
.source "NetflixStatus.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/Status;


# instance fields
.field protected mDisplayMessage:Z

.field protected mMessage:Ljava/lang/String;

.field private mRequestId:I

.field protected mStatusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1
    .param p1, "statusCode"    # Lcom/netflix/mediaclient/StatusCode;

    .prologue
    .line 52
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/StatusCode;I)V
    .locals 2
    .param p1, "statusCode"    # Lcom/netflix/mediaclient/StatusCode;
    .param p2, "requestId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status code can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 42
    iput p2, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    .line 43
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    return v0
.end method

.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isError()Z

    move-result v0

    return v0
.end method

.method public isSucces()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isSucess()Z

    move-result v0

    return v0
.end method

.method public setDisplayMessage(Z)V
    .locals 0
    .param p1, "displayMessage"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mDisplayMessage:Z

    .line 113
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mMessage:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mRequestId:I

    .line 82
    return-void
.end method

.method public shouldDisplayMessage()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mDisplayMessage:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetflixStatus, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
