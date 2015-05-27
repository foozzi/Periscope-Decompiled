.class public abstract Lo/ﭴ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﭴ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::Lo/\ufb56;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private EZ:Lo/ﭖ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Fa:Landroid/os/Bundle;

.field private Fb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<Lo/\ufb74$if;>;"
        }
    .end annotation
.end field

.field private final Fc:Lo/ﺙ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe99<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/ﭸ;

    invoke-direct {v0, p0}, Lo/ﭸ;-><init>(Lo/ﭴ;)V

    iput-object v0, p0, Lo/ﭴ;->Fc:Lo/ﺙ;

    return-void
.end method

.method static synthetic ˊ(Lo/ﭴ;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lo/ﭴ;->Fa:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ﭴ;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ﭴ;Lo/ﭖ;)Lo/ﭖ;
    .locals 0

    iput-object p1, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    return-object p1
.end method

.method private ˊ(Landroid/os/Bundle;Lo/ﭴ$if;)V
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    invoke-interface {p2, v0}, Lo/ﭴ$if;->ˋ(Lo/ﭖ;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lo/ﭴ;->Fa:Landroid/os/Bundle;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lo/ﭴ;->Fa:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/ﭴ;->Fa:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lo/ﭴ;->Fc:Lo/ﺙ;

    invoke-virtual {p0, v0}, Lo/ﭴ;->ˊ(Lo/ﺙ;)V

    return-void
.end method

.method public static ˊ(Landroid/widget/FrameLayout;)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lo/ძ;->ٴ(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Lo/ძ;->ʻ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Lo/ძ;->ʼ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v6, :cond_0

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lo/ﮌ;

    invoke-direct {v0, v3, v4}, Lo/ﮌ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic ˋ(Lo/ﭴ;)Lo/ﭖ;
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    return-object v0
.end method

.method private ᵊ(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﭴ$if;

    invoke-interface {v0}, Lo/ﭴ$if;->getState()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lo/ﭴ;->Fb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/ﮉ;

    invoke-direct {v0, p0, p1}, Lo/ﮉ;-><init>(Lo/ﭴ;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lo/ﭴ;->ˊ(Landroid/os/Bundle;Lo/ﭴ$if;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    invoke-interface {v0}, Lo/ﭖ;->onDestroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ﭴ;->ᵊ(I)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    invoke-interface {v0}, Lo/ﭖ;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    invoke-interface {v0}, Lo/ﭖ;->onPause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/ﭴ;->ᵊ(I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    new-instance v0, Lo/ﮐ;

    invoke-direct {v0, p0}, Lo/ﮐ;-><init>(Lo/ﭴ;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/ﭴ;->ˊ(Landroid/os/Bundle;Lo/ﭴ$if;)V

    return-void
.end method

.method protected abstract ˊ(Lo/ﺙ;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe99<TT;>;)V"
        }
    .end annotation
.end method

.method public ァ()Lo/ﭖ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/ﭴ;->EZ:Lo/ﭖ;

    return-object v0
.end method
