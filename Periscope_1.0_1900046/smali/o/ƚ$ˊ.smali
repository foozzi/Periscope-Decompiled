.class Lo/ƚ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ƚ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic โ:Lo/ƚ;


# direct methods
.method private constructor <init>(Lo/ƚ;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lo/ƚ$ˊ;->โ:Lo/ƚ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ƚ;Lo/Ǐ;)V
    .locals 0

    .line 565
    invoke-direct {p0, p1}, Lo/ƚ$ˊ;-><init>(Lo/ƚ;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 567
    move-object v0, p1

    check-cast v0, Lo/ƚ$ˋ;

    move-object v1, v0

    .line 568
    invoke-virtual {v1}, Lo/ƚ$ˋ;->Ị()Lo/ذ$ˊ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ذ$ˊ;->select()V

    .line 569
    iget-object v0, p0, Lo/ƚ$ˊ;->โ:Lo/ƚ;

    invoke-static {v0}, Lo/ƚ;->ˊ(Lo/ƚ;)Lo/ί;

    move-result-object v0

    invoke-virtual {v0}, Lo/ί;->getChildCount()I

    move-result v2

    .line 570
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 571
    iget-object v0, p0, Lo/ƚ$ˊ;->โ:Lo/ƚ;

    invoke-static {v0}, Lo/ƚ;->ˊ(Lo/ƚ;)Lo/ί;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/ί;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 572
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 570
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_1
    return-void
.end method
