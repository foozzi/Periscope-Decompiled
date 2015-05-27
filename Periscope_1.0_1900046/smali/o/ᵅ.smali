.class public Lo/ᵅ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lo/ᵉ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵅ$if;
    }
.end annotation


# static fields
.field static final ᔂ:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field о:Z

.field private final ᔃ:Lo/ᵅ$if;

.field private final ᔦ:Z

.field private final ᔩ:I

.field private final ᔪ:I

.field private final ᔮ:I

.field private ᘤ:Landroid/view/View;

.field private ᚐ:Lo/ῑ;

.field private ᴈ:Landroid/view/ViewTreeObserver;

.field private ᴏ:Lo/ᵉ$if;

.field private ᴢ:Landroid/view/ViewGroup;

.field private ᴣ:Z

.field private ᵂ:I

.field private Ḭ:I

.field private final 亅:Landroid/view/LayoutInflater;

.field private final ｼ:Lo/ᵁ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget v0, Lo/ڊ$ᐝ;->abc_popup_menu_item_layout:I

    sput v0, Lo/ᵅ;->ᔂ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;)V
    .locals 6

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget v5, Lo/ڊ$if;->popupMenuStyle:I

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ᵅ;-><init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZI)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZI)V
    .locals 7

    .line 89
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ᵅ;-><init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;ZII)V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lo/ᵅ;->Ḭ:I

    .line 94
    iput-object p1, p0, Lo/ᵅ;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lo/ᵅ;->亅:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Lo/ᵅ;->ｼ:Lo/ᵁ;

    .line 97
    new-instance v0, Lo/ᵅ$if;

    iget-object v1, p0, Lo/ᵅ;->ｼ:Lo/ᵁ;

    invoke-direct {v0, p0, v1}, Lo/ᵅ$if;-><init>(Lo/ᵅ;Lo/ᵁ;)V

    iput-object v0, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    .line 98
    iput-boolean p4, p0, Lo/ᵅ;->ᔦ:Z

    .line 99
    iput p5, p0, Lo/ᵅ;->ᔪ:I

    .line 100
    iput p6, p0, Lo/ᵅ;->ᔮ:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lo/ڊ$ˋ;->abc_config_prefDialogWidth:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lo/ᵅ;->ᔩ:I

    .line 106
    iput-object p3, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    .line 109
    invoke-virtual {p2, p0, p1}, Lo/ᵁ;->ˊ(Lo/ᵉ;Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method static synthetic ˊ(Lo/ᵅ;)Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/ᵅ;->ᔦ:Z

    return v0
.end method

.method static synthetic ˋ(Lo/ᵅ;)Landroid/view/LayoutInflater;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/ᵅ;->亅:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᵅ;)Lo/ᵁ;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/ᵅ;->ｼ:Lo/ᵁ;

    return-object v0
.end method

.method private ן()I
    .locals 12

    .line 200
    const/4 v2, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    const/4 v4, 0x0

    .line 204
    iget-object v5, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 207
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    .line 208
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    .line 209
    invoke-interface {v5, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 210
    if-eq v10, v4, :cond_0

    .line 211
    move v4, v10

    .line 212
    const/4 v3, 0x0

    .line 215
    :cond_0
    iget-object v0, p0, Lo/ᵅ;->ᴢ:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/ᵅ;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ᵅ;->ᴢ:Landroid/view/ViewGroup;

    .line 219
    :cond_1
    iget-object v0, p0, Lo/ᵅ;->ᴢ:Landroid/view/ViewGroup;

    invoke-interface {v5, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 220
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 223
    iget v0, p0, Lo/ᵅ;->ᔩ:I

    if-lt v11, v0, :cond_2

    .line 224
    iget v0, p0, Lo/ᵅ;->ᔩ:I

    return v0

    .line 225
    :cond_2
    if-le v11, v2, :cond_3

    .line 226
    move v2, v11

    .line 208
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 230
    :cond_4
    return v2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lo/ᵅ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->dismiss()V

    .line 168
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDismiss()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    .line 172
    iget-object v0, p0, Lo/ᵅ;->ｼ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->close()V

    .line 173
    iget-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    .line 175
    :cond_0
    iget-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    .line 178
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lo/ᵅ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    .line 237
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    invoke-virtual {p0}, Lo/ᵅ;->dismiss()V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lo/ᵅ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->show()V

    .line 244
    :cond_2
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 186
    iget-object v3, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    .line 187
    invoke-static {v3}, Lo/ᵅ$if;->ˊ(Lo/ᵅ$if;)Lo/ᵁ;

    move-result-object v0

    invoke-virtual {v3, p3}, Lo/ᵅ$if;->ᒽ(I)Lo/ᵃ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ᵁ;->ˊ(Landroid/view/MenuItem;I)Z

    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lo/ᵅ;->dismiss()V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lo/ᵅ;->о:Z

    .line 118
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 121
    iput p1, p0, Lo/ᵅ;->Ḭ:I

    .line 122
    return-void
.end method

.method public show()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lo/ᵅ;->ז()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public ˈ(Z)V
    .locals 1

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵅ;->ᴣ:Z

    .line 260
    iget-object v0, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    invoke-virtual {v0}, Lo/ᵅ$if;->notifyDataSetChanged()V

    .line 263
    :cond_0
    return-void
.end method

.method public ˊ(Landroid/content/Context;Lo/ᵁ;)V
    .locals 0

    .line 249
    return-void
.end method

.method public ˊ(Lo/ᵁ;Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lo/ᵅ;->ｼ:Lo/ᵁ;

    if-eq p1, v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lo/ᵅ;->dismiss()V

    .line 303
    iget-object v0, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    invoke-interface {v0, p1, p2}, Lo/ᵉ$if;->ˊ(Lo/ᵁ;Z)V

    .line 306
    :cond_1
    return-void
.end method

.method public ˊ(Lo/ᵉ$if;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    .line 268
    return-void
.end method

.method public ˊ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 1

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/ᵡ;)Z
    .locals 7

    .line 272
    invoke-virtual {p1}, Lo/ᵡ;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    new-instance v2, Lo/ᵅ;

    iget-object v0, p0, Lo/ᵅ;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    invoke-direct {v2, v0, p1, v1}, Lo/ᵅ;-><init>(Landroid/content/Context;Lo/ᵁ;Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    invoke-virtual {v2, v0}, Lo/ᵅ;->ˊ(Lo/ᵉ$if;)V

    .line 276
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p1}, Lo/ᵡ;->size()I

    move-result v4

    .line 278
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 279
    invoke-virtual {p1, v5}, Lo/ᵡ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 280
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v3, 0x1

    .line 282
    goto :goto_1

    .line 278
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lo/ᵅ;->setForceShowIcon(Z)V

    .line 287
    invoke-virtual {v2}, Lo/ᵅ;->ז()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lo/ᵅ;->ᴏ:Lo/ᵉ$if;

    invoke-interface {v0, p1}, Lo/ᵉ$if;->ˎ(Lo/ᵁ;)Z

    .line 291
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 1

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public Ӏ()Lo/ῑ;
    .locals 1

    .line 131
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    return-object v0
.end method

.method public ז()Z
    .locals 7

    .line 135
    new-instance v0, Lo/ῑ;

    iget-object v1, p0, Lo/ᵅ;->mContext:Landroid/content/Context;

    iget v2, p0, Lo/ᵅ;->ᔪ:I

    iget v3, p0, Lo/ᵅ;->ᔮ:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lo/ῑ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    .line 136
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0, p0}, Lo/ῑ;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 137
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0, p0}, Lo/ῑ;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    iget-object v1, p0, Lo/ᵅ;->ᔃ:Lo/ᵅ$if;

    invoke-virtual {v0, v1}, Lo/ῑ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ῑ;->setModal(Z)V

    .line 141
    iget-object v5, p0, Lo/ᵅ;->ᘤ:Landroid/view/View;

    .line 142
    if-eqz v5, :cond_2

    .line 143
    iget-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 144
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    .line 145
    if-eqz v6, :cond_1

    iget-object v0, p0, Lo/ᵅ;->ᴈ:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0, v5}, Lo/ῑ;->setAnchorView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    iget v1, p0, Lo/ᵅ;->Ḭ:I

    invoke-virtual {v0, v1}, Lo/ῑ;->setDropDownGravity(I)V

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 152
    :goto_1
    iget-boolean v0, p0, Lo/ᵅ;->ᴣ:Z

    if-nez v0, :cond_3

    .line 153
    invoke-direct {p0}, Lo/ᵅ;->ן()I

    move-result v0

    iput v0, p0, Lo/ᵅ;->ᵂ:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵅ;->ᴣ:Z

    .line 157
    :cond_3
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    iget v1, p0, Lo/ᵅ;->ᵂ:I

    invoke-virtual {v0, v1}, Lo/ῑ;->setContentWidth(I)V

    .line 158
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ῑ;->setInputMethodMode(I)V

    .line 159
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->show()V

    .line 160
    iget-object v0, p0, Lo/ᵅ;->ᚐ:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public ᑦ()Z
    .locals 1

    .line 310
    const/4 v0, 0x0

    return v0
.end method
