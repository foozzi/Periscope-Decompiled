.class public Ltv/periscope/android/ui/main/MainActivity;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/ahg$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/periscope/android/ui/main/MainActivity$1;,
        Ltv/periscope/android/ui/main/MainActivity$if;
    }
.end annotation


# instance fields
.field private bFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/aif;>;"
        }
    .end annotation
.end field

.field private bFB:Landroid/view/View;

.field private bFC:Landroid/view/View;

.field private bFD:Landroid/widget/ImageView;

.field private bFE:Ltv/periscope/android/ui/main/MainActivity$if;

.field private bFF:Landroid/widget/ImageView;

.field private bFG:Lo/als;

.field private bFH:Lo/aig;

.field private bFz:Landroid/support/v4/view/ViewPager;

.field private byD:Lo/alo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 297
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 587
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 589
    :cond_0
    return-void
.end method

.method private zJ()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lo/aif;>;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lo/vf;->tL()Lo/zp;

    move-result-object v17

    .line 155
    invoke-virtual/range {p0 .. p0}, Ltv/periscope/android/ui/main/MainActivity;->wZ()Lo/vn;

    move-result-object v18

    .line 156
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v19

    .line 157
    new-instance v20, Lo/ahg;

    invoke-virtual/range {v17 .. v17}, Lo/zp;->uX()Lo/zw;

    move-result-object v0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lo/ahg;-><init>(Landroid/content/Context;Lo/zw;)V

    .line 159
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/ahg;->ˊ(Lo/ahg$if;)V

    .line 161
    new-instance v21, Lo/ahg;

    invoke-virtual/range {v17 .. v17}, Lo/zp;->uW()Lo/zw;

    move-result-object v0

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lo/ahg;-><init>(Landroid/content/Context;Lo/zw;)V

    .line 163
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/ahg;->ˊ(Lo/ahg$if;)V

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Lo/aif;

    new-instance v1, Lo/ahu;

    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v3

    new-instance v6, Lo/zj;

    invoke-virtual/range {v17 .. v17}, Lo/zp;->uX()Lo/zw;

    move-result-object v2

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    invoke-direct {v6, v4, v5, v2}, Lo/zj;-><init>(Lo/vn;Lo/zp;Lo/zw;)V

    move-object/from16 v2, p0

    iget-object v7, v2, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    move-object/from16 v2, p0

    const v4, 0x7f0b00c6

    invoke-virtual {v2, v4}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/aip;

    move-object v8, v2

    move-object/from16 v2, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    const v9, 0x7f090048

    const v10, 0x7f090049

    const v11, 0x7f090046

    const v12, 0x7f090047

    const v13, 0x7f09002b

    const v14, 0x7f02005a

    const v15, 0x7f020097

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lo/ahu;-><init>(Landroid/app/Activity;Lo/ot;Lo/vn;Lo/ahg;Lo/zj;Lo/amw;Lo/aip;IIIIIIII)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ahu;

    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v3

    new-instance v6, Lo/zm;

    invoke-virtual/range {v17 .. v17}, Lo/zp;->uW()Lo/zw;

    move-result-object v2

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    invoke-direct {v6, v4, v5, v2}, Lo/zm;-><init>(Lo/vn;Lo/zp;Lo/zw;)V

    move-object/from16 v2, p0

    iget-object v7, v2, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    move-object/from16 v2, p0

    const v4, 0x7f0b00c7

    invoke-virtual {v2, v4}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/aip;

    move-object v8, v2

    move-object/from16 v2, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    const v9, 0x7f090036

    const v10, 0x7f090037

    const v11, 0x7f090034

    const v12, 0x7f090035

    const v13, 0x7f09002b

    const v14, 0x7f02005a

    const v15, 0x7f020097

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lo/ahu;-><init>(Landroid/app/Activity;Lo/ot;Lo/vn;Lo/ahg;Lo/zj;Lo/amw;Lo/aip;IIIIIIII)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lo/aim;

    invoke-static {}, Lo/vf;->tH()Lo/ot;

    move-result-object v3

    move-object/from16 v2, p0

    iget-object v6, v2, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    move-object/from16 v2, p0

    const v4, 0x7f0b00c8

    invoke-virtual {v2, v4}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/aip;

    move-object v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const v8, 0x7f090048

    const v9, 0x7f090049

    const v10, 0x7f090046

    const v11, 0x7f090047

    const v12, 0x7f090012

    const v13, 0x7f02005d

    const v14, 0x7f02001d

    const v15, 0x7f0200b8

    invoke-direct/range {v1 .. v15}, Lo/aim;-><init>(Landroid/app/Activity;Lo/ot;Lo/vn;Lo/aad;Lo/amw;Lo/aip;IIIIIIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    .line 204
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object/from16 v24, v0

    .line 205
    move-object/from16 v0, v24

    iget-object v0, v0, Lo/aif;->bGb:Lo/aip;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/aip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    goto :goto_0

    .line 207
    :cond_0
    return-object v22
.end method

.method static synthetic ʻ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity;)Ljava/util/List;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/main/MainActivity;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/main/MainActivity;->setStatusBarColor(I)V

    return-void
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFF:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic ˎ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFB:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic ˏ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFC:Landroid/view/View;

    return-object v0
.end method

.method private ҭ(I)I
    .locals 3

    .line 211
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 212
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v2, v0

    .line 213
    iget-object v0, v2, Lo/aif;->bGb:Lo/aip;

    invoke-virtual {v0}, Lo/aip;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 214
    return v1

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic ᐝ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 53
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFD:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 274
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 276
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 278
    :sswitch_1
    if-eqz p3, :cond_0

    .line 279
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v0, "action_logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->finish()V

    .line 290
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1eae -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 222
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->byD:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->hide()V

    .line 224
    return-void

    .line 226
    :cond_0
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 237
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->ҭ(I)I

    move-result v3

    .line 238
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFE:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-virtual {v0, v3}, Ltv/periscope/android/ui/main/MainActivity$if;->ԇ(I)V

    goto/16 :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->ᗮ()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v3, v0

    .line 245
    iget v0, v3, Lo/aif;->bGg:I

    const v1, 0x7f02001d

    if-ne v0, v1, :cond_0

    .line 246
    sget-object v0, Lo/vi$if;->bmO:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/ajk;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000c

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/main/MainActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 251
    :cond_0
    sget-object v0, Lo/vi$if;->bmM:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/aet;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000c

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/main/MainActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 256
    goto :goto_0

    .line 259
    :pswitch_2
    sget-object v0, Lo/vi$if;->bmP:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/ajj;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x1eae

    invoke-virtual {p0, v0, v2, v1}, Ltv/periscope/android/ui/main/MainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 264
    .line 270
    :cond_1
    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 78
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->wZ()Lo/vn;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lo/vn;->tV()Ljava/lang/String;

    .line 85
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFB:Landroid/view/View;

    .line 88
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->byD:Lo/alo;

    .line 89
    new-instance v0, Lo/adj;

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/main/MainActivity;->byD:Lo/alo;

    invoke-direct {v0, p0, v4, v1, v2}, Lo/adj;-><init>(Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    .line 91
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->byD:Lo/alo;

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 93
    invoke-direct {p0}, Ltv/periscope/android/ui/main/MainActivity;->zJ()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    .line 95
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amq;

    move-object v5, v0

    .line 97
    new-instance v6, Lo/aln;

    invoke-direct {v6}, Lo/aln;-><init>()V

    .line 98
    new-instance v0, Lo/amp;

    invoke-direct {v0, v5}, Lo/amp;-><init>(Lo/amq;)V

    invoke-virtual {v6, v0}, Lo/aln;->ˊ(Landroid/support/v4/view/ViewPager$aux;)V

    .line 100
    new-instance v7, Ltv/periscope/android/ui/main/MainActivity$if;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Ltv/periscope/android/ui/main/MainActivity$if;-><init>(Ltv/periscope/android/ui/main/MainActivity;Ltv/periscope/android/ui/main/MainActivity$1;)V

    .line 101
    invoke-virtual {v6, v7}, Lo/aln;->ˊ(Landroid/support/v4/view/ViewPager$aux;)V

    .line 102
    iput-object v7, p0, Ltv/periscope/android/ui/main/MainActivity;->bFE:Ltv/periscope/android/ui/main/MainActivity$if;

    .line 104
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    .line 105
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 106
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 108
    new-instance v0, Lo/aig;

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    invoke-direct {v0, v1, v6}, Lo/aig;-><init>(Ljava/util/List;Lo/aln;)V

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFH:Lo/aig;

    .line 109
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFH:Lo/aig;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lo/ﹲ;)V

    .line 110
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFz:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V

    .line 112
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFC:Landroid/view/View;

    .line 113
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFC:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFD:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFF:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFF:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lo/akx;->Bl()Lo/akx;

    move-result-object v2

    invoke-virtual {v2}, Lo/akx;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pager_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 124
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFA:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    invoke-virtual {v7, v0}, Ltv/periscope/android/ui/main/MainActivity$if;->ᐝ(Lo/aif;)V

    .line 125
    invoke-virtual {v7, v8}, Ltv/periscope/android/ui/main/MainActivity$if;->ԇ(I)V

    .line 126
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 136
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFH:Lo/aig;

    invoke-virtual {v0}, Lo/aig;->onPause()V

    .line 137
    invoke-super {p0}, Lo/ado;->onPause()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lo/ado;->onResume()V

    .line 143
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFH:Lo/aig;

    invoke-virtual {v0}, Lo/aig;->onResume()V

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 130
    invoke-super {p0}, Lo/ado;->onStart()V

    .line 131
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Ltv/periscope/android/ui/main/MainActivity;->xa()Lo/ot;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/main/MainActivity;->bFG:Lo/als;

    invoke-virtual {v0, v1}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 149
    invoke-super {p0}, Lo/ado;->onStop()V

    .line 150
    return-void
.end method

.method public zE()V
    .locals 2

    .line 294
    iget-object v0, p0, Ltv/periscope/android/ui/main/MainActivity;->bFE:Ltv/periscope/android/ui/main/MainActivity$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ԇ(I)V

    .line 295
    return-void
.end method
