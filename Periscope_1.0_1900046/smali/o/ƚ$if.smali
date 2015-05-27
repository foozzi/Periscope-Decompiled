.class Lo/ƚ$if;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ƚ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic โ:Lo/ƚ;


# direct methods
.method private constructor <init>(Lo/ƚ;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lo/ƚ$if;->โ:Lo/ƚ;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ƚ;Lo/Ǐ;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lo/ƚ$if;-><init>(Lo/ƚ;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 541
    iget-object v0, p0, Lo/ƚ$if;->โ:Lo/ƚ;

    invoke-static {v0}, Lo/ƚ;->ˊ(Lo/ƚ;)Lo/ί;

    move-result-object v0

    invoke-virtual {v0}, Lo/ί;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 546
    iget-object v0, p0, Lo/ƚ$if;->โ:Lo/ƚ;

    invoke-static {v0}, Lo/ƚ;->ˊ(Lo/ƚ;)Lo/ί;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ί;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ƚ$ˋ;

    invoke-virtual {v0}, Lo/ƚ$ˋ;->Ị()Lo/ذ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 551
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 556
    if-nez p2, :cond_0

    .line 557
    iget-object v0, p0, Lo/ƚ$if;->โ:Lo/ƚ;

    invoke-virtual {p0, p1}, Lo/ƚ$if;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ذ$ˊ;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/ƚ;->ˊ(Lo/ƚ;Lo/ذ$ˊ;Z)Lo/ƚ$ˋ;

    move-result-object p2

    goto :goto_0

    .line 559
    :cond_0
    move-object v0, p2

    check-cast v0, Lo/ƚ$ˋ;

    invoke-virtual {p0, p1}, Lo/ƚ$if;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ذ$ˊ;

    invoke-virtual {v0, v1}, Lo/ƚ$ˋ;->ˊ(Lo/ذ$ˊ;)V

    .line 561
    :goto_0
    return-object p2
.end method
