.class public Lo/בּ;
.super Lo/לּ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/בּ$if;
    }
.end annotation


# instance fields
.field private kf:Z

.field private mN:Lo/לּ;

.field private mO:Lo/בּ$if;


# direct methods
.method constructor <init>(Lo/בּ$if;Lo/לּ;Landroid/content/res/Resources;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lo/לּ;-><init>()V

    .line 30
    iput-object p1, p0, Lo/בּ;->mO:Lo/בּ$if;

    .line 31
    if-nez p2, :cond_1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    invoke-static {p1}, Lo/בּ$if;->ˊ(Lo/בּ$if;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/לּ;

    iput-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lo/בּ$if;->ˊ(Lo/בּ$if;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/לּ;

    iput-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p2, p0, Lo/בּ;->mN:Lo/לּ;

    .line 40
    :goto_0
    return-void
.end method

.method public constructor <init>(Lo/לּ;I)V
    .locals 2

    .line 26
    new-instance v0, Lo/בּ$if;

    invoke-virtual {p1}, Lo/לּ;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/בּ$if;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lo/בּ;-><init>(Lo/בּ$if;Lo/לּ;Landroid/content/res/Resources;)V

    .line 27
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->clearColorFilter()V

    .line 94
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->draw(Landroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 83
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 77
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 61
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/בּ;->mO:Lo/בּ$if;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 113
    iget-object v0, p0, Lo/בּ;->mO:Lo/בּ$if;

    invoke-static {v0}, Lo/בּ$if;->ˋ(Lo/בּ$if;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 108
    iget-object v0, p0, Lo/בּ;->mO:Lo/בּ$if;

    invoke-static {v0}, Lo/בּ$if;->ˋ(Lo/בּ$if;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 123
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 118
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 166
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 133
    invoke-super {p0}, Lo/לּ;->invalidateSelf()V

    .line 134
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 196
    iget-boolean v0, p0, Lo/בּ;->kf:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/לּ;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 197
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/לּ;

    iput-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    .line 198
    new-instance v0, Lo/בּ$if;

    iget-object v1, p0, Lo/בּ;->mO:Lo/בּ$if;

    invoke-direct {v0, v1}, Lo/בּ$if;-><init>(Lo/בּ$if;)V

    iput-object v0, p0, Lo/בּ;->mO:Lo/בּ$if;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/בּ;->kf:Z

    .line 201
    :cond_0
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2, p3}, Lo/לּ;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1, p2, p3}, Lo/לּ;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lo/לּ;->setBounds(IIII)V

    .line 45
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/לּ;->setBounds(IIII)V

    .line 46
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lo/לּ;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setChangingConfigurations(I)V

    .line 57
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1, p2}, Lo/לּ;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 162
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setDither(Z)V

    .line 67
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->setFilterBitmap(Z)V

    .line 72
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1, p2}, Lo/לּ;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->start()V

    .line 182
    return-void
.end method

.method public stop()V
    .locals 1

    .line 186
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->stop()V

    .line 187
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lo/לּ;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public ᑋ(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0, p1}, Lo/לּ;->ᑋ(I)V

    .line 177
    return-void
.end method

.method public ﾃ()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lo/בּ;->mN:Lo/לּ;

    invoke-virtual {v0}, Lo/לּ;->ﾃ()Z

    move-result v0

    return v0
.end method
