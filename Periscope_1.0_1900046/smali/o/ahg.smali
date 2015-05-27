.class public Lo/ahg;
.super Landroid/support/v7/widget/RecyclerView$if;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ahg$1;,
        Lo/ahg$if;,
        Lo/ahg$ˎ;,
        Lo/ahg$ˋ;,
        Lo/ahg$ˊ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$if<Lo/ahj;>;Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private bEt:Lo/ahg$ˊ;

.field private bEu:Lo/ahg$ˋ;

.field private bEv:Lo/ahg$ˎ;

.field private bEw:Lo/ahg$if;

.field private final brP:Lo/zw;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zw;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$if;-><init>()V

    .line 53
    iput-object p1, p0, Lo/ahg;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lo/ahg;->brP:Lo/zw;

    .line 55
    return-void
.end method

.method private ˊ(Lo/ahi;Lo/xh;)V
    .locals 4

    .line 223
    iget-object v0, p2, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p1, Lo/ahi;->bEA:Landroid/widget/TextView;

    const v1, 0x7f060103

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p1, Lo/ahi;->bEA:Landroid/widget/TextView;

    iget-object v1, p2, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_0
    iget-boolean v0, p2, Lo/xh;->boG:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Lo/ahi;->bEB:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_1
    iget-object v0, p1, Lo/ahi;->bEB:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_1
    invoke-virtual {p2}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p2}, Lo/xh;->ui()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ahi;->Ґ(I)V

    goto :goto_2

    .line 237
    :cond_2
    iget-object v0, p1, Lo/ahi;->bEC:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lo/xh;->ud()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_2
    iget-boolean v0, p2, Lo/xh;->boT:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p1, Lo/ahi;->bEF:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 242
    :cond_3
    iget-object v0, p1, Lo/ahi;->bEF:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :goto_3
    iget-object v0, p1, Lo/ahi;->bED:Landroid/widget/TextView;

    iget-object v1, p2, Lo/xh;->boE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p2}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lo/xh;->boX:Z

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lo/xh;->boT:Z

    if-eqz v0, :cond_5

    .line 247
    :cond_4
    iget-object v0, p1, Lo/ahi;->bEE:Lo/alm;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/alm;->setAlpha(F)V

    goto :goto_4

    .line 249
    :cond_5
    iget-object v0, p1, Lo/ahi;->bEE:Lo/alm;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lo/alm;->setAlpha(F)V

    .line 252
    :goto_4
    iget-object v0, p1, Lo/ahi;->bB:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p1, Lo/ahi;->bB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p2, Lo/xh;->boQ:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, p2, Lo/xh;->boQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p1, Lo/ahi;->bEE:Lo/alm;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    goto :goto_5

    .line 263
    :cond_6
    iget-object v0, p1, Lo/ahi;->bEE:Lo/alm;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Lo/alm;->setBackgroundResource(I)V

    .line 265
    :goto_5
    return-void
.end method

.method private ᔅ(Landroid/view/View;)V
    .locals 4

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ahj;

    move-object v2, v0

    .line 349
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    iget-object v1, v2, Lo/ahj;->bnh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zw;->ー(Ljava/lang/String;)Lo/xh;

    move-result-object v3

    .line 350
    iget-object v0, p0, Lo/ahg;->bEt:Lo/ahg$ˊ;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lo/ahg;->bEt:Lo/ahg$ˊ;

    iget-object v1, v3, Lo/xh;->nD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ahg$ˊ;->ๅ(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 306
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->vc()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 273
    invoke-virtual {p0, p1}, Lo/ahg;->ҁ(I)Lo/anh;

    move-result-object v2

    .line 274
    sget-object v0, Lo/ahg$1;->bEx:[I

    invoke-virtual {v2}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v1

    invoke-virtual {v1}, Lo/anh$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 279
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 282
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 285
    :goto_0
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v2}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/zw;->ー(Ljava/lang/String;)Lo/xh;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v2}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v0

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x3

    return v0

    .line 291
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 293
    :cond_1
    invoke-virtual {v2}, Lo/anh;->BV()Lo/anh$if;

    move-result-object v0

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    if-ne v0, v1, :cond_2

    iget-boolean v0, v3, Lo/xh;->boX:Z

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x7

    return v0

    .line 295
    :cond_2
    iget-boolean v0, v3, Lo/xh;->boU:Z

    if-eqz v0, :cond_3

    .line 296
    const/4 v0, 0x2

    return v0

    .line 298
    :cond_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 314
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ahj;

    move-object v2, v0

    .line 315
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    iget-object v1, v2, Lo/ahj;->bnh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zw;->ー(Ljava/lang/String;)Lo/xh;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lo/ahg;->bEv:Lo/ahg$ˎ;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lo/ahg;->bEv:Lo/ahg$ˎ;

    iget-object v1, v3, Lo/xh;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ahg$ˎ;->ᓐ(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lo/ahg;->bEu:Lo/ahg$ˋ;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lo/ahg;->bEu:Lo/ahg$ˋ;

    iget-object v1, v3, Lo/xh;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ahg$ˋ;->ᐞ(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_1
    sget-object v0, Lo/vi$if;->blV:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 329
    invoke-direct {p0, p1}, Lo/ahg;->ᔅ(Landroid/view/View;)V

    .line 330
    goto :goto_0

    .line 333
    :pswitch_2
    sget-object v0, Lo/vi$if;->blW:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 334
    invoke-direct {p0, p1}, Lo/ahg;->ᔅ(Landroid/view/View;)V

    .line 335
    goto :goto_0

    .line 338
    :pswitch_3
    sget-object v0, Lo/vi$if;->blX:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 339
    iget-object v0, p0, Lo/ahg;->bEw:Lo/ahg$if;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lo/ahg;->bEw:Lo/ahg$if;

    invoke-interface {v0}, Lo/ahg$if;->zE()V

    .line 345
    :cond_1
    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b006d
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public zD()Lo/zw;
    .locals 1

    .line 357
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    return-object v0
.end method

.method public ʼ(Landroid/view/ViewGroup;I)Lo/ahj;
    .locals 5

    .line 78
    packed-switch p2, :pswitch_data_0

    nop

    .line 81
    :pswitch_0
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 83
    new-instance v4, Lo/ahi;

    invoke-direct {v4, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    .line 84
    iget-object v0, v4, Lo/ahi;->bEI:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, v4, Lo/ahi;->bEH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, v4, Lo/ahi;->bEK:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, v4, Lo/ahi;->bEC:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    return-object v4

    .line 91
    :pswitch_1
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 93
    new-instance v4, Lo/ahi;

    invoke-direct {v4, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    .line 94
    iget-object v0, v4, Lo/ahi;->bEI:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, v4, Lo/ahi;->bEH:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, v4, Lo/ahi;->bEK:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, v4, Lo/ahi;->bEC:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    return-object v4

    .line 101
    :pswitch_2
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 103
    new-instance v4, Lo/ahk;

    invoke-direct {v4, v3}, Lo/ahk;-><init>(Landroid/view/View;)V

    .line 104
    iget-object v0, v4, Lo/ahk;->bB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, v4, Lo/ahk;->bB:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    return-object v4

    .line 109
    :pswitch_3
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 111
    new-instance v4, Lo/ahk;

    invoke-direct {v4, v3}, Lo/ahk;-><init>(Landroid/view/View;)V

    .line 112
    iget-object v0, v4, Lo/ahk;->bEQ:Landroid/widget/TextView;

    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v0, v4, Lo/ahk;->bEQ:Landroid/widget/TextView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, v4, Lo/ahk;->bB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, v4, Lo/ahk;->bB:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    return-object v4

    .line 119
    :pswitch_4
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 121
    new-instance v4, Lo/ahi;

    invoke-direct {v4, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    .line 122
    iget-object v0, v4, Lo/ahi;->bEG:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, v4, Lo/ahi;->bEI:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, v4, Lo/ahi;->bEH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, v4, Lo/ahi;->bEK:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, v4, Lo/ahi;->bEC:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, v4, Lo/ahi;->bB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, v4, Lo/ahi;->bB:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    return-object v4

    .line 132
    :pswitch_5
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 134
    const v0, 0x7f0b006d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v0, Lo/ahi;

    invoke-direct {v0, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    return-object v0

    .line 138
    :pswitch_6
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 140
    new-instance v0, Lo/ahi;

    invoke-direct {v0, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    return-object v0

    .line 143
    :pswitch_7
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 145
    new-instance v0, Lo/ahi;

    invoke-direct {v0, v3}, Lo/ahi;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 1

    .line 24
    move-object v0, p1

    check-cast v0, Lo/ahj;

    invoke-virtual {p0, v0, p2}, Lo/ahg;->ˊ(Lo/ahj;I)V

    return-void
.end method

.method public ˊ(Lo/ahg$if;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/ahg;->bEw:Lo/ahg$if;

    .line 67
    return-void
.end method

.method public ˊ(Lo/ahg$ˊ;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/ahg;->bEt:Lo/ahg$ˊ;

    .line 63
    return-void
.end method

.method public ˊ(Lo/ahg$ˋ;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/ahg;->bEu:Lo/ahg$ˋ;

    .line 59
    return-void
.end method

.method public ˊ(Lo/ahg$ˎ;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/ahg;->bEv:Lo/ahg$ˎ;

    .line 74
    return-void
.end method

.method public ˊ(Lo/ahj;I)V
    .locals 9

    .line 152
    invoke-virtual {p1}, Lo/ahj;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 156
    :pswitch_0
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v0, p2}, Lo/zw;->ｪ(I)Lo/xh;

    move-result-object v7

    .line 157
    iget-object v0, v7, Lo/xh;->id:Ljava/lang/String;

    iput-object v0, p1, Lo/ahj;->bnh:Ljava/lang/String;

    .line 158
    move-object v0, p1

    check-cast v0, Lo/ahi;

    invoke-direct {p0, v0, v7}, Lo/ahg;->ˊ(Lo/ahi;Lo/xh;)V

    .line 159
    goto/16 :goto_3

    .line 163
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lo/ahk;

    move-object v7, v0

    .line 164
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v0, p2}, Lo/zw;->ｪ(I)Lo/xh;

    move-result-object v8

    .line 165
    iget-object v0, v8, Lo/xh;->id:Ljava/lang/String;

    iput-object v0, v7, Lo/ahk;->bnh:Ljava/lang/String;

    .line 166
    iget-object v0, v8, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, v7, Lo/ahk;->bEA:Landroid/widget/TextView;

    const v1, 0x7f060103

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, v7, Lo/ahk;->bEA:Landroid/widget/TextView;

    iget-object v1, v8, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    iget-boolean v0, v8, Lo/xh;->boG:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, v7, Lo/ahk;->bEB:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 174
    :cond_1
    iget-object v0, v7, Lo/ahk;->bEB:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    :goto_1
    iget-object v0, v7, Lo/ahk;->bB:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v8}, Lo/xh;->ui()I

    move-result v0

    invoke-virtual {v7, v0}, Lo/ahk;->Ґ(I)V

    .line 180
    iget-object v0, v7, Lo/ahk;->bED:Landroid/widget/TextView;

    iget-object v1, v8, Lo/xh;->boE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, v7, Lo/ahk;->bED:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, v7, Lo/ahk;->bED:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v0, v8, Lo/xh;->Tk:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, v8, Lo/xh;->Tk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    iget-object v1, v7, Lo/ahk;->bEN:Lo/alm;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    goto :goto_2

    .line 191
    :cond_2
    iget-object v0, v7, Lo/ahk;->bEN:Lo/alm;

    iget-object v1, v8, Lo/xh;->boE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/akl;->ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 194
    :goto_2
    iget-object v0, v7, Lo/ahk;->bEP:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, v7, Lo/ahk;->bEP:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v0, v8, Lo/xh;->boQ:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, v8, Lo/xh;->boQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    iget-object v1, v7, Lo/ahk;->bEO:Lo/alm;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 204
    :cond_3
    invoke-virtual {v8}, Lo/xh;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, v7, Lo/ahk;->bEM:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 207
    :cond_4
    iget-object v0, v7, Lo/ahk;->bEM:Landroid/widget/TextView;

    invoke-virtual {v8}, Lo/xh;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    goto :goto_3

    .line 214
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lo/ahi;

    move-object v7, v0

    .line 215
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->vd()I

    move-result v8

    .line 216
    iget-object v0, v7, Lo/ahi;->bEJ:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/ahg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    int-to-long v4, v8

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0004

    invoke-virtual {v1, v3, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 220
    :goto_3
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/ahg;->ʼ(Landroid/view/ViewGroup;I)Lo/ahj;

    move-result-object v0

    return-object v0
.end method

.method public ҁ(I)Lo/anh;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/ahg;->brP:Lo/zw;

    invoke-virtual {v0, p1}, Lo/zw;->ﾃ(I)Lo/anh;

    move-result-object v0

    return-object v0
.end method
