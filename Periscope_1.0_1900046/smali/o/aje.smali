.class Lo/aje;
.super Lo/ﹲ;
.source ""


# instance fields
.field private final bHf:[I

.field private final bHg:[I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/ﹲ;-><init>()V

    .line 21
    iput-object p1, p0, Lo/aje;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lo/aje;->bHf:[I

    .line 23
    iput-object p3, p0, Lo/aje;->bHg:[I

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lo/aje;->bHf:[I

    array-length v0, v0

    return v0
.end method

.method public ˊ(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 38
    iget-object v0, p0, Lo/aje;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 39
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 41
    const v0, 0x7f0b002f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v4, v0

    .line 42
    iget-object v0, p0, Lo/aje;->bHf:[I

    aget v0, v0, p2

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    const v0, 0x7f0b005c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 45
    iget-object v0, p0, Lo/aje;->bHg:[I

    aget v0, v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    return-object v3
.end method

.method public ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 53
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public ˋ(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 33
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
