.class public Lo/agp;
.super Landroid/support/v7/widget/RecyclerView$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agp$1;,
        Lo/agp$ˊ;,
        Lo/agp$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$if<Lo/agy;>;"
    }
.end annotation


# instance fields
.field private bDC:Lo/afn;

.field private bDD:J

.field private bDE:Lo/agp$if;

.field private bDF:I

.field private bDG:Lo/anu;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private ﮂ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/agr;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/afn;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$if;-><init>()V

    .line 55
    iput-object p1, p0, Lo/agp;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/agp;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lo/agp;->bDC:Lo/afn;

    .line 59
    new-instance v0, Lo/agp$if;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lo/agp$if;-><init>(Lo/agp;I)V

    iput-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/agp;->ﹶ(Z)V

    .line 61
    return-void
.end method

.method static synthetic ˊ(Lo/agp;)Landroid/os/Handler;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/agp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ˊ(Lo/ahd;Lo/agr;)V
    .locals 6

    .line 186
    iget-object v4, p2, Lo/agr;->bxr:Lo/ant;

    .line 187
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 188
    iput-object p2, p1, Lo/ahd;->bEq:Lo/agr;

    .line 189
    iget-object v0, p1, Lo/ahd;->bEn:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060105

    invoke-virtual {v5, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p1, Lo/ahd;->bEo:Landroid/widget/TextView;

    invoke-virtual {v4}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p1, Lo/ahd;->bEp:Lo/alm;

    invoke-virtual {v4}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Lo/akl;->ˋ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/alm;->setColorFilter(I)V

    .line 193
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v4}, Lo/ant;->Cn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p1, Lo/ahd;->bEp:Lo/alm;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 198
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 66
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agr;

    iget-wide v0, v0, Lo/agr;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 168
    invoke-virtual {p0, p1}, Lo/agp;->ʋ(I)Lo/agr;

    move-result-object v2

    .line 169
    sget-object v0, Lo/agp$1;->bwW:[I

    iget-object v1, v2, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 176
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 180
    :goto_0
    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ʋ(I)Lo/agr;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agr;

    return-object v0
.end method

.method public ʻ(Landroid/view/ViewGroup;I)Lo/agy;
    .locals 4

    .line 71
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 74
    new-instance v0, Lo/ahf;

    iget-object v1, p0, Lo/agp;->bDC:Lo/afn;

    invoke-direct {v0, v3, v1}, Lo/ahf;-><init>(Landroid/view/View;Lo/afn;)V

    return-object v0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 79
    new-instance v0, Lo/agy;

    invoke-direct {v0, v3}, Lo/agy;-><init>(Landroid/view/View;)V

    return-object v0

    .line 83
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 84
    new-instance v0, Lo/ahd;

    iget-object v1, p0, Lo/agp;->bDC:Lo/afn;

    invoke-direct {v0, v3, v1}, Lo/ahd;-><init>(Landroid/view/View;Lo/afn;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ʼ(Lo/ant;)V
    .locals 10

    .line 210
    sget-object v0, Lo/agp$1;->bwW:[I

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 213
    :sswitch_0
    iget v0, p0, Lo/agp;->bDF:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget v0, p0, Lo/agp;->bDF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/agp;->bDF:I

    .line 218
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    sget-object v1, Lo/anu;->bNZ:Lo/anu;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iget-object v1, p0, Lo/agp;->bDG:Lo/anu;

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 220
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/agr;

    move-object v7, v0

    .line 221
    new-instance v8, Lo/agr;

    iget-wide v0, v7, Lo/agr;->id:J

    invoke-direct {v8, p1, v0, v1}, Lo/agr;-><init>(Lo/ant;J)V

    .line 222
    iget-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    invoke-virtual {v0}, Lo/agp$if;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    invoke-virtual {v0}, Lo/agp$if;->zx()Lo/agy$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/agy$if;->zB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-wide v0, v7, Lo/agr;->id:J

    invoke-virtual {v7}, Lo/agr;->zA()I

    move-result v2

    invoke-static {v0, v1, v2}, Lo/ang;->ˎ(JI)Lo/ang;

    move-result-object v9

    .line 224
    iget-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    invoke-virtual {v0, v9}, Lo/agp$if;->ˊ(Lo/ang;)V

    .line 226
    invoke-virtual {v7}, Lo/agr;->zA()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Lo/agr;->Υ(I)V

    .line 227
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, v6}, Lo/agp;->ˢ(I)V

    .line 229
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iput-object v0, p0, Lo/agp;->bDG:Lo/anu;

    .line 230
    return-void

    .line 237
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    new-instance v1, Lo/agr;

    iget-wide v2, p0, Lo/agp;->bDD:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lo/agp;->bDD:J

    invoke-direct {v1, p1, v2, v3}, Lo/agr;-><init>(Lo/ant;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lo/agp;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/agp;->ˤ(I)V

    .line 239
    invoke-virtual {p1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iput-object v0, p0, Lo/agp;->bDG:Lo/anu;

    .line 240
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˈ(Lo/ant;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-virtual {p1}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lo/anw;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lo/ant;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    return-object v1
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 1

    .line 35
    move-object v0, p1

    check-cast v0, Lo/agy;

    invoke-virtual {p0, v0, p2}, Lo/agp;->ˊ(Lo/agy;I)V

    return-void
.end method

.method public ˊ(Lo/agy;I)V
    .locals 10

    .line 92
    if-gez p2, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lo/agp;->ʋ(I)Lo/agr;

    move-result-object v6

    .line 96
    iget-object v0, p0, Lo/agp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 97
    sget-object v0, Lo/agp$1;->bwW:[I

    iget-object v1, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cf()Lo/anu;

    move-result-object v1

    invoke-virtual {v1}, Lo/anu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 99
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lo/ahf;

    move-object v8, v0

    .line 100
    iget-object v0, v8, Lo/ahf;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f09002b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    iget-object v0, v8, Lo/ahf;->bEs:Landroid/widget/TextView;

    iget-object v1, p0, Lo/agp;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v3}, Lo/ant;->Cu()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f060040

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    goto/16 :goto_2

    .line 107
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lo/ahf;

    move-object v8, v0

    .line 108
    iget-object v0, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v9

    .line 109
    iget-object v0, v8, Lo/ahf;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 110
    iget-object v0, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    iget-object v0, v8, Lo/ahf;->bEs:Landroid/widget/TextView;

    iget-object v1, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {p0, v3}, Lo/agp;->ˈ(Lo/ant;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v3}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    invoke-static {v7, v3, v4, v5}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0d0001

    invoke-virtual {v7, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, v8, Lo/ahf;->bEs:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {p0, v2}, Lo/agp;->ˈ(Lo/ant;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060098

    invoke-virtual {v7, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iput-object v6, v8, Lo/ahf;->bEq:Lo/agr;

    .line 120
    goto :goto_2

    .line 123
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lo/ahf;

    move-object v8, v0

    .line 125
    invoke-virtual {v6}, Lo/agr;->zA()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    const v0, 0x7f09002b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    goto :goto_1

    .line 128
    :cond_2
    iget-object v0, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v9

    .line 130
    :goto_1
    iget-object v0, v8, Lo/ahf;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    iget-object v0, v8, Lo/ahf;->bEs:Landroid/widget/TextView;

    iget-object v1, p0, Lo/agp;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v6, Lo/agr;->bxr:Lo/ant;

    invoke-virtual {p0, v3}, Lo/agp;->ˈ(Lo/ant;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f06004b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iput-object v6, v8, Lo/ahf;->bEq:Lo/agr;

    .line 135
    goto :goto_2

    .line 138
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lo/ahd;

    move-object v8, v0

    .line 139
    invoke-direct {p0, v8, v6}, Lo/agp;->ˊ(Lo/ahd;Lo/agr;)V

    .line 140
    .line 144
    :goto_2
    iget-object v0, p1, Lo/agy;->bEb:Lo/ang;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    iget-object v1, p1, Lo/agy;->bEb:Lo/ang;

    invoke-virtual {v0, v1}, Lo/agp$if;->ˊ(Lo/ang;)V

    .line 148
    :cond_3
    iget-object v0, p1, Lo/agy;->bB:Landroid/view/View;

    invoke-virtual {v6}, Lo/agr;->zy()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 150
    new-instance v8, Lo/agy$if;

    iget-object v0, p1, Lo/agy;->bB:Landroid/view/View;

    invoke-direct {v8, v0, v6}, Lo/agy$if;-><init>(Landroid/view/View;Lo/agr;)V

    .line 151
    invoke-virtual {p1}, Lo/agy;->getItemId()J

    move-result-wide v0

    invoke-virtual {v6}, Lo/agr;->zA()I

    move-result v2

    invoke-static {v0, v1, v2}, Lo/ang;->ˎ(JI)Lo/ang;

    move-result-object v9

    .line 152
    iput-object v9, p1, Lo/agy;->bEb:Lo/ang;

    .line 153
    iget-object v0, p0, Lo/agp;->bDE:Lo/agp$if;

    invoke-virtual {v0, v9, v8}, Lo/agp$if;->ˊ(Lo/ang;Lo/agy$if;)V

    .line 155
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 35
    invoke-virtual {p0, p1, p2}, Lo/agp;->ʻ(Landroid/view/ViewGroup;I)Lo/agy;

    move-result-object v0

    return-object v0
.end method
