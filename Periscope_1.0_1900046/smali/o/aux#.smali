.class Lo/aux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ʹ:Landroid/support/v4/app/Fragment;

.field final synthetic ՙ:Lo/ˎ;

.field final synthetic י:Landroid/view/View;

.field final synthetic ٴ:Ljava/lang/Object;

.field final synthetic ᴵ:Ljava/util/ArrayList;

.field final synthetic ᵎ:Lo/ˎ$ˊ;

.field final synthetic ᵔ:Z

.field final synthetic ᵢ:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lo/ˎ;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lo/aux;->ՙ:Lo/ˎ;

    iput-object p2, p0, Lo/aux;->י:Landroid/view/View;

    iput-object p3, p0, Lo/aux;->ٴ:Ljava/lang/Object;

    iput-object p4, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    iput-object p5, p0, Lo/aux;->ᵎ:Lo/ˎ$ˊ;

    iput-boolean p6, p0, Lo/aux;->ᵔ:Z

    iput-object p7, p0, Lo/aux;->ʹ:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Lo/aux;->ᵢ:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 1237
    iget-object v0, p0, Lo/aux;->י:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1239
    iget-object v0, p0, Lo/aux;->ٴ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lo/aux;->ٴ:Ljava/lang/Object;

    iget-object v1, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1242
    iget-object v0, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1244
    iget-object v0, p0, Lo/aux;->ՙ:Lo/ˎ;

    iget-object v1, p0, Lo/aux;->ᵎ:Lo/ˎ$ˊ;

    iget-boolean v2, p0, Lo/aux;->ᵔ:Z

    iget-object v3, p0, Lo/aux;->ʹ:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1, v2, v3}, Lo/ˎ;->ˊ(Lo/ˎ;Lo/ˎ$ˊ;ZLandroid/support/v4/app/Fragment;)Lo/ᒢ;

    move-result-object v6

    .line 1246
    iget-object v0, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/aux;->ᵎ:Lo/ˎ$ˊ;

    iget-object v1, v1, Lo/ˎ$ˊ;->ᑊ:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    iget-object v0, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lo/ᒢ;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1248
    iget-object v0, p0, Lo/aux;->ٴ:Ljava/lang/Object;

    iget-object v1, p0, Lo/aux;->ᴵ:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/ﹳ;->ˋ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1251
    iget-object v0, p0, Lo/aux;->ՙ:Lo/ˎ;

    iget-object v1, p0, Lo/aux;->ᵎ:Lo/ˎ$ˊ;

    invoke-static {v0, v6, v1}, Lo/ˎ;->ˊ(Lo/ˎ;Lo/ᒢ;Lo/ˎ$ˊ;)V

    .line 1253
    iget-object v0, p0, Lo/aux;->ՙ:Lo/ˎ;

    iget-object v1, p0, Lo/aux;->ᵎ:Lo/ˎ$ˊ;

    iget-object v2, p0, Lo/aux;->ʹ:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lo/aux;->ᵢ:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Lo/aux;->ᵔ:Z

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lo/ˎ;->ˊ(Lo/ˎ;Lo/ˎ$ˊ;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLo/ᒢ;)V

    .line 1257
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
