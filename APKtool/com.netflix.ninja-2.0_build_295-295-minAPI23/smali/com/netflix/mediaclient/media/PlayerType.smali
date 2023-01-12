.class public final enum Lcom/netflix/mediaclient/media/PlayerType;
.super Ljava/lang/Enum;
.source "PlayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/media/PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device1:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device10:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device11:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device12:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device2:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device3:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device4:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device5:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device6:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device7:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device8:Lcom/netflix/mediaclient/media/PlayerType;

.field public static final enum device9:Lcom/netflix/mediaclient/media/PlayerType;


# instance fields
.field private description:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device1"

    const/4 v2, 0x0

    const-string v3, "omx / A2.2"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device1:Lcom/netflix/mediaclient/media/PlayerType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device2"

    const-string v2, "drm.play / A2.2-2.3."

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device2:Lcom/netflix/mediaclient/media/PlayerType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device3"

    const-string v2, "drm.play / A3.0"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device3:Lcom/netflix/mediaclient/media/PlayerType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device4"

    const-string v2, "omx / A2.3"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device4:Lcom/netflix/mediaclient/media/PlayerType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device5"

    const-string v2, "drm.play / A3.1"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device5:Lcom/netflix/mediaclient/media/PlayerType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device6"

    const/4 v2, 0x6

    const-string v3, "software"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device6:Lcom/netflix/mediaclient/media/PlayerType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device7"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "XAL"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device8"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "XAL Main Profile"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device9"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "NFAMP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device9:Lcom/netflix/mediaclient/media/PlayerType;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device10"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "JPlayer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device11"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "JPlayer Base"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/media/PlayerType;

    const-string v1, "device12"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "JPlayer2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/media/PlayerType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netflix/mediaclient/media/PlayerType;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device1:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device2:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device3:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device4:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device5:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device6:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device9:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/media/PlayerType;->$VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    .line 51
    iput-object p4, p0, Lcom/netflix/mediaclient/media/PlayerType;->description:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static toPlayerType(I)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    if-ne v1, p0, :cond_0

    .line 64
    invoke-static {}, Lcom/netflix/mediaclient/media/PlayerType;->values()[Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v1

    aget-object v1, v1, v0

    .line 68
    :goto_1
    return-object v1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->$VALUES:[Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/media/PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/media/PlayerType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/netflix/mediaclient/media/PlayerType;->value:I

    return v0
.end method
