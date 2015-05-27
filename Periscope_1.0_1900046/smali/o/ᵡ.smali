.class public Lo/ᵡ;
.super Lo/ᵁ;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private Ẏ:Lo/ᵁ;

.field private ẗ:Lo/ᵃ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ᵁ;Lo/ᵃ;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/ᵁ;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    .line 41
    iput-object p3, p0, Lo/ᵡ;->ẗ:Lo/ᵃ;

    .line 42
    return-void
.end method


# virtual methods
.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/ᵡ;->ẗ:Lo/ᵃ;

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lo/ᵡ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ᵣ;->ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lo/ᵁ;->ʼ(Landroid/graphics/drawable/Drawable;)Lo/ᵁ;

    .line 105
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lo/ᵁ;->ʼ(Landroid/graphics/drawable/Drawable;)Lo/ᵁ;

    .line 100
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lo/ᵡ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lo/ᵁ;->ʻ(Ljava/lang/CharSequence;)Lo/ᵁ;

    .line 115
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lo/ᵁ;->ʻ(Ljava/lang/CharSequence;)Lo/ᵁ;

    .line 110
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lo/ᵁ;->ˇ(Landroid/view/View;)Lo/ᵁ;

    .line 120
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ᵡ;->ẗ:Lo/ᵃ;

    invoke-virtual {v0, p1}, Lo/ᵃ;->setIcon(I)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/ᵡ;->ẗ:Lo/ᵃ;

    invoke-virtual {v0, p1}, Lo/ᵃ;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 90
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0, p1}, Lo/ᵁ;->setQwertyMode(Z)V

    .line 47
    return-void
.end method

.method ˊ(Lo/ᵁ;Landroid/view/MenuItem;)Z
    .locals 1

    .line 84
    invoke-super {p0, p1, p2}, Lo/ᵁ;->ˊ(Lo/ᵁ;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0, p1, p2}, Lo/ᵁ;->ˊ(Lo/ᵁ;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˏ(Lo/ᵃ;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0, p1}, Lo/ᵁ;->ˏ(Lo/ᵃ;)Z

    move-result v0

    return v0
.end method

.method public ר()Landroid/view/Menu;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    return-object v0
.end method

.method public ᐝ(Lo/ᵃ;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0, p1}, Lo/ᵁ;->ᐝ(Lo/ᵃ;)Z

    move-result v0

    return v0
.end method

.method public ᕐ()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->ᕐ()Z

    move-result v0

    return v0
.end method

.method public ᕝ()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->ᕝ()Z

    move-result v0

    return v0
.end method

.method public ﭔ()Lo/ᵁ;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/ᵡ;->Ẏ:Lo/ᵁ;

    return-object v0
.end method
