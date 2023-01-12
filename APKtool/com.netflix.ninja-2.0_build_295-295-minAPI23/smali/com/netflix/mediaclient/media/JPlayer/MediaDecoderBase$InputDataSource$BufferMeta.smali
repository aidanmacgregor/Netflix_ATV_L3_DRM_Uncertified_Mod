.class public Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;
.super Ljava/lang/Object;
.source "MediaDecoderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferMeta"
.end annotation


# instance fields
.field debug:J

.field flags:I

.field iv:[B

.field key:[B

.field nByteEncrypted:[I

.field nByteInClear:[I

.field nSubsample:I

.field offset:I

.field size:I

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
