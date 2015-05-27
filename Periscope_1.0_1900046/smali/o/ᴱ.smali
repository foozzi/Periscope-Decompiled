.class public abstract Lo/ᴱ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵉ;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private ć:I

.field protected Ĩ:Lo/ᵊ;

.field protected 亅:Landroid/view/LayoutInflater;

.field private ﹷ:I

.field protected ｯ:Landroid/content/Context;

.field protected ｼ:Lo/ᵁ;

.field protected ｿ:Landroid/view/LayoutInflater;

.field private ﾄ:Lo/ᵉ$if;

.field private ﾕ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/ᴱ;->ｯ:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/ᴱ;->ｿ:Landroid/view/LayoutInflater;

    .line 60
    iput p2, p0, Lo/ᴱ;->ﾕ:I

    .line 61
    iput p3, p0, Lo/ᴱ;->ć:I

    .line 62
    return-void
.end method


# virtual methods
.method public setId(I)V
    .locals 0

    .line 235
    iput p1, p0, Lo/ᴱ;->ﹷ:I

    .line 236
    return-void
.end method

.method public ˈ(Z)V
    .locals 10

    .line 86
    iget-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 87
    if-nez v1, :cond_0

    return-void

    .line 89
    :cond_0
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lo/ᴱ;->ｼ:Lo/ᵁ;

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lo/ᴱ;->ｼ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->Ⅰ()V

    .line 92
    iget-object v0, p0, Lo/ᴱ;->ｼ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->ⁿ()Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 94
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 95
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵃ;

    move-object v6, v0

    .line 96
    invoke-virtual {p0, v2, v6}, Lo/ᴱ;->ˊ(ILo/ᵃ;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 98
    instance-of v0, v7, Lo/ᵊ$if;

    if-eqz v0, :cond_1

    move-object v0, v7

    check-cast v0, Lo/ᵊ$if;

    invoke-interface {v0}, Lo/ᵊ$if;->ʺ()Lo/ᵃ;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 100
    :goto_1
    invoke-virtual {p0, v6, v7, v1}, Lo/ᴱ;->ˊ(Lo/ᵃ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 101
    if-eq v6, v8, :cond_2

    .line 103
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setPressed(Z)V

    .line 104
    invoke-static {v9}, Lo/ﺑ;->י(Landroid/view/View;)V

    .line 106
    :cond_2
    if-eq v9, v7, :cond_3

    .line 107
    invoke-virtual {p0, v9, v2}, Lo/ᴱ;->ͺ(Landroid/view/View;I)V

    .line 109
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 94
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 116
    invoke-virtual {p0, v1, v2}, Lo/ᴱ;->ˋ(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_6
    return-void
.end method

.method public ˊ(Lo/ᵃ;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 177
    instance-of v0, p2, Lo/ᵊ$if;

    if-eqz v0, :cond_0

    .line 178
    move-object v0, p2

    check-cast v0, Lo/ᵊ$if;

    move-object v1, v0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0, p3}, Lo/ᴱ;->ˏ(Landroid/view/ViewGroup;)Lo/ᵊ$if;

    move-result-object v1

    .line 182
    :goto_0
    invoke-virtual {p0, p1, v1}, Lo/ᴱ;->ˊ(Lo/ᵃ;Lo/ᵊ$if;)V

    .line 183
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public ˊ(Landroid/content/Context;Lo/ᵁ;)V
    .locals 1

    .line 66
    iput-object p1, p0, Lo/ᴱ;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lo/ᴱ;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/ᴱ;->亅:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lo/ᴱ;->ｼ:Lo/ᵁ;

    .line 69
    return-void
.end method

.method public ˊ(Lo/ᵁ;Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    invoke-interface {v0, p1, p2}, Lo/ᵉ$if;->ˊ(Lo/ᵁ;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public abstract ˊ(Lo/ᵃ;Lo/ᵊ$if;)V
.end method

.method public ˊ(Lo/ᵉ$if;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    .line 149
    return-void
.end method

.method public ˊ(ILo/ᵃ;)Z
    .locals 1

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 1

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/ᵡ;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    invoke-interface {v0, p1}, Lo/ᵉ$if;->ˎ(Lo/ᵁ;)Z

    move-result v0

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected ˋ(Landroid/view/ViewGroup;I)Z
    .locals 1

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public ˋ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Landroid/view/ViewGroup;)Lo/ᵊ;
    .locals 3

    .line 73
    iget-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/ᴱ;->ｿ:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/ᴱ;->ﾕ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ᵊ;

    iput-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    .line 75
    iget-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    iget-object v1, p0, Lo/ᴱ;->ｼ:Lo/ᵁ;

    invoke-interface {v0, v1}, Lo/ᵊ;->ˊ(Lo/ᵁ;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ᴱ;->ˈ(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    return-object v0
.end method

.method public ˏ(Landroid/view/ViewGroup;)Lo/ᵊ$if;
    .locals 3

    .line 161
    iget-object v0, p0, Lo/ᴱ;->ｿ:Landroid/view/LayoutInflater;

    iget v1, p0, Lo/ᴱ;->ć:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ᵊ$if;

    return-object v0
.end method

.method protected ͺ(Landroid/view/View;I)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lo/ᴱ;->Ĩ:Lo/ᵊ;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public ᑋ()Lo/ᵉ$if;
    .locals 1

    .line 152
    iget-object v0, p0, Lo/ᴱ;->ﾄ:Lo/ᵉ$if;

    return-object v0
.end method

.method public ᑦ()Z
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method
