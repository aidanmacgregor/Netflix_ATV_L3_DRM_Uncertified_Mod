.class Lcom/netflix/ninja/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/ninja/MainActivity;->initService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/ninja/MainActivity;


# direct methods
.method constructor <init>(Lcom/netflix/ninja/MainActivity;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/netflix/ninja/MainActivity$6;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 849
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$6;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/ninja/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 850
    iget-object v1, p0, Lcom/netflix/ninja/MainActivity$6;->this$0:Lcom/netflix/ninja/MainActivity;

    invoke-virtual {v1}, Lcom/netflix/ninja/MainActivity;->finish()V

    .line 851
    return-void
.end method
