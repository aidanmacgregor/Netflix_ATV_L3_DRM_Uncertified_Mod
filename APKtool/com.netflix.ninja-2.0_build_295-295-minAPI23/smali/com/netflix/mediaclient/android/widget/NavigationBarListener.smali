.class Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
.super Ljava/lang/Object;
.source "NavigationBarListener.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_navbar"


# instance fields
.field protected owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V
    .locals 2
    .param p1, "owner"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;->owner:Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .line 33
    return-void
.end method

.method static getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)Lcom/netflix/mediaclient/android/widget/NavigationBarListener;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner"    # Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;

    .prologue
    .line 67
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 68
    .local v0, "needNavBarListener":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    const-string v1, "nf_navbar"

    const-string v2, "Real listener for JB+"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListenerForJB;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    .line 73
    :goto_1
    return-object v1

    .line 67
    .end local v0    # "needNavBarListener":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    .restart local v0    # "needNavBarListener":Z
    :cond_1
    const-string v1, "nf_navbar"

    const-string v2, "Dummy listener"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/android/widget/NavigationBarListener;-><init>(Lcom/netflix/mediaclient/android/widget/TappableSurfaceView;)V

    goto :goto_1
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 56
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "nf_navbar"

    const-string v1, "startListening: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "nf_navbar"

    const-string v1, "stopListening: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
