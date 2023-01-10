.class public Lcom/netflix/mediaclient/util/SetVideoWindow;
.super Ljava/lang/Object;
.source "SetVideoWindow.java"


# static fields
.field private static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field private static final KEY_OBJECT:Ljava/lang/String; = "object"

.field private static final KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final KEY_X:Ljava/lang/String; = "x"

.field private static final KEY_Y:Ljava/lang/String; = "y"

.field private static final METHOD_SETVIDEOWINDOW:Ljava/lang/String; = "setVideoWindow"

.field private static final OBJECT_NRD_MEDIA:Ljava/lang/String; = "nrdp.dpi"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/netflix/mediaclient/util/SetVideoWindow;->isValid(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->x:I

    .line 23
    const-string v0, "y"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->y:I

    .line 24
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->width:I

    .line 25
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->height:I

    .line 29
    return-void

    .line 27
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "this is not SetVideoWindow method obj"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValid(Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    const-string v0, "nrdp.dpi"

    const-string v1, "object"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setVideoWindow"

    const-string v1, "method"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/netflix/mediaclient/util/SetVideoWindow;->y:I

    return v0
.end method
