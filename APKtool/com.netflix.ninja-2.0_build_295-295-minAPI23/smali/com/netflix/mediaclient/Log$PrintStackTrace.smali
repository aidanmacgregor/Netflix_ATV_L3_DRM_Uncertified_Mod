.class Lcom/netflix/mediaclient/Log$PrintStackTrace;
.super Ljava/lang/Throwable;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintStackTrace"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/Log$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/netflix/mediaclient/Log$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/Log$PrintStackTrace;-><init>()V

    return-void
.end method
