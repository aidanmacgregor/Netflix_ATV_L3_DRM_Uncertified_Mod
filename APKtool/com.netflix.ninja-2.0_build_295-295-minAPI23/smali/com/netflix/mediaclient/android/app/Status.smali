.class public interface abstract Lcom/netflix/mediaclient/android/app/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final REQUEST_ID_NOT_AVAILABLE:I = 0x7fffffff


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getRequestId()I
.end method

.method public abstract getStatusCode()Lcom/netflix/mediaclient/StatusCode;
.end method

.method public abstract isError()Z
.end method

.method public abstract isSucces()Z
.end method

.method public abstract shouldDisplayMessage()Z
.end method
