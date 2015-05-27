.class Lo/ᐝ;
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
.field final synthetic ՙ:Lo/ˎ;

.field final synthetic י:Landroid/view/View;

.field final synthetic ᵎ:Lo/ˎ$ˊ;

.field final synthetic ⁱ:I

.field final synthetic ﹶ:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/ˎ;Landroid/view/View;Lo/ˎ$ˊ;ILjava/lang/Object;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lo/ᐝ;->ՙ:Lo/ˎ;

    iput-object p2, p0, Lo/ᐝ;->י:Landroid/view/View;

    iput-object p3, p0, Lo/ᐝ;->ᵎ:Lo/ˎ$ˊ;

    iput p4, p0, Lo/ᐝ;->ⁱ:I

    iput-object p5, p0, Lo/ᐝ;->ﹶ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1364
    iget-object v0, p0, Lo/ᐝ;->י:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1365
    iget-object v0, p0, Lo/ᐝ;->ՙ:Lo/ˎ;

    iget-object v1, p0, Lo/ᐝ;->ᵎ:Lo/ˎ$ˊ;

    iget v2, p0, Lo/ᐝ;->ⁱ:I

    iget-object v3, p0, Lo/ᐝ;->ﹶ:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lo/ˎ;->ˊ(Lo/ˎ;Lo/ˎ$ˊ;ILjava/lang/Object;)V

    .line 1366
    const/4 v0, 0x1

    return v0
.end method
