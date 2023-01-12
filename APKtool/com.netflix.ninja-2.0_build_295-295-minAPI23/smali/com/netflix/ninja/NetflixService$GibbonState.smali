.class public final enum Lcom/netflix/ninja/NetflixService$GibbonState;
.super Ljava/lang/Enum;
.source "NetflixService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/ninja/NetflixService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GibbonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/ninja/NetflixService$GibbonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/ninja/NetflixService$GibbonState;

.field public static final enum ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

.field public static final enum ACTIVE:Lcom/netflix/ninja/NetflixService$GibbonState;

.field public static final enum SUSPENDED:Lcom/netflix/ninja/NetflixService$GibbonState;


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/netflix/ninja/NetflixService$GibbonState;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/ninja/NetflixService$GibbonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    new-instance v0, Lcom/netflix/ninja/NetflixService$GibbonState;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/ninja/NetflixService$GibbonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->SUSPENDED:Lcom/netflix/ninja/NetflixService$GibbonState;

    new-instance v0, Lcom/netflix/ninja/NetflixService$GibbonState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/ninja/NetflixService$GibbonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->ACTIVE:Lcom/netflix/ninja/NetflixService$GibbonState;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/ninja/NetflixService$GibbonState;

    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ABSENT:Lcom/netflix/ninja/NetflixService$GibbonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->SUSPENDED:Lcom/netflix/ninja/NetflixService$GibbonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/ninja/NetflixService$GibbonState;->ACTIVE:Lcom/netflix/ninja/NetflixService$GibbonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->$VALUES:[Lcom/netflix/ninja/NetflixService$GibbonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 138
    iput p3, p0, Lcom/netflix/ninja/NetflixService$GibbonState;->value_:I

    .line 139
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/ninja/NetflixService$GibbonState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/netflix/ninja/NetflixService$GibbonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/ninja/NetflixService$GibbonState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/ninja/NetflixService$GibbonState;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/netflix/ninja/NetflixService$GibbonState;->$VALUES:[Lcom/netflix/ninja/NetflixService$GibbonState;

    invoke-virtual {v0}, [Lcom/netflix/ninja/NetflixService$GibbonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/ninja/NetflixService$GibbonState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/netflix/ninja/NetflixService$GibbonState;->value_:I

    return v0
.end method
