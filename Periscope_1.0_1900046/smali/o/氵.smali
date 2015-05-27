.class public abstract Lo/氵;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final D:Landroid/support/v7/widget/RecyclerView$ʻ;

.field private E:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ʻ;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lo/氵;->E:I

    .line 45
    iput-object p1, p0, Lo/氵;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ʻ;Lo/灬;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lo/氵;-><init>(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    return-void
.end method

.method public static ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;)Lo/氵;
    .locals 1

    .line 194
    new-instance v0, Lo/灬;

    invoke-direct {v0, p0}, Lo/灬;-><init>(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    return-object v0
.end method

.method public static ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;I)Lo/氵;
    .locals 2

    .line 177
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 179
    :sswitch_0
    invoke-static {p0}, Lo/氵;->ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;)Lo/氵;

    move-result-object v0

    return-object v0

    .line 181
    :sswitch_1
    invoke-static {p0}, Lo/氵;->ˋ(Landroid/support/v7/widget/RecyclerView$ʻ;)Lo/氵;

    move-result-object v0

    return-object v0

    .line 183
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static ˋ(Landroid/support/v7/widget/RecyclerView$ʻ;)Lo/氵;
    .locals 1

    .line 270
    new-instance v0, Lo/ﭙ;

    invoke-direct {v0, p0}, Lo/ﭙ;-><init>(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    return-object v0
.end method


# virtual methods
.method public abstract getEnd()I
.end method

.method public abstract ʸ(I)V
.end method

.method public abstract ᐡ(Landroid/view/View;)I
.end method

.method public abstract ᐪ(Landroid/view/View;)I
.end method

.method public abstract ᒽ(Landroid/view/View;)I
.end method

.method public ᓯ()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lo/氵;->ᖦ()I

    move-result v0

    iput v0, p0, Lo/氵;->E:I

    .line 55
    return-void
.end method

.method public ᓱ()I
    .locals 2

    .line 68
    iget v0, p0, Lo/氵;->E:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/氵;->ᖦ()I

    move-result v0

    iget v1, p0, Lo/氵;->E:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract ᓴ()I
.end method

.method public abstract ᔇ(Landroid/view/View;)I
.end method

.method public abstract ᔥ()I
.end method

.method public abstract ᖦ()I
.end method

.method public abstract ᴗ()I
.end method
