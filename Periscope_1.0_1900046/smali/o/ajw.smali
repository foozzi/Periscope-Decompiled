.class public Lo/ajw;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/akd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajw$if;
    }
.end annotation


# static fields
.field private static final bCa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# instance fields
.field private final bHQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private bHR:Landroid/widget/TextView;

.field private bHS:Landroid/widget/TextView;

.field private bHT:Landroid/widget/EditText;

.field private bHU:Landroid/widget/ImageView;

.field private bHV:Landroid/widget/ImageView;

.field private bHW:Landroid/widget/TextView;

.field private bHX:I

.field private bHY:I

.field private bHZ:Lo/ajw$if;

.field private bIa:Lo/ajt;

.field private bIb:Z

.field private bIc:Lo/alv;

.field private bId:Lo/alv;

.field private γ:I

.field private ᘄ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/ajw;->bCa:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    .line 66
    invoke-direct {p0, p1}, Lo/ajw;->ˊ(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    .line 71
    invoke-direct {p0, p1}, Lo/ajw;->ˊ(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    .line 76
    invoke-direct {p0, p1}, Lo/ajw;->ˊ(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private Ar()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private As()V
    .locals 2

    .line 179
    iget-object v0, p0, Lo/ajw;->bHR:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lo/ajw;->bHS:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    iget-object v0, p0, Lo/ajw;->bHV:Landroid/widget/ImageView;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lo/ajw;->bHU:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔊ(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method private At()V
    .locals 2

    .line 190
    iget-object v0, p0, Lo/ajw;->bHR:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lo/ajw;->bHS:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 195
    iget-object v0, p0, Lo/ajw;->bHV:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lo/ajw;->bHU:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method private Au()V
    .locals 2

    .line 226
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    new-instance v1, Lo/aka;

    invoke-direct {v1, p0}, Lo/aka;-><init>(Lo/ajw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    return-void
.end method

.method private Aw()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lo/ajw;->bCa:Ljava/util/ArrayList;

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic ˊ(Lo/ajw;)Ljava/util/Set;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    return-object v0
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajw;->bHR:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajw;->bHS:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    .line 86
    new-instance v0, Lo/ajt;

    new-instance v1, Lo/aaf;

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/aaf;-><init>(Lo/aad;)V

    new-instance v2, Lo/ajx;

    invoke-direct {v2, p0}, Lo/ajx;-><init>(Lo/ajw;)V

    invoke-direct {v0, p1, v1, p0, v2}, Lo/ajt;-><init>(Landroid/content/Context;Lo/aaf;Lo/akd;Lo/akb;)V

    iput-object v0, p0, Lo/ajw;->bIa:Lo/ajt;

    .line 93
    invoke-direct {p0}, Lo/ajw;->Au()V

    .line 95
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    .line 96
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lo/ajw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 97
    iget-object v0, p0, Lo/ajw;->bIa:Lo/ajt;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 99
    const v0, 0x7f0b010c

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajw;->bHU:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lo/ajw;->bHU:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0b010a

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajw;->bHV:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lo/ajw;->bHV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0b010d

    invoke-virtual {p0, v0}, Lo/ajw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajw;->bHW:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lo/ajw;->bHW:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lo/ajw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/akn;->ᒢ(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/ajw;->γ:I

    .line 108
    new-instance v0, Lo/ajy;

    invoke-direct {v0, p0}, Lo/ajy;-><init>(Lo/ajw;)V

    iput-object v0, p0, Lo/ajw;->bIc:Lo/alv;

    .line 123
    new-instance v0, Lo/ajz;

    invoke-direct {v0, p0}, Lo/ajz;-><init>(Lo/ajw;)V

    iput-object v0, p0, Lo/ajw;->bId:Lo/alv;

    .line 136
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/ajw;->setVisibility(I)V

    .line 139
    invoke-super {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method static synthetic ˊ(Lo/ajw;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ajw;->ᘄ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ajw;)Landroid/widget/EditText;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    return-object v0
.end method

.method private ˋ(ZLtv/periscope/android/api/PsUser;)V
    .locals 1

    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/ajw;->ᓯ(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/ajw;->ᓱ(Ljava/lang/String;)V

    .line 312
    :goto_0
    iget-object v0, p0, Lo/ajw;->bHT:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method static synthetic ˋ(Lo/ajw;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lo/ajw;->bIb:Z

    return p1
.end method

.method static synthetic ˎ(Lo/ajw;)Lo/ajt;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/ajw;->bIa:Lo/ajt;

    return-object v0
.end method

.method private ใ(I)V
    .locals 6

    .line 326
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lo/ajw;->bHW:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lo/ajw;->bHW:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lo/ajw;->bHW:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/ajw;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lo/ajw;->bHX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_0
    return-void
.end method

.method private ᓯ(Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ajw;->ใ(I)V

    .line 318
    return-void
.end method

.method private ᓱ(Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ajw;->ใ(I)V

    .line 323
    return-void
.end method


# virtual methods
.method public Av()V
    .locals 1

    .line 277
    iget-object v0, p0, Lo/ajw;->bIa:Lo/ajt;

    invoke-virtual {v0}, Lo/ajt;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public hide()V
    .locals 6

    .line 259
    iget-boolean v0, p0, Lo/ajw;->ᘄ:Z

    if-eqz v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lo/ajw;->γ:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 264
    invoke-virtual {p0}, Lo/ajw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/alk;->ᖮ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object v0, p0, Lo/ajw;->bId:Lo/alv;

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 268
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 269
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 270
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lo/ajw;->bIb:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-direct {p0}, Lo/ajw;->Ar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lo/ajw;->At()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lo/ajw;->hide()V

    .line 151
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lo/ajw;->bHZ:Lo/ajw$if;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lo/ajw;->bHZ:Lo/ajw$if;

    invoke-direct {p0}, Lo/ajw;->Aw()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ajw$if;->ˋ(Ljava/util/ArrayList;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lo/ajw;->hide()V

    .line 158
    goto :goto_0

    .line 161
    :pswitch_2
    invoke-direct {p0}, Lo/ajw;->Ar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-direct {p0}, Lo/ajw;->At()V

    goto :goto_0

    .line 164
    :cond_2
    invoke-direct {p0}, Lo/ajw;->As()V

    .line 166
    .line 172
    :goto_0
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b010a
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 6

    .line 245
    iget-boolean v0, p0, Lo/ajw;->ᘄ:Z

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lo/ajw;->γ:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 250
    invoke-virtual {p0}, Lo/ajw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/alk;->ᵌ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v0, p0, Lo/ajw;->bIc:Lo/alv;

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 254
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 255
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 256
    return-void
.end method

.method public ˊ(Landroid/view/View;Ltv/periscope/android/api/PsUser;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lo/ajw;->bHQ:Ljava/util/Set;

    iget-object v1, p2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 292
    :goto_0
    invoke-direct {p0, v2, p2}, Lo/ajw;->ˋ(ZLtv/periscope/android/api/PsUser;)V

    .line 294
    iget v0, p0, Lo/ajw;->bHY:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alx;

    move-object v3, v0

    .line 295
    invoke-virtual {v3, v2}, Lo/alx;->setChecked(Z)V

    .line 296
    return-void
.end method

.method public ˊ(ZLtv/periscope/android/api/PsUser;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2}, Lo/ajw;->ˋ(ZLtv/periscope/android/api/PsUser;)V

    .line 301
    return-void
.end method

.method public ˋ(Lo/ajw$if;)Lo/ajw;
    .locals 0

    .line 221
    iput-object p1, p0, Lo/ajw;->bHZ:Lo/ajw$if;

    .line 222
    return-object p0
.end method

.method public ں(I)Lo/ajw;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/ajw;->bHR:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    return-object p0
.end method

.method public ܥ(I)Lo/ajw;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/ajw;->bHS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    return-object p0
.end method

.method public ধ(I)Lo/ajw;
    .locals 0

    .line 211
    iput p1, p0, Lo/ajw;->bHY:I

    .line 212
    return-object p0
.end method

.method public ร(I)Lo/ajw;
    .locals 0

    .line 216
    iput p1, p0, Lo/ajw;->bHX:I

    .line 217
    return-object p0
.end method
