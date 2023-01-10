.class public final Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;
.super Ljava/lang/Object;
.source "NccpTransactionHttpError.java"

# interfaces
.implements Lcom/netflix/mediaclient/nccp/NccpResponse;


# instance fields
.field private responseErrorCode:I

.field private transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "transaction"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;->responseErrorCode:I

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;->transaction:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getResponseErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;->responseErrorCode:I

    return v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionHttpError;->transaction:Ljava/lang/String;

    return-object v0
.end method
