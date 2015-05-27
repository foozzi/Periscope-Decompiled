.class public Lo/afq;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afq$1;,
        Lo/afq$ˋ;,
        Lo/afq$if;,
        Lo/afq$ˊ;
    }
.end annotation


# instance fields
.field private bCA:Landroid/widget/TextView;

.field private bCB:Lo/afq$if;

.field private bCC:Landroid/app/Dialog;

.field private bCD:Landroid/widget/TextView;

.field private bCE:Landroid/widget/TextView;

.field private bCF:Lo/alm;

.field private bCG:Landroid/view/View;

.field private bCv:Landroid/view/View;

.field private bCw:Landroid/widget/EditText;

.field private bCx:Lo/afq$ˊ;

.field private bCy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/view/View$OnFocusChangeListener;>;"
        }
    .end annotation
.end field

.field private bCz:Lo/afq$ˋ;

.field private κ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    .line 47
    invoke-direct {p0, p1}, Lo/afq;->ˊ(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    .line 52
    invoke-direct {p0, p1}, Lo/afq;->ˊ(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    .line 57
    invoke-direct {p0, p1}, Lo/afq;->ˊ(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private yS()V
    .locals 2

    .line 182
    sget-object v0, Lo/afq$ˊ;->bCP:Lo/afq$ˊ;

    iput-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    .line 183
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lo/afq;->yU()V

    .line 186
    iget-object v0, p0, Lo/afq;->bCv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lo/afq;->κ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    return-void
.end method

.method private yV()V
    .locals 1

    .line 222
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔊ(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lo/afq;->setCommentSendOrClose()V

    .line 225
    return-void
.end method

.method static synthetic ʻ(Lo/afq;)Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ˊ(Lo/afq;)Lo/afq$if;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCB:Lo/afq$if;

    return-object v0
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 7

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/afq;->κ:Landroid/view/View;

    .line 89
    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/afq;->bCv:Landroid/view/View;

    .line 91
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/afq;->bCG:Landroid/view/View;

    .line 92
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/afq;->bCF:Lo/alm;

    .line 95
    invoke-virtual {p0}, Lo/afq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 96
    iget-object v0, p0, Lo/afq;->bCF:Lo/alm;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lo/alm;->setCornerRadius([F)V

    .line 98
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    new-instance v1, Lo/afr;

    invoke-direct {v1, p0}, Lo/afr;-><init>(Lo/afq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lo/afq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/afs;

    invoke-direct {v1, p0}, Lo/afs;-><init>(Lo/afq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget-object v0, Lo/afq$ˊ;->bCP:Lo/afq$ˊ;

    iput-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    .line 145
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    new-instance v5, Lo/aft;

    invoke-direct {v5, p0}, Lo/aft;-><init>(Lo/afq;)V

    .line 154
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    invoke-virtual {p0}, Lo/afq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 158
    const v0, 0x7f0b0033

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/afq;->bCD:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0b00b1

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/afq;->bCE:Landroid/widget/TextView;

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lo/afq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lo/afq;->bCC:Landroid/app/Dialog;

    .line 163
    return-void
.end method

.method static synthetic ˊ(Lo/afq;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/afq;->ﺑ(II)V

    return-void
.end method

.method static synthetic ˋ(Lo/afq;)Lo/afq$ˊ;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    return-object v0
.end method

.method static synthetic ˎ(Lo/afq;)Landroid/widget/EditText;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ˏ(Lo/afq;)Lo/afq$ˋ;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCz:Lo/afq$ˋ;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/afq;)Landroid/widget/TextView;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    return-object v0
.end method

.method private ﺑ(II)V
    .locals 1

    .line 276
    iget-object v0, p0, Lo/afq;->bCD:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v0, p0, Lo/afq;->bCE:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iget-object v0, p0, Lo/afq;->bCC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 279
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 68
    :sswitch_0
    if-eqz p2, :cond_0

    .line 69
    invoke-direct {p0}, Lo/afq;->yV()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lo/afq;->yS()V

    .line 76
    :goto_0
    iget-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 77
    iget-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 76
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 79
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00ac -> :sswitch_0
    .end sparse-switch
.end method

.method public setChatState(Lo/afq$if;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lo/afq;->bCB:Lo/afq$if;

    if-eq v0, p1, :cond_0

    .line 229
    iput-object p1, p0, Lo/afq;->bCB:Lo/afq$if;

    .line 231
    sget-object v0, Lo/afq$1;->bCI:[I

    invoke-virtual {p1}, Lo/afq$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const v1, 0x7f06006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCommentSendOrClose()V
    .locals 2

    .line 166
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    sget-object v0, Lo/afq$ˊ;->bCR:Lo/afq$ˊ;

    iput-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    .line 168
    iget-object v0, p0, Lo/afq;->κ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lo/afq;->bCv:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lo/afq$ˊ;->bCQ:Lo/afq$ˊ;

    iput-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    .line 172
    iget-object v0, p0, Lo/afq;->κ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lo/afq;->bCv:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_0
    return-void
.end method

.method public setParticipantInfo(Ljava/lang/String;I)V
    .locals 2

    .line 282
    iget-object v0, p0, Lo/afq;->bCF:Lo/alm;

    invoke-virtual {p0}, Lo/afq;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lo/akl;->ˋ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/alm;->setColorFilter(I)V

    .line 284
    invoke-virtual {p0}, Lo/afq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ઽ;->ز()Lo/ڏ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Lo/afq;->bCF:Lo/alm;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 289
    return-void
.end method

.method public setSendCommentDelegate(Lo/afq$ˋ;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/afq;->bCz:Lo/afq$ˋ;

    .line 83
    return-void
.end method

.method public yR()V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 179
    return-void
.end method

.method yT()V
    .locals 8

    .line 191
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 192
    iget-object v0, p0, Lo/afq;->bCG:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 193
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    new-instance v0, Lo/afu;

    invoke-direct {v0, p0}, Lo/afu;-><init>(Lo/afq;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method yU()V
    .locals 8

    .line 207
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 208
    iget-object v0, p0, Lo/afq;->bCG:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 209
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 211
    new-instance v0, Lo/afv;

    invoke-direct {v0, p0}, Lo/afv;-><init>(Lo/afq;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 219
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public yW()V
    .locals 1

    .line 253
    iget-object v0, p0, Lo/afq;->bCC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lo/afq;->bCC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    :cond_0
    return-void
.end method

.method public yX()V
    .locals 2

    .line 259
    invoke-direct {p0}, Lo/afq;->yS()V

    .line 260
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public yY()V
    .locals 2

    .line 264
    iget-object v0, p0, Lo/afq;->bCA:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    return-void
.end method

.method public yZ()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lo/afq;->bCx:Lo/afq$ˊ;

    sget-object v1, Lo/afq$ˊ;->bCP:Lo/afq$ˊ;

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lo/afq;->bCw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lo/afq;->bCy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method
