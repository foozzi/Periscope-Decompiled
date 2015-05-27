.class public Lo/ᵇ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵇ$ˊ;,
        Lo/ᵇ$if;
    }
.end annotation


# instance fields
.field final Ԇ:Lo/ᵇ$ˊ;

.field final Ն:Lo/ᵇ$if;

.field final յ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/view/View;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ᵇ$ˊ;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    .line 50
    new-instance v0, Lo/ᵇ$if;

    invoke-direct {v0}, Lo/ᵇ$if;-><init>()V

    iput-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    .line 52
    return-void
.end method

.method private ᖮ(I)I
    .locals 5

    .line 90
    if-gez p1, :cond_0

    .line 91
    const/4 v0, -0x1

    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->getChildCount()I

    move-result v1

    .line 94
    move v2, p1

    .line 95
    :goto_0
    if-ge v2, v1, :cond_3

    .line 96
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v2}, Lo/ᵇ$if;->ᵙ(I)I

    move-result v3

    .line 97
    sub-int v0, v2, v3

    sub-int v4, p1, v0

    .line 98
    if-nez v4, :cond_2

    .line 99
    :goto_1
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v2}, Lo/ᵇ$if;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_1
    return v2

    .line 104
    :cond_2
    add-int/2addr v2, v4

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public detachViewFromParent(I)V
    .locals 2

    .line 255
    invoke-direct {p0, p1}, Lo/ᵇ;->ᖮ(I)I

    move-result v1

    .line 256
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->detachViewFromParent(I)V

    .line 257
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    .line 261
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2

    .line 156
    invoke-direct {p0, p1}, Lo/ᵇ;->ᖮ(I)I

    move-result v1

    .line 157
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .line 226
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 2

    .line 270
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1}, Lo/ᵇ$ˊ;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 271
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 272
    const/4 v0, -0x1

    return v0

    .line 274
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, -0x1

    return v0

    .line 282
    :cond_1
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵙ(I)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1}, Lo/ᵇ$ˊ;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 117
    if-gez v1, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->removeViewAt(I)V

    .line 121
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    return-void
.end method

.method public removeViewAt(I)V
    .locals 3

    .line 136
    invoke-direct {p0, p1}, Lo/ᵇ;->ᖮ(I)I

    move-result v1

    .line 137
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 138
    if-nez v2, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->removeViewAt(I)V

    .line 142
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v1}, Lo/ᵇ$if;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 203
    if-gez p2, :cond_0

    .line 204
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->getChildCount()I

    move-result v1

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p2}, Lo/ᵇ;->ᖮ(I)I

    move-result v1

    .line 208
    :goto_0
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1, v1, p3}, Lo/ᵇ$ˊ;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1, p4}, Lo/ᵇ$if;->ʿ(IZ)V

    .line 210
    if-eqz p4, :cond_1

    .line 211
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    return-void
.end method

.method public ˊ(Landroid/view/View;IZ)V
    .locals 2

    .line 74
    if-gez p2, :cond_0

    .line 75
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->getChildCount()I

    move-result v1

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p2}, Lo/ᵇ;->ᖮ(I)I

    move-result v1

    .line 79
    :goto_0
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1, v1}, Lo/ᵇ$ˊ;->addView(Landroid/view/View;I)V

    .line 80
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1, p3}, Lo/ᵇ$if;->ʿ(IZ)V

    .line 81
    if-eqz p3, :cond_1

    .line 82
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    return-void
.end method

.method public ˏ(Landroid/view/View;Z)V
    .locals 1

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lo/ᵇ;->ˊ(Landroid/view/View;IZ)V

    .line 62
    return-void
.end method

.method public ᑊ(Landroid/view/View;)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ᕀ(Landroid/view/View;)V
    .locals 4

    .line 301
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1}, Lo/ᵇ$ˊ;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 302
    if-gez v3, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v3}, Lo/ᵇ$if;->set(I)V

    .line 309
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public ᵌ(I)Landroid/view/View;
    .locals 1

    .line 246
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1}, Lo/ᵇ$ˊ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ᵕ(Landroid/view/View;)Z
    .locals 2

    .line 327
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, p1}, Lo/ᵇ$ˊ;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 328
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0, v1}, Lo/ᵇ$if;->ᵓ(I)Z

    .line 336
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v1}, Lo/ᵇ$ˊ;->removeViewAt(I)V

    .line 337
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ᵢ(II)Landroid/view/View;
    .locals 5

    .line 180
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 181
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 182
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 183
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0, v3}, Lo/ᵇ$ˊ;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 186
    :cond_0
    return-object v3

    .line 181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public ﺫ()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->removeAllViews()V

    .line 165
    iget-object v0, p0, Lo/ᵇ;->Ն:Lo/ᵇ$if;

    invoke-virtual {v0}, Lo/ᵇ$if;->reset()V

    .line 166
    iget-object v0, p0, Lo/ᵇ;->յ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    return-void
.end method

.method public ﻴ()I
    .locals 1

    .line 236
    iget-object v0, p0, Lo/ᵇ;->Ԇ:Lo/ᵇ$ˊ;

    invoke-interface {v0}, Lo/ᵇ$ˊ;->getChildCount()I

    move-result v0

    return v0
.end method
