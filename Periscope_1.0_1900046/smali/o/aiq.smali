.class public Lo/aiq;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aiq$1;
    }
.end annotation


# instance fields
.field private bGA:Landroid/widget/TextView;

.field private bGB:Landroid/widget/Button;

.field private bGC:Landroid/widget/ImageView;

.field private bGD:Landroid/widget/ImageView;

.field private bGE:I

.field private bGF:I

.field private bGG:I

.field private bGH:I

.field private bGI:Z

.field private bGJ:Z

.field private bGK:Z

.field private bGL:Landroid/text/TextWatcher;

.field private bGM:Landroid/text/TextWatcher;

.field private bGw:Landroid/widget/EditText;

.field private bGx:Landroid/widget/EditText;

.field private bGy:Landroid/widget/TextView;

.field private bGz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 221
    new-instance v0, Lo/ait;

    invoke-direct {v0, p0}, Lo/ait;-><init>(Lo/aiq;)V

    iput-object v0, p0, Lo/aiq;->bGL:Landroid/text/TextWatcher;

    .line 231
    new-instance v0, Lo/aiu;

    invoke-direct {v0, p0}, Lo/aiu;-><init>(Lo/aiq;)V

    iput-object v0, p0, Lo/aiq;->bGM:Landroid/text/TextWatcher;

    return-void
.end method

.method private zQ()V
    .locals 5

    .line 154
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v4

    .line 155
    invoke-virtual {p0}, Lo/aiq;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lo/aad;->vm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lo/aad;->vn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/vn;->ᐝ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    return-void
.end method

.method private zR()V
    .locals 2

    .line 160
    invoke-direct {p0}, Lo/aiq;->zS()Z

    .line 161
    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lo/aiq;->bGA:Landroid/widget/TextView;

    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aiq;->bGK:Z

    .line 165
    iget-object v0, p0, Lo/aiq;->bGA:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lo/aiq;->ˋ(Landroid/view/View;Landroid/view/View;)V

    .line 166
    invoke-direct {p0}, Lo/aiq;->zU()V

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiq;->bGK:Z

    .line 169
    iget-object v0, p0, Lo/aiq;->bGA:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lo/aiq;->ˎ(Landroid/view/View;Landroid/view/View;)V

    .line 170
    invoke-direct {p0}, Lo/aiq;->zU()V

    .line 172
    :goto_0
    invoke-direct {p0}, Lo/aiq;->zV()V

    .line 173
    return-void
.end method

.method private zS()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aiq;->bGI:Z

    .line 179
    invoke-direct {p0}, Lo/aiq;->zT()V

    .line 180
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    const v1, 0x7f060106

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lo/aiq;->ˋ(Landroid/view/View;Landroid/view/View;)V

    .line 182
    invoke-direct {p0}, Lo/aiq;->zV()V

    .line 183
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiq;->bGI:Z

    .line 186
    invoke-direct {p0}, Lo/aiq;->zV()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method private zT()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lo/aiq;->bGI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/aiq;->bGJ:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    iget v1, p0, Lo/aiq;->bGE:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lo/aiq;->bGC:Landroid/widget/ImageView;

    iget v1, p0, Lo/aiq;->bGF:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 194
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lo/aiq;->ˎ(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    iget v1, p0, Lo/aiq;->bGG:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lo/aiq;->bGC:Landroid/widget/ImageView;

    iget v1, p0, Lo/aiq;->bGG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 199
    :goto_0
    return-void
.end method

.method private zU()V
    .locals 2

    .line 202
    iget-boolean v0, p0, Lo/aiq;->bGK:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    iget v1, p0, Lo/aiq;->bGE:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lo/aiq;->bGD:Landroid/widget/ImageView;

    iget v1, p0, Lo/aiq;->bGF:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    iget v1, p0, Lo/aiq;->bGG:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 207
    iget-object v0, p0, Lo/aiq;->bGD:Landroid/widget/ImageView;

    iget v1, p0, Lo/aiq;->bGG:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 209
    :goto_0
    return-void
.end method

.method private zV()V
    .locals 3

    .line 212
    iget-boolean v0, p0, Lo/aiq;->bGI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/aiq;->bGJ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/aiq;->bGK:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 213
    :goto_0
    if-nez v2, :cond_1

    .line 214
    iget-object v0, p0, Lo/aiq;->bGB:Landroid/widget/Button;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lo/aiq;->bGB:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 218
    :goto_1
    iget-object v0, p0, Lo/aiq;->bGB:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    return-void
.end method

.method static synthetic ˊ(Lo/aiq;)Landroid/widget/TextView;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/aiq;->bGy:Landroid/widget/TextView;

    return-object v0
.end method

.method private ˋ(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lo/aiq;->bGH:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 326
    new-instance v0, Lo/aiv;

    invoke-direct {v0, p0, p1}, Lo/aiv;-><init>(Lo/aiq;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    new-instance v0, Lo/aiw;

    invoke-direct {v0, p0, p2}, Lo/aiw;-><init>(Lo/aiq;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    const-wide/16 v0, 0xb4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    return-void
.end method

.method static synthetic ˋ(Lo/aiq;)Z
    .locals 1

    .line 38
    invoke-direct {p0}, Lo/aiq;->zS()Z

    move-result v0

    return v0
.end method

.method private ˎ(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lo/aiq;->bGH:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 349
    new-instance v0, Lo/aix;

    invoke-direct {v0, p0, p1}, Lo/aix;-><init>(Lo/aiq;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    new-instance v0, Lo/aiy;

    invoke-direct {v0, p0, p1, p2}, Lo/aiy;-><init>(Lo/aiq;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    const-wide/16 v0, 0xb4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 366
    return-void
.end method

.method static synthetic ˎ(Lo/aiq;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/aiq;->zQ()V

    return-void
.end method

.method static synthetic ˏ(Lo/aiq;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/aiq;->zR()V

    return-void
.end method

.method static synthetic ᐝ(Lo/aiq;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/aiq;->zV()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 263
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 265
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 268
    :sswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lo/aiq;->setResult(I)V

    .line 269
    invoke-virtual {p0}, Lo/aiq;->finish()V

    .line 276
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x72c8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 257
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 258
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/aiq;->overridePendingTransition(II)V

    .line 259
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 243
    :sswitch_0
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v5

    .line 244
    invoke-virtual {p0}, Lo/aiq;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lo/aad;->vm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lo/aad;->vn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/vn;->ˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    goto :goto_0

    .line 249
    :sswitch_1
    invoke-virtual {p0}, Lo/aiq;->onBackPressed()V

    .line 253
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00bb -> :sswitch_0
        0x7f0b00bc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 64
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lo/aiq;->setContentView(I)V

    .line 68
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amt;

    move-object v3, v0

    .line 69
    const v0, 0x7f06006d

    invoke-virtual {v3, v0}, Lo/amt;->setTitle(I)V

    .line 70
    const v0, 0x7f0b00bc

    invoke-virtual {v3, v0}, Lo/amt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/amt;->setElevation(F)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lo/aiq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aiq;->bGE:I

    .line 76
    invoke-virtual {p0}, Lo/aiq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aiq;->bGG:I

    .line 78
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    .line 79
    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    iget-object v1, p0, Lo/aiq;->bGL:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aiq;->bGC:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aiq;->bGD:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aiq;->bGy:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lo/aiq;->bGy:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/aiq;->bGB:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lo/aiq;->bGB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lo/aiq;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_1

    .line 95
    const-string v0, "e_user"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v6, v0

    .line 96
    const-string v0, "e_suggested"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    iget-object v0, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    iget-object v1, v6, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v8, v0

    .line 101
    invoke-static {p0}, Lo/ᓲ;->ᐝ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v6}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    invoke-virtual {v0, v8}, Lo/ઽ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 107
    :cond_1
    iget-object v0, p0, Lo/aiq;->bGx:Landroid/widget/EditText;

    iget-object v1, p0, Lo/aiq;->bGM:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aiq;->bGA:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lo/aiq;->bGA:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Lo/aiq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/aiq;->bGF:I

    .line 118
    invoke-virtual {p0}, Lo/aiq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/aiq;->bGH:I

    .line 120
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lo/aiq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 121
    const/4 v0, 0x2

    new-array v6, v0, [Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lo/air;

    invoke-direct {v0, p0}, Lo/air;-><init>(Lo/aiq;)V

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 134
    new-instance v0, Lo/ais;

    invoke-direct {v0, p0}, Lo/ais;-><init>(Lo/aiq;)V

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 146
    const v0, 0x7f0600f6

    invoke-virtual {p0, v0}, Lo/aiq;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/aiq;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v5, v0, v1, v6}, Lo/akn;->ˊ(Landroid/widget/TextView;Ljava/lang/String;I[Landroid/view/View$OnClickListener;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiq;->bGJ:Z

    .line 151
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 5

    .line 279
    sget-object v0, Lo/aiq$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 281
    :sswitch_0
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/ym;

    move-object v2, v0

    .line 283
    invoke-direct {p0}, Lo/aiq;->zR()V

    .line 284
    iget-object v0, v2, Lo/ym;->bqj:[Lo/xo;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lo/ym;->bqj:[Lo/xo;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aiq;->bGJ:Z

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aiq;->bGJ:Z

    .line 289
    :goto_0
    invoke-direct {p0}, Lo/aiq;->zT()V

    .line 290
    invoke-direct {p0}, Lo/aiq;->zV()V

    .line 291
    goto/16 :goto_2

    .line 292
    :cond_2
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/yk;

    move-object v2, v0

    .line 294
    iget-object v0, v2, Lo/yk;->bqh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yk$if;

    move-object v4, v0

    .line 295
    iget-object v0, v4, Lo/yk$if;->bqi:Ljava/util/ArrayList;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aiq;->bGJ:Z

    .line 297
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    iget-object v1, v4, Lo/yk$if;->bpL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lo/aiq;->bGz:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aiq;->bGw:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lo/aiq;->ˋ(Landroid/view/View;Landroid/view/View;)V

    .line 299
    invoke-direct {p0}, Lo/aiq;->zT()V

    .line 300
    invoke-direct {p0}, Lo/aiq;->zV()V

    .line 302
    :cond_3
    goto :goto_1

    .line 303
    :cond_4
    goto :goto_2

    .line 308
    :sswitch_1
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lo/aja;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const/16 v0, 0x72c8

    invoke-virtual {p0, v2, v0}, Lo/aiq;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    invoke-virtual {p0}, Lo/aiq;->finish()V

    .line 312
    goto :goto_2

    .line 313
    :cond_5
    invoke-virtual {p1}, Lo/aai;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method
