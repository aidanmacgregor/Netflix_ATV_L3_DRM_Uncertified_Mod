.class public Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;
.super Landroid/view/SurfaceView;
.source "TappableSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;,
        Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;
    }
.end annotation


# static fields
.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_STRETCH:I = 0x2

.field public static final MODE_ZOOM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "netflix-player"


# instance fields
.field private final listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPheight:I

.field private mPwidth:I

.field private mResizeVideo:Z

.field private mResizedVideoHeight:I

.field private mResizedVideoWidth:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mode:I

.field private surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 45
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    .line 49
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 83
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    .line 84
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 45
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    .line 49
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 63
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 42
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 45
    iput-boolean v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    .line 49
    iput v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 74
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    .line 75
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->initSurface(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private initSurface(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v0, "netflix-player"

    const-string v1, "INIT_SURFACE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private updateMeasuredDimensions()Landroid/graphics/Point;
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 193
    .local v2, "p":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    .line 194
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 195
    .local v0, "height":I
    iget-boolean v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    if-eqz v6, :cond_0

    .line 196
    iget v5, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizedVideoWidth:I

    .line 197
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizedVideoHeight:I

    .line 198
    const-string v6, "netflix-player"

    invoke-static {v6, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    const-string v6, "netflix-player"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resize video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    const-string v6, "netflix-player"

    invoke-static {v6, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    const-string v6, "netflix-player"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parent size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 207
    iput v5, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 209
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-lez v6, :cond_2

    .line 210
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v7, v5

    if-le v6, v7, :cond_6

    .line 211
    const-string v6, "netflix-player"

    const-string v7, "image too tall, correcting"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v6, v5

    iget v7, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 223
    :cond_2
    :goto_0
    const-string v6, "netflix-player"

    invoke-static {v6, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    const-string v6, "netflix-player"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aspect ratio corrected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    packed-switch v6, :pswitch_data_0

    .line 250
    const-string v6, "netflix-player"

    const-string v7, "Stretch to full screen ..."

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v5, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 252
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 256
    :cond_4
    :goto_1
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 257
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->getLocationOnScreen([I)V

    .line 258
    const-string v6, "netflix-player"

    invoke-static {v6, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 259
    const-string v6, "netflix-player"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", start coordinates: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_5
    invoke-virtual {p0, v5, v0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->setMeasuredDimension(II)V

    .line 264
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 213
    .end local v1    # "location":[I
    :cond_6
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    mul-int/2addr v7, v5

    if-ge v6, v7, :cond_7

    .line 214
    const-string v6, "netflix-player"

    const-string v7, "image too wide, correcting"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    div-int v5, v6, v7

    goto/16 :goto_0

    .line 217
    :cond_7
    const-string v6, "netflix-player"

    invoke-static {v6, v9}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    const-string v6, "netflix-player"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aspect ratio is correct: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :pswitch_0
    const-string v6, "netflix-player"

    const-string v7, "Follow Aspect ration"

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    :pswitch_1
    const-string v6, "netflix-player"

    const-string v7, "Zoomin ..."

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 236
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 237
    .local v3, "scalex":F
    iget v6, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 239
    .local v4, "scaley":F
    cmpl-float v6, v3, v4

    if-ltz v6, :cond_8

    .line 240
    iget v5, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    .line 241
    int-to-float v6, v0

    mul-float/2addr v6, v3

    float-to-int v0, v6

    goto/16 :goto_1

    .line 244
    :cond_8
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    .line 245
    int-to-float v6, v5

    mul-float/2addr v6, v4

    float-to-int v5, v6

    .line 247
    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)V
    .locals 1
    .param p1, "tap"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->startListening()V

    .line 157
    :cond_1
    return-void
.end method

.method public canVideoBeZoomed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 363
    const-string v1, "netflix-player"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const-string v1, "netflix-player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    if-nez v1, :cond_2

    .line 373
    :cond_1
    :goto_0
    return v0

    .line 369
    :cond_2
    iget v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPheight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    iget v3, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mPwidth:I

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 370
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 183
    const-string v1, "netflix-player"

    const-string v2, "onMeasure"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->updateMeasuredDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 185
    .local v0, "p":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;->onSurfaceMeasureChange(II)V

    .line 188
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 123
    const-string v0, "TAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->processOnTouchEvent(Landroid/view/MotionEvent;)V

    .line 129
    :cond_0
    return v3
.end method

.method processOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .line 140
    .local v1, "l":Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;
    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;->onTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 142
    .end local v1    # "l":Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;
    :cond_0
    return-void
.end method

.method public removeTapListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;)Z
    .locals 2
    .param p1, "tap"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$TapListener;

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    .local v0, "result":Z
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->listener:Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->stopListening()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 340
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 341
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mode:I

    .line 342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->requestLayout()V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v0, "netflix-player"

    const-string v1, "Invalid mode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSurfaceMeasureListener(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->surfaceMeasureListener:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView$SurfaceMeasureListener;

    .line 355
    return-void
.end method

.method public setVideoResize(II)V
    .locals 1
    .param p1, "mVideoWidth"    # I
    .param p2, "mVideoHeight"    # I

    .prologue
    .line 295
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    .line 297
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizedVideoWidth:I

    .line 298
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizedVideoHeight:I

    .line 302
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->updateMeasuredDimensions()Landroid/graphics/Point;

    .line 303
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mResizeVideo:Z

    goto :goto_0
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "mVideoWidth"    # I
    .param p2, "mVideoHeight"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoWidth:I

    .line 311
    iput p2, p0, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->mVideoHeight:I

    .line 312
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;->updateMeasuredDimensions()Landroid/graphics/Point;

    .line 313
    return-void
.end method
