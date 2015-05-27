.class public Lo/ᴖ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ǃ;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final ᴽ:I

.field private final ḟ:I

.field private final Ḷ:I

.field private ḹ:Ljava/lang/CharSequence;

.field private ḽ:Ljava/lang/CharSequence;

.field private ṝ:Landroid/content/Intent;

.field private ṿ:C

.field private ἲ:C

.field private ἳ:Landroid/graphics/drawable/Drawable;

.field private ἴ:I

.field private ἵ:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private ῖ:I

.field private final ﹷ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lo/ᴖ;->ἴ:I

    .line 56
    const/16 v0, 0x10

    iput v0, p0, Lo/ᴖ;->ῖ:I

    .line 65
    iput-object p1, p0, Lo/ᴖ;->mContext:Landroid/content/Context;

    .line 66
    iput p3, p0, Lo/ᴖ;->ﹷ:I

    .line 67
    iput p2, p0, Lo/ᴖ;->ᴽ:I

    .line 68
    iput p4, p0, Lo/ᴖ;->ḟ:I

    .line 69
    iput p5, p0, Lo/ᴖ;->Ḷ:I

    .line 70
    iput-object p6, p0, Lo/ᴖ;->ḹ:Ljava/lang/CharSequence;

    .line 71
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 74
    iget-char v0, p0, Lo/ᴖ;->ἲ:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 78
    iget v0, p0, Lo/ᴖ;->ᴽ:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ᴖ;->ἳ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ᴖ;->ṝ:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 90
    iget v0, p0, Lo/ᴖ;->ﹷ:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 98
    iget-char v0, p0, Lo/ᴖ;->ṿ:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 102
    iget v0, p0, Lo/ᴖ;->Ḷ:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/ᴖ;->ḹ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/ᴖ;->ḽ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴖ;->ḽ:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ᴖ;->ḹ:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 122
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 126
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 130
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 134
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lo/ᴖ;->יִ(I)Lo/ǃ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lo/ᴖ;->ˆ(Landroid/view/View;)Lo/ǃ;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 138
    iput-char p1, p0, Lo/ᴖ;->ἲ:C

    .line 139
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 143
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lo/ᴖ;->ῖ:I

    .line 144
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2

    .line 153
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lo/ᴖ;->ῖ:I

    .line 154
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .line 158
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lo/ᴖ;->ῖ:I

    .line 159
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 169
    iput p1, p0, Lo/ᴖ;->ἴ:I

    .line 170
    iget-object v0, p0, Lo/ᴖ;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/ᵣ;->ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ᴖ;->ἳ:Landroid/graphics/drawable/Drawable;

    .line 171
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 163
    iput-object p1, p0, Lo/ᴖ;->ἳ:Landroid/graphics/drawable/Drawable;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lo/ᴖ;->ἴ:I

    .line 165
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 175
    iput-object p1, p0, Lo/ᴖ;->ṝ:Landroid/content/Intent;

    .line 176
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 180
    iput-char p1, p0, Lo/ᴖ;->ṿ:C

    .line 181
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1

    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 185
    iput-object p1, p0, Lo/ᴖ;->ἵ:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 186
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 190
    iput-char p1, p0, Lo/ᴖ;->ṿ:C

    .line 191
    iput-char p2, p0, Lo/ᴖ;->ἲ:C

    .line 192
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .line 230
    return-void
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lo/ᴖ;->יּ(I)Lo/ǃ;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/ᴖ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ᴖ;->ḹ:Ljava/lang/CharSequence;

    .line 202
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 196
    iput-object p1, p0, Lo/ᴖ;->ḹ:Ljava/lang/CharSequence;

    .line 197
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 206
    iput-object p1, p0, Lo/ᴖ;->ḽ:Ljava/lang/CharSequence;

    .line 207
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 211
    iget v0, p0, Lo/ᴖ;->ῖ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lo/ᴖ;->ῖ:I

    .line 212
    return-object p0
.end method

.method public ˆ(Landroid/view/View;)Lo/ǃ;
    .locals 1

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public יִ(I)Lo/ǃ;
    .locals 1

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public יּ(I)Lo/ǃ;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lo/ᴖ;->setShowAsAction(I)V

    .line 268
    return-object p0
.end method
