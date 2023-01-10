.class public final Lcom/netflix/mediaclient/nccp/response/EmptyReponse;
.super Ljava/lang/Object;
.source "EmptyReponse.java"

# interfaces
.implements Lcom/netflix/mediaclient/nccp/NccpResponse;


# instance fields
.field private transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;->transaction:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/nccp/response/EmptyReponse;->transaction:Ljava/lang/String;

    return-object v0
.end method
