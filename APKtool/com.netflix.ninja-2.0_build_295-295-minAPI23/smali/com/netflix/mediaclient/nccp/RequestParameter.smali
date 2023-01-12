.class public final Lcom/netflix/mediaclient/nccp/RequestParameter;
.super Ljava/lang/Object;
.source "RequestParameter.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/nccp/RequestParameter;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netflix/mediaclient/nccp/RequestParameter;->value:Ljava/lang/String;

    .line 29
    return-void
.end method
