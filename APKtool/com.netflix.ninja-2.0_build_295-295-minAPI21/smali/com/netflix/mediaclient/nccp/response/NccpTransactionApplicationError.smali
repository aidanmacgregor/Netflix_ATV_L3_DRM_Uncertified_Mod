.class public final Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;
.super Ljava/lang/Object;
.source "NccpTransactionApplicationError.java"

# interfaces
.implements Lcom/netflix/mediaclient/nccp/NccpResponse;


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;->cause:Ljava/lang/Throwable;

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;->name:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/NccpTransactionApplicationError;->name:Ljava/lang/String;

    return-object v0
.end method
