.class Lo/Ǐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ห:Landroid/view/View;

.field final synthetic โ:Lo/ƚ;


# direct methods
.method constructor <init>(Lo/ƚ;Landroid/view/View;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lo/Ǐ;->โ:Lo/ƚ;

    iput-object p2, p0, Lo/Ǐ;->ห:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 262
    iget-object v0, p0, Lo/Ǐ;->ห:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lo/Ǐ;->โ:Lo/ƚ;

    invoke-virtual {v1}, Lo/ƚ;->getWidth()I

    move-result v1

    iget-object v2, p0, Lo/Ǐ;->ห:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    .line 263
    iget-object v0, p0, Lo/Ǐ;->โ:Lo/ƚ;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lo/ƚ;->smoothScrollTo(II)V

    .line 264
    iget-object v0, p0, Lo/Ǐ;->โ:Lo/ƚ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    .line 265
    return-void
.end method
