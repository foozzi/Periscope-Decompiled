.class public Ltv/periscope/android/ui/broadcast/ViewerActivity;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lo/aek$if;
.implements Lo/aek$ˊ;
.implements Lo/afn;
.implements Lo/afo;
.implements Lo/afq$ˋ;
.implements Lo/agd;
.implements Lo/agq$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/periscope/android/ui/broadcast/ViewerActivity$1;,
        Ltv/periscope/android/ui/broadcast/ViewerActivity$if;,
        Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;
    }
.end annotation


# instance fields
.field private bAG:I

.field private bAS:Lo/abr;

.field private bAT:Z

.field private bBA:Lo/adj;

.field private bBB:Lo/aju;

.field private bBD:Landroid/view/View;

.field private bBJ:Ljava/lang/String;

.field private bBK:Lo/ads;

.field private final bBN:Ljava/lang/Runnable;

.field private bBg:Lo/ajw;

.field private bBi:Lo/agq;

.field private bBj:Z

.field private bBo:Lo/ahe;

.field private bBp:Lo/ahb;

.field private final bBq:Ljava/lang/Runnable;

.field private bBu:Lo/aei;

.field private bBw:Lo/adx;

.field private bBx:Lo/aej;

.field private bCX:Landroid/view/View;

.field private bCY:Landroid/widget/ImageView;

.field private bCZ:Landroid/widget/TextView;

.field private bDa:Lo/amd;

.field private bDb:Landroid/widget/TextView;

.field private bDc:Lo/xh;

.field private bDd:Landroid/widget/ImageView;

.field private bDe:Landroid/view/TextureView;

.field private bDf:Landroid/widget/TextView;

.field private bDg:Lo/afq;

.field private bDh:Lo/ady;

.field private bDi:Lo/aek;

.field private bDj:Lo/vm;

.field private bDk:Lo/amo;

.field private bDl:Lo/abt;

.field private bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

.field private bDn:Z

.field private bDo:Z

.field private bDp:Z

.field private bDq:I

.field private bDr:I

.field private bDs:Z

.field private bDt:Z

.field private bDu:Ljava/lang/Runnable;

.field private bnA:Lo/aad;

.field private bnB:Lo/zp;

.field private bsE:Ltv/periscope/android/api/PsUser;

.field private bwV:Ljava/lang/String;

.field private bxD:Lo/yz;

.field private byD:Lo/alo;

.field private byT:Lo/adw;

.field private final mHandler:Landroid/os/Handler;

.field private ᔄ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 138
    new-instance v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Lo/agg;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBq:Ljava/lang/Runnable;

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lo/yz;->ᑉ(Z)Lo/yz;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAT:Z

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lo/agg;

    invoke-direct {v0, p0}, Lo/agg;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBN:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lo/agh;

    invoke-direct {v0, p0}, Lo/agh;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDu:Ljava/lang/Runnable;

    .line 521
    return-void
.end method

.method private yt()V
    .locals 2

    .line 371
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/adw;->setSystemUiVisibility(I)V

    .line 372
    return-void
.end method

.method private yu()V
    .locals 2

    .line 375
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/adw;->setSystemUiVisibility(I)V

    .line 376
    return-void
.end method

.method private yz()Ljava/lang/String;
    .locals 2

    .line 536
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAT:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    invoke-virtual {v0}, Lo/abr;->wz()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 539
    :cond_0
    const-string v1, ""

    .line 541
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    invoke-virtual {v0}, Lo/abr;->wA()V

    .line 542
    return-object v1
.end method

.method private za()V
    .locals 4

    .line 224
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    .line 225
    invoke-static {}, Lo/vf;->tL()Lo/zp;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    .line 226
    new-instance v0, Lo/abr;

    invoke-direct {v0}, Lo/abr;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    .line 227
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    invoke-static {v0}, Lo/akk;->ˊ(Lo/abs;)V

    .line 228
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/adw;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    .line 229
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 230
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    new-instance v1, Lo/vj;

    sget-object v2, Lo/vi$if;->bmd:Lo/vi$if;

    sget-object v3, Lo/vi$if;->bme:Lo/vi$if;

    invoke-direct {v1, v2, v3}, Lo/vj;-><init>(Lo/vi$if;Lo/vi$if;)V

    invoke-virtual {v0, v1}, Lo/adw;->setDragRecorder(Lo/vj;)V

    .line 232
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    new-instance v1, Lo/agi;

    invoke-direct {v1, p0}, Lo/agi;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    invoke-virtual {v0, v1}, Lo/adw;->setOnViewDragListener(Lo/adw$ˋ;)V

    .line 288
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    new-instance v1, Lo/agj;

    invoke-direct {v1, p0}, Lo/agj;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    invoke-virtual {v0, v1}, Lo/adw;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 302
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    .line 303
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDf:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/afq;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    .line 308
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0, p0}, Lo/afq;->setSendCommentDelegate(Lo/afq$ˋ;)V

    .line 309
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v0, 0x7f0b0117

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCX:Landroid/view/View;

    .line 312
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCX:Landroid/view/View;

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCZ:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0b0112

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amd;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDa:Lo/amd;

    .line 315
    const v0, 0x7f0b0113

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDb:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDe:Landroid/view/TextureView;

    .line 317
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byD:Lo/alo;

    .line 319
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ahe;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    .line 320
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ahb;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    .line 322
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/aei;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    .line 323
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, p0}, Lo/aei;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    .line 326
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    .line 329
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amo;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    .line 330
    return-void
.end method

.method private zb()V
    .locals 3

    .line 333
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lo/agk;

    invoke-direct {v1, p0}, Lo/agk;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 342
    return-void
.end method

.method private zc()V
    .locals 3

    .line 389
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$1;->bDw:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 392
    :sswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0}, Lo/ahb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    .line 393
    const/4 v0, 0x0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 394
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, v2}, Lo/ahb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    goto :goto_0

    .line 398
    :sswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0}, Lo/ahb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    .line 399
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 400
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, v2}, Lo/ahb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 404
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private zd()V
    .locals 12

    .line 407
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0, p0}, Lo/afq;->ˊ(Landroid/view/View$OnFocusChangeListener;)V

    .line 409
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/afq;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    sget-object v1, Lo/afq$if;->bCK:Lo/afq$if;

    invoke-virtual {v0, v1}, Lo/afq;->setChatState(Lo/afq$if;)V

    .line 414
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zc()V

    .line 417
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->xa()Lo/ot;

    move-result-object v8

    .line 418
    new-instance v0, Lo/agq;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, p0, v1}, Lo/agq;-><init>(Lo/ot;Lo/agq$if;Ljava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBi:Lo/agq;

    .line 419
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBi:Lo/agq;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/agq;->Ⅰ(Z)V

    .line 421
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_2

    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 423
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDe:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v0}, Lo/aad;->vz()Ltv/periscope/android/api/PsUser;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    .line 430
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zs()V

    .line 432
    new-instance v0, Lo/agl;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byD:Lo/alo;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lo/agl;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    .line 440
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byD:Lo/alo;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 442
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ajw;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    .line 443
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Lo/ajw;->ں(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Lo/ajw;->ܥ(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0b010f

    invoke-virtual {v0, v1}, Lo/ajw;->ধ(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Lo/ajw;->ร(I)Lo/ajw;

    .line 447
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v9

    .line 448
    new-instance v0, Lo/ajv;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    invoke-direct {v0, v9, v1}, Lo/ajv;-><init>(Lo/vn;Lo/ajw;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    .line 451
    new-instance v0, Lo/ads;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const v2, 0x7f0b009d

    invoke-virtual {p0, v2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/alf;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-direct {v0, v1, v2, v3}, Lo/ads;-><init>(Lo/adw;Lo/alf;Lo/amw;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    .line 454
    new-instance v0, Lo/adz;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "e_saved"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    move-object v1, p0

    move-object v2, v9

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lo/adz;-><init>(Landroid/app/Activity;Lo/vn;Lo/alg;Lo/amw;Lo/agd;Lo/afo;Z)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    .line 456
    new-instance v0, Lo/aej;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/aej;-><init>(Landroid/content/Context;Lo/aad;Lo/zp;Lo/ady;Ljava/lang/String;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    .line 458
    new-instance v0, Lo/adx;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    invoke-direct {v0, p0, v1, v2}, Lo/adx;-><init>(Landroid/content/Context;Lo/aej;Lo/ady;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    .line 461
    new-instance v10, Lo/agp;

    invoke-direct {v10, p0, p0}, Lo/agp;-><init>(Landroid/content/Context;Lo/afn;)V

    .line 462
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, v10}, Lo/ahb;->setChatAdapter(Lo/agp;)V

    .line 464
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_3

    .line 465
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    :cond_3
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$1;->bDw:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 470
    :sswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lo/vn;->ᵉ(Ljava/lang/String;)V

    .line 471
    goto :goto_3

    .line 474
    :goto_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v11

    .line 475
    if-nez v11, :cond_4

    .line 478
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lo/vn;->ᴬ(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 480
    :cond_4
    invoke-direct {p0, v11}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˏ(Lo/xh;)V

    .line 481
    iget-boolean v0, v11, Lo/xh;->boT:Z

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    :cond_5
    iget-object v0, v11, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lo/vn;->ᴬ(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    :cond_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_8

    .line 485
    :cond_7
    iget-object v0, v11, Lo/xh;->nD:Ljava/lang/String;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lo/vn;->ˮ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    :cond_8
    :goto_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/amo;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˤ(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-virtual {v8, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    invoke-virtual {v8, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    invoke-virtual {v8, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 499
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method private ze()V
    .locals 1

    .line 550
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 551
    return-void
.end method

.method private zg()V
    .locals 3

    .line 686
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    if-nez v0, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v2, v0

    .line 692
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʻ(Lo/xh;)Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 694
    return-void
.end method

.method private zh()V
    .locals 2

    .line 734
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v1, v0

    .line 736
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 737
    return-void
.end method

.method private zi()V
    .locals 4

    .line 1008
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v0, Lo/vm;->type:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "StreamTypeLowLatency"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "StreamTypeTooFull"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "StreamTypeOnlyFriends"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1010
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "PubNub State Changed: Connected"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    sget-object v1, Lo/afq$if;->bCL:Lo/afq$if;

    invoke-virtual {v0, v1}, Lo/afq;->setChatState(Lo/afq$if;)V

    .line 1012
    goto :goto_1

    .line 1015
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "PubNub State Changed: Too Full"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    sget-object v1, Lo/afq$if;->bCM:Lo/afq$if;

    invoke-virtual {v0, v1}, Lo/afq;->setChatState(Lo/afq$if;)V

    .line 1017
    goto :goto_1

    .line 1020
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "PubNub State Changed: Friends Only"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    sget-object v1, Lo/afq$if;->bCN:Lo/afq$if;

    invoke-virtual {v0, v1}, Lo/afq;->setChatState(Lo/afq$if;)V

    .line 1025
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30680a5c -> :sswitch_0
        0x39f200ef -> :sswitch_2
        0x6e65c9a9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private zj()V
    .locals 4

    .line 1088
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDs:Z

    if-eqz v0, :cond_0

    .line 1089
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    if-nez v0, :cond_1

    .line 1092
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 1093
    return-void

    .line 1095
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDs:Z

    .line 1096
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xR()V

    .line 1098
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnr:Lo/xh;

    iget-object v1, v1, Lo/xh;->id:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/vn;->ۥ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1100
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    if-nez v0, :cond_3

    .line 1101
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zf()V

    .line 1103
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    invoke-interface {v0}, Lo/abt;->prepare()V

    .line 1104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Lo/acu;Ljava/lang/Boolean;)V

    .line 1105
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnm:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/yz;->ˎ(Ljava/lang/String;J)V

    .line 1106
    return-void
.end method

.method private zk()V
    .locals 10

    .line 1348
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDp:Z

    if-eqz v0, :cond_0

    .line 1349
    return-void

    .line 1351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDp:Z

    .line 1352
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1353
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zw()V

    .line 1355
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnn:Ljava/lang/String;

    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->yz()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    iget v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᔄ:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Lo/vn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIF)Ljava/lang/String;

    .line 1357
    const/4 v0, 0x0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    .line 1358
    const/4 v0, 0x0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    .line 1359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᔄ:J

    .line 1361
    :cond_1
    return-void
.end method

.method private zl()V
    .locals 3

    .line 1364
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    .line 1365
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0}, Lo/ahb;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    .line 1368
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1369
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, v2}, Lo/ahb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 1371
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zs()V

    .line 1373
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zf()V

    .line 1374
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᴬ(Ljava/lang/String;)Ljava/lang/String;

    .line 1375
    return-void
.end method

.method private zp()V
    .locals 1

    .line 1470
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ya()V

    .line 1473
    :cond_0
    return-void
.end method

.method private zq()V
    .locals 3

    .line 1476
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDe:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1477
    if-nez v2, :cond_0

    .line 1479
    return-void

    .line 1481
    :cond_0
    new-instance v0, Lo/ago;

    invoke-direct {v0, p0}, Lo/ago;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    const/16 v1, 0x19

    invoke-static {p0, v2, v1, v0}, Lo/akh;->ˊ(Landroid/content/Context;Landroid/graphics/Bitmap;ILo/akh$ˊ;)V

    .line 1490
    return-void
.end method

.method private zr()Z
    .locals 2

    .line 1493
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    if-eqz v0, :cond_0

    const-string v0, "StreamTypeLowLatency"

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private zs()V
    .locals 6

    .line 1497
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->release()V

    .line 1500
    :cond_0
    new-instance v0, Lo/aek;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDe:Landroid/view/TextureView;

    move-object v1, p0

    move-object v4, p0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/aek;-><init>(Landroid/content/Context;Ltv/periscope/android/api/PsUser;Landroid/view/TextureView;Lo/aek$if;Z)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    .line 1501
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/aek;->ᓫ(Z)V

    .line 1502
    return-void
.end method

.method private zt()V
    .locals 5

    .line 1505
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1506
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    if-eqz v0, :cond_3

    .line 1507
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    goto/16 :goto_0

    .line 1509
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 1512
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zj()V

    goto/16 :goto_0

    .line 1513
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-eqz v0, :cond_6

    .line 1514
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    goto/16 :goto_0

    .line 1517
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1518
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    goto/16 :goto_0

    .line 1522
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_5

    .line 1523
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->yZ()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1525
    iget v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    .line 1526
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-static {v1, v2}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahe;->Ѓ(I)V

    .line 1527
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zu()V

    .line 1528
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zr()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1529
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v3}, Lo/aek;->xT()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigInteger;)Lo/ant;

    move-result-object v4

    .line 1530
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send heart (live) #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bns:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 1532
    goto :goto_0

    .line 1536
    :cond_5
    iget v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    .line 1537
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahe;->Ѓ(I)V

    .line 1539
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zu()V

    .line 1542
    :cond_6
    :goto_0
    return-void
.end method

.method private zu()V
    .locals 5

    .line 1545
    const-string v0, "ViewerActivity"

    const-string v1, "Storing our own heart"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1547
    return-void
.end method

.method private zv()F
    .locals 4

    .line 1550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᔄ:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private zw()V
    .locals 4

    .line 1569
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1570
    const-string v0, "n_hearts"

    iget v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string v0, "n_chats"

    iget v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    sget-object v0, Lo/vi$if;->bmk:Lo/vi$if;

    invoke-static {v0, v2}, Lo/vi;->ˊ(Lo/vi$if;Ljava/util/HashMap;)V

    .line 1575
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1576
    const-string v0, "is_active"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const-string v0, "watched_length"

    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zv()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    sget-object v0, Lo/vi$if;->bmJ:Lo/vi$if;

    invoke-static {v0, v3}, Lo/vi;->ˊ(Lo/vi$if;Ljava/util/HashMap;)V

    .line 1579
    return-void
.end method

.method public static synthetic ʹ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/afq;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    return-object v0
.end method

.method private ʻ(Lo/xh;)Landroid/app/Notification;
    .locals 7

    .line 698
    iget-object v4, p1, Lo/xh;->id:Ljava/lang/String;

    .line 699
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "e_b_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_p_mode"

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 703
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 706
    new-instance v0, Lo/ⁱ$ˎ;

    invoke-direct {v0, p0}, Lo/ⁱ$ˎ;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ͺ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ʾ(I)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lo/xh;->boE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0600b2

    invoke-virtual {p0, v2, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˋ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    iget-object v1, p1, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˎ(Ljava/lang/CharSequence;)Lo/ⁱ$ˎ;

    move-result-object v0

    new-instance v1, Lo/ⁱ$ˋ;

    invoke-direct {v1}, Lo/ⁱ$ˋ;-><init>()V

    iget-object v2, p1, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/ⁱ$ˋ;->ˊ(Ljava/lang/CharSequence;)Lo/ⁱ$ˋ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0, v6}, Lo/ⁱ$ˎ;->ˊ(Landroid/app/PendingIntent;)Lo/ⁱ$ˎ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ⁱ$ˎ;->ˋ(Z)Lo/ⁱ$ˎ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ⁱ$ˎ;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ʻ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ahb;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    return-object v0
.end method

.method private ʼ(Landroid/content/Intent;)V
    .locals 2

    .line 352
    new-instance v0, Lo/acp;

    invoke-direct {v0, p0}, Lo/acp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lo/acp;->ʻ(Landroid/content/Intent;)V

    .line 353
    const-string v0, "e_b_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "e_b_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    .line 355
    const-string v0, "e_p_mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 356
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-nez v0, :cond_0

    .line 357
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 359
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zd()V

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lo/vi$if;->bnc:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 362
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʽ(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v1}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-static {p0}, Lo/vn;->ᵋ(Landroid/content/Context;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/vn;->ᵊ(Ljava/lang/String;)V

    .line 367
    :cond_2
    :goto_0
    const-string v0, "e_saved_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBJ:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public static synthetic ʼ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->yt()V

    return-void
.end method

.method private ʽ(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .line 380
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 382
    const-string v0, "w"

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 385
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic ʽ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    return-object v0
.end method

.method public static synthetic ʾ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vn;
    .locals 1

    .line 100
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ʿ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    return v0
.end method

.method private ˇ(F)V
    .locals 4

    .line 1554
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1555
    const-string v0, "n_hearts"

    iget v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    sget-object v0, Lo/vi$if;->bml:Lo/vi$if;

    invoke-static {v0, v2}, Lo/vi;->ˊ(Lo/vi$if;Ljava/util/HashMap;)V

    .line 1558
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1559
    const-string v0, "is_active"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const-string v0, "watched_length"

    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zv()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v0, Lo/vi$if;->bmJ:Lo/vi$if;

    invoke-static {v0, v3}, Lo/vi;->ˊ(Lo/vi$if;Ljava/util/HashMap;)V

    .line 1563
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1564
    sget-object v0, Lo/vi$if;->bmr:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1566
    :cond_0
    return-void
.end method

.method public static synthetic ˈ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vm;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    return-object v0
.end method

.method public static synthetic ˉ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/yz;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    return-object v0
.end method

.method private ˊ(Lo/acu;Ljava/lang/Boolean;)V
    .locals 15

    .line 945
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    if-nez v0, :cond_0

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    .line 947
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnj:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bni:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lo/yz;->ʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Joining channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 949
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnk:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v5}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v6}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v7}, Lo/aad;->vp()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v8}, Lo/aad;->vu()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v9}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget v10, v10, Lo/vm;->bnl:I

    iget-object v11, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    iget-object v12, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v12, v12, Lo/vm;->Rp:Ljava/lang/String;

    iget-object v13, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v13, v13, Lo/vm;->key:[B

    iget-object v14, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v14, v14, Lo/vm;->bnw:Ljava/lang/String;

    invoke-virtual/range {v0 .. v14}, Lo/yz;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/acu;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 955
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnr:Lo/xh;

    iget-object v2, v2, Lo/xh;->id:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v3, v3, Lo/vm;->bnr:Lo/xh;

    iget-object v3, v3, Lo/xh;->nD:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lo/abt;->ʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_0
    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->yu()V

    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->৳(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;ZLjava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(ZLjava/lang/String;)V

    return-void
.end method

.method private ˊ(ZLjava/lang/String;)V
    .locals 2

    .line 1416
    if-eqz p1, :cond_1

    .line 1417
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCX:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDa:Lo/amd;

    invoke-virtual {v0}, Lo/amd;->show()V

    .line 1419
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDb:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    invoke-static {p2}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDb:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1423
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDa:Lo/amd;

    const v1, 0x7f06009c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/amd;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDa:Lo/amd;

    invoke-virtual {v0}, Lo/amd;->hide()V

    .line 1427
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDb:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    :goto_0
    return-void
.end method

.method public static synthetic ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDt:Z

    return p1
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    return-object v0
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ฯ(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    return-void
.end method

.method public static synthetic ˌ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zb()V

    return-void
.end method

.method public static synthetic ˍ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zp()V

    return-void
.end method

.method public static synthetic ˎ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aei;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    return-object v0
.end method

.method public static synthetic ˏ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    return-object v0
.end method

.method private ˏ(Lo/xh;)V
    .locals 4

    .line 566
    if-nez p1, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    .line 570
    invoke-virtual {p1}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lo/xh;->boT:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵤ(Z)V

    .line 571
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p1, Lo/xh;->boT:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 574
    invoke-static {p0}, Lo/ᓲ;->ᐝ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, p1, Lo/xh;->boQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ઽ;->ץ()Lo/ڏ;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lo/ᘇ;

    new-instance v2, Lo/abc;

    invoke-direct {v2, p0}, Lo/abc;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ([Lo/ᘇ;)Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 581
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->xL()V

    .line 582
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0, v1}, Lo/aei;->setAdapter(Lo/adx;)V

    .line 583
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    iget-object v1, p1, Lo/xh;->YW:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/xh;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/aei;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v0, v1, :cond_4

    .line 585
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐝ(Lo/xh;)V

    .line 587
    :cond_4
    return-void
.end method

.method public static synthetic ˑ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zj()V

    return-void
.end method

.method public static synthetic ͺ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/xh;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    return-object v0
.end method

.method static synthetic ՙ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDp:Z

    return v0
.end method

.method static synthetic י(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->yz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ـ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/adw;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    return-object v0
.end method

.method static synthetic ٴ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vn;
    .locals 1

    .line 100
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method private ৳(Ljava/lang/String;)V
    .locals 2

    .line 1243
    sget-object v0, Lo/vi$if;->bmT:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1244
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    new-instance v1, Lo/agn;

    invoke-direct {v1, p0, p1}, Lo/agn;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/aju;->ˊ(Lo/ajw$if;)V

    .line 1250
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    invoke-interface {v0}, Lo/aju;->show()V

    .line 1251
    return-void
.end method

.method private ฯ(Ljava/lang/String;)V
    .locals 1

    .line 1254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1255
    return-void
.end method

.method public static synthetic ᐝ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ahe;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    return-object v0
.end method

.method private ᐝ(Lo/xh;)V
    .locals 3

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 600
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCX:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCZ:Landroid/widget/TextView;

    invoke-virtual {p1}, Lo/xh;->uf()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lo/akn;->ˊ(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCZ:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lo/akn;->ˊ(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :goto_0
    return-void
.end method

.method public static synthetic ᐧ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ads;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    return-object v0
.end method

.method public static synthetic ᐨ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/Runnable;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBN:Ljava/lang/Runnable;

    return-object v0
.end method

.method private ᕝ(Z)V
    .locals 1

    .line 546
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    invoke-virtual {v0, p1}, Lo/abr;->ᒾ(Z)V

    .line 547
    return-void
.end method

.method private ᵘ(Z)V
    .locals 2

    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0}, Lo/aei;->xI()V

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0}, Lo/aei;->xH()V

    .line 562
    :goto_0
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDn:Z

    .line 563
    return-void
.end method

.method private ᵤ(Z)V
    .locals 2

    .line 590
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, p1}, Lo/aei;->setActionButtonVisibility(Z)V

    .line 591
    if-eqz p1, :cond_0

    .line 592
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bCY:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    :goto_0
    return-void
.end method

.method public static synthetic ι(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    return-object v0
.end method

.method private ⁿ(Z)V
    .locals 1

    .line 1412
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(ZLjava/lang/String;)V

    .line 1413
    return-void
.end method

.method public static synthetic ﹳ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/os/Handler;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;
    .locals 1

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 787
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-virtual {v0}, Lo/adj;->wY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->hide()V

    .line 792
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    invoke-virtual {v0}, Lo/ads;->xf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    invoke-virtual {v0}, Lo/ads;->xe()V

    goto :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 799
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    goto :goto_0

    .line 801
    :cond_3
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 802
    const v0, 0x7f04000a

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->overridePendingTransition(II)V

    .line 804
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 614
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zt()V

    .line 615
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 1051
    :sswitch_0
    sget-object v0, Lo/vi$if;->bmc:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1052
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zn()V

    .line 1053
    goto :goto_0

    .line 1056
    :sswitch_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->onBackPressed()V

    .line 1057
    goto :goto_0

    .line 1060
    :sswitch_2
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zt()V

    .line 1061
    goto :goto_0

    .line 1065
    :sswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    if-eqz v0, :cond_2

    .line 1066
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ze()V

    .line 1067
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    sget-object v0, Lo/vi$if;->bmn:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1069
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    sget-object v0, Lo/vi$if;->bmo:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1072
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xY()V

    .line 1073
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zn()V

    goto :goto_0

    .line 1075
    :cond_1
    sget-object v0, Lo/vi$if;->bmn:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1076
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zj()V

    .line 1082
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0060 -> :sswitch_3
        0x7f0b0099 -> :sswitch_0
        0x7f0b00f1 -> :sswitch_1
        0x7f0b0111 -> :sswitch_2
        0x7f0b0116 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 212
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->setContentView(I)V

    .line 215
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 217
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->za()V

    .line 219
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 220
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʼ(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 741
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->xa()Lo/ot;

    move-result-object v2

    .line 744
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBA:Lo/adj;

    invoke-virtual {v2, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 747
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    invoke-virtual {v2, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 750
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBB:Lo/aju;

    invoke-virtual {v2, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 754
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_3

    .line 755
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->release()V

    .line 757
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    if-eqz v0, :cond_4

    .line 758
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    invoke-interface {v0}, Lo/abt;->kill()V

    .line 760
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    invoke-virtual {v0}, Lo/yz;->kill()V

    .line 761
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBi:Lo/agq;

    if-eqz v0, :cond_5

    .line 762
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBi:Lo/agq;

    invoke-virtual {v0}, Lo/agq;->kill()V

    .line 764
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    if-eqz v0, :cond_6

    .line 765
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    invoke-virtual {v0}, Lo/amo;->reset()V

    .line 767
    :cond_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    if-eqz v0, :cond_8

    .line 768
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->xq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bq;

    move-object v4, v0

    .line 769
    invoke-virtual {v4}, Lo/bq;->onDestroy()V

    .line 770
    goto :goto_0

    .line 771
    :cond_7
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->xq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 774
    :cond_8
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBJ:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDh:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-nez v0, :cond_9

    .line 776
    const-string v0, "ViewerActivity"

    const-string v1, "Video was not saved to camera, deleting"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBJ:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 781
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Lo/akk;->ˊ(Lo/abs;)V

    .line 782
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 783
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 11

    .line 808
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$1;->bnK:[I

    iget-object v1, p1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 810
    :pswitch_0
    goto/16 :goto_2

    .line 813
    :pswitch_1
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 814
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vm;

    move-object v6, v0

    .line 815
    iget-object v0, v6, Lo/vm;->bnr:Lo/xh;

    iget-object v0, v0, Lo/xh;->id:Ljava/lang/String;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 816
    iput-object v6, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    .line 817
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-boolean v0, v0, Lo/vm;->bnu:Z

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAT:Z

    .line 818
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "accessChannel succeeded"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˏ(Lo/xh;)V

    .line 822
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget v0, v0, Lo/vm;->bnl:I

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    .line 825
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    invoke-virtual {v0, v1}, Lo/aek;->ˊ(Lo/vm;)Z

    move-result v7

    .line 826
    if-nez v7, :cond_1

    .line 827
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnr:Lo/xh;

    invoke-virtual {v0}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnr:Lo/xh;

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "Switching to replay mode."

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 836
    const-string v0, "ViewerActivity"

    const-string v1, "Switching to replay mode."

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 838
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnr:Lo/xh;

    iget-object v1, v1, Lo/xh;->nD:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/vn;->ˮ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/afq;->setVisibility(I)V

    .line 840
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zc()V

    .line 841
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zf()V

    .line 842
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 843
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Lo/acu;Ljava/lang/Boolean;)V

    .line 845
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zj()V

    .line 846
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xY()V

    .line 847
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zn()V

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_3

    .line 849
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zf()V

    .line 850
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnr:Lo/xh;

    iget-object v1, v1, Lo/xh;->nD:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/vn;->ˮ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 852
    :cond_3
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zf()V

    .line 855
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnr:Lo/xh;

    invoke-virtual {v0}, Lo/xh;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnr:Lo/xh;

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-nez v0, :cond_4

    .line 856
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->yx()V

    .line 857
    return-void

    .line 860
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-static {v0}, Lo/ze;->ˊ(Lo/aad;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 861
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 862
    const-string v0, "pref_force_hls"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 863
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    const-string v1, "StreamTypeTooFull"

    iput-object v1, v0, Lo/vm;->type:Ljava/lang/String;

    .line 867
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-virtual {v0, v1, v2}, Lo/afq;->setParticipantInfo(Ljava/lang/String;I)V

    .line 868
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zi()V

    .line 870
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnt:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 871
    new-instance v8, Lo/acr;

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnt:Ljava/lang/String;

    invoke-direct {v8, v0}, Lo/acr;-><init>(Ljava/lang/String;)V

    .line 872
    new-instance v9, Lo/acu;

    const-string v0, "SHA256withECDSA"

    const-string v1, "SC"

    invoke-direct {v9, v8, v0, v1}, Lo/acu;-><init>(Lo/acs;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v10, v0, Lo/vm;->bnv:Ljava/lang/Boolean;

    .line 874
    invoke-direct {p0, v9, v10}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Lo/acu;Ljava/lang/Boolean;)V

    .line 875
    goto/16 :goto_2

    .line 878
    :cond_6
    goto/16 :goto_2

    .line 881
    :cond_7
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 882
    const-string v0, "ViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-static {v0, v1, v2}, Lo/akk;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 884
    iget-object v0, p1, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 885
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->finish()V

    .line 887
    goto/16 :goto_2

    .line 890
    :pswitch_2
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᕝ(Z)V

    .line 891
    goto/16 :goto_2

    .line 894
    :pswitch_3
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᕝ(Z)V

    .line 895
    goto/16 :goto_2

    .line 898
    :pswitch_4
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_8

    .line 899
    goto/16 :goto_2

    .line 901
    :cond_8
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vx;

    move-object v6, v0

    .line 902
    iget-object v0, v6, Lo/vx;->bnr:Lo/xh;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐝ(Lo/xh;)V

    .line 904
    new-instance v7, Lo/aeh$ᐝ;

    iget-object v0, v6, Lo/vx;->bnW:Lo/xi;

    iget-wide v0, v0, Lo/xi;->bpk:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    iget-object v0, v6, Lo/vx;->bnW:Lo/xi;

    iget-wide v0, v0, Lo/xi;->bpm:J

    iget-object v2, v6, Lo/vx;->bnW:Lo/xi;

    iget-wide v2, v2, Lo/xi;->bpk:J

    div-long/2addr v0, v2

    goto :goto_1

    :cond_9
    const-wide/16 v0, 0x0

    :goto_1
    iget-object v2, v6, Lo/vx;->bnW:Lo/xi;

    iget-wide v2, v2, Lo/xi;->bpk:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v6, Lo/vx;->bnW:Lo/xi;

    iget-wide v3, v3, Lo/xi;->bpl:J

    long-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lo/ani;->ˊ(JII)Lo/ani;

    move-result-object v0

    iget-object v1, v6, Lo/vx;->bnr:Lo/xh;

    invoke-virtual {v1}, Lo/xh;->ue()J

    move-result-wide v1

    iget-object v3, v6, Lo/vx;->bnr:Lo/xh;

    invoke-virtual {v3}, Lo/xh;->uf()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lo/ane;->ʿ(JJ)Lo/ane;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lo/aeh$ᐝ;-><init>(Lo/ani;Lo/ane;)V

    .line 910
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    new-instance v1, Lo/aeh$aux;

    invoke-direct {v1, v7}, Lo/aeh$aux;-><init>(Lo/aeh$ᐝ;)V

    invoke-virtual {v0, v1}, Lo/aej;->ˋ(Lo/aeh$aux;)V

    .line 912
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/adx;->ˤ(I)V

    .line 913
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    iget-object v1, v6, Lo/vx;->bnr:Lo/xh;

    iget-object v1, v1, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˏ(Lo/xh;)V

    .line 914
    iget-object v0, v6, Lo/vx;->bnr:Lo/xh;

    iget-boolean v0, v0, Lo/xh;->boT:Z

    if-eqz v0, :cond_b

    .line 915
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᴬ(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 920
    :pswitch_5
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_a

    .line 921
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->finish()V

    goto :goto_2

    .line 923
    :cond_a
    iget-object v0, p1, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vv;

    move-object v6, v0

    .line 924
    iget-object v0, v6, Lo/vv;->bnh:Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    .line 925
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 926
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zd()V

    .line 928
    goto :goto_2

    .line 931
    :pswitch_6
    invoke-virtual {p1}, Lo/aai;->vA()Z

    move-result v0

    if-nez v0, :cond_b

    .line 932
    const v0, 0x7f0600ea

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 933
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share w/ followers error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lo/aai;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 938
    :pswitch_7
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->finish()V

    .line 942
    :cond_b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 962
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 964
    :sswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->xL()V

    .line 965
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->notifyDataSetChanged()V

    .line 966
    goto :goto_0

    .line 969
    :sswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnB:Lo/zp;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/zp;->ị(Ljava/lang/String;)Lo/xh;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˏ(Lo/xh;)V

    .line 973
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public onEventMainThread(Lo/aal;)V
    .locals 1

    .line 977
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBx:Lo/aej;

    invoke-virtual {v0, p1}, Lo/aej;->ˊ(Lo/aal;)V

    .line 978
    return-void
.end method

.method public onEventMainThread(Lo/aca;)V
    .locals 2

    .line 999
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    sget-object v1, Lo/afq$if;->bCK:Lo/afq$if;

    invoke-virtual {v0, v1}, Lo/afq;->setChatState(Lo/afq$if;)V

    .line 1000
    return-void
.end method

.method public onEventMainThread(Lo/acc;)V
    .locals 9

    .line 982
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v3, v3, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v4, v4, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v5, v5, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    iget v6, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v7}, Lo/aek;->xT()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigInteger;)Lo/ant;

    move-result-object v8

    .line 992
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending message: join "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bns:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 995
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lo/ace;)V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zi()V

    .line 1005
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 723
    :sswitch_0
    if-eqz p2, :cond_0

    .line 724
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBD:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00ac -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 4

    .line 676
    invoke-super {p0}, Lo/ado;->onLowMemory()V

    .line 677
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onLowMemory"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->xq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bq;

    move-object v3, v0

    .line 680
    invoke-virtual {v3}, Lo/bq;->onLowMemory()V

    .line 681
    goto :goto_0

    .line 683
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 346
    invoke-super {p0, p1}, Lo/ado;->onNewIntent(Landroid/content/Intent;)V

    .line 347
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->setIntent(Landroid/content/Intent;)V

    .line 348
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʼ(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 637
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v0, v1, :cond_0

    .line 639
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zk()V

    .line 641
    :cond_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/yz;->ᐩ(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    .line 645
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xY()V

    .line 647
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zm()V

    .line 649
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->xq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bq;

    move-object v4, v0

    .line 651
    invoke-virtual {v4}, Lo/bq;->onPause()V

    .line 652
    goto :goto_0

    .line 654
    :cond_3
    invoke-super {p0}, Lo/ado;->onPause()V

    .line 655
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 512
    invoke-super {p0}, Lo/ado;->onResume()V

    .line 513
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->xq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bq;

    move-object v3, v0

    .line 516
    invoke-virtual {v3}, Lo/bq;->onResume()V

    .line 517
    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 503
    invoke-super {p0}, Lo/ado;->onStart()V

    .line 504
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    .line 506
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zh()V

    .line 508
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 659
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zg()V

    .line 664
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->finish()V

    .line 667
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xX()V

    .line 671
    :cond_2
    invoke-super {p0}, Lo/ado;->onStop()V

    .line 672
    return-void
.end method

.method public xT()Ljava/math/BigInteger;
    .locals 1

    .line 1121
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xT()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public xV()J
    .locals 2

    .line 1116
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xV()J

    move-result-wide v0

    return-wide v0
.end method

.method public xW()J
    .locals 2

    .line 1111
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xW()J

    move-result-wide v0

    return-wide v0
.end method

.method public xr()V
    .locals 2

    .line 1259
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ahb;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->yX()V

    .line 1261
    return-void
.end method

.method public xs()V
    .locals 2

    .line 1265
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ahb;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->yY()V

    .line 1267
    return-void
.end method

.method public xt()Z
    .locals 1

    .line 1271
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0}, Lo/ahb;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public yh()V
    .locals 4

    .line 1305
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPlaybackStarted"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBq:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDo:Z

    .line 1309
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zb()V

    .line 1310
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/amo;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    invoke-virtual {v0, p0}, Lo/amo;->ˊ(Lo/aek$ˊ;)V

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᔄ:J

    .line 1313
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zo()V

    .line 1314
    return-void
.end method

.method public yi()V
    .locals 2

    .line 1318
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPlaybackEnded"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/amo;->setVisibility(I)V

    .line 1320
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    invoke-virtual {v0}, Lo/amo;->reset()V

    .line 1321
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐝ(Lo/xh;)V

    .line 1322
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zm()V

    .line 1323
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zn()V

    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 1325
    return-void
.end method

.method public yj()V
    .locals 2

    .line 1299
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPlaybackRequested"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 1301
    return-void
.end method

.method public yk()V
    .locals 2

    .line 1379
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPlaybackReady"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1380
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ⁿ(Z)V

    .line 1381
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵤ(Z)V

    .line 1382
    return-void
.end method

.method public yl()V
    .locals 4

    .line 1329
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "onPlaybackBuffer"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1330
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDt:Z

    if-eqz v0, :cond_0

    .line 1331
    return-void

    .line 1333
    :cond_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1334
    const-string v0, "ViewerActivity"

    const-string v1, "Buffering detected."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDu:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDt:Z

    .line 1338
    :cond_1
    return-void
.end method

.method public ym()Ljava/math/BigInteger;
    .locals 1

    .line 1126
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xU()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public yn()Z
    .locals 1

    .line 1132
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﺓ()Z

    move-result v0

    return v0
.end method

.method public yx()V
    .locals 2

    .line 1276
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zk()V

    .line 1277
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xX()V

    .line 1278
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐝ(Lo/xh;)V

    .line 1279
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDk:Lo/amo;

    invoke-virtual {v0}, Lo/amo;->reset()V

    .line 1280
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    .line 1281
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-virtual {v0}, Lo/afq;->yW()V

    .line 1282
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/afq;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDg:Lo/afq;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 1285
    :cond_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zn()V

    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᵘ(Z)V

    .line 1287
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 1288
    return-void
.end method

.method public yy()V
    .locals 2

    .line 1292
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/xh;->boT:Z

    .line 1293
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zl()V

    .line 1294
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 1295
    return-void
.end method

.method protected zf()V
    .locals 6

    .line 618
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    invoke-interface {v0}, Lo/abt;->kill()V

    .line 621
    :cond_0
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$1;->bDw:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 623
    :pswitch_0
    new-instance v0, Lo/abv;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->xa()Lo/ot;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    invoke-direct {v0, v1, v2, p0, v3}, Lo/abv;-><init>(Lo/ot;Lo/aad;Lo/aek$ˊ;Lo/abs;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    .line 624
    goto :goto_1

    .line 629
    :goto_0
    :pswitch_1
    new-instance v0, Lo/acg;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->xa()Lo/ot;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v4}, Lo/aek;->yb()Z

    move-result v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lo/acg;-><init>(Lo/ot;Lo/aad;Lo/yz;Lo/aek$ˊ;Z)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDl:Lo/abt;

    .line 633
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected zm()V
    .locals 7

    .line 1385
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDs:Z

    if-nez v0, :cond_0

    .line 1386
    return-void

    .line 1388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDs:Z

    .line 1390
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_2

    .line 1391
    :cond_1
    return-void

    .line 1393
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->xV()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v1}, Lo/aek;->xW()J

    move-result-wide v1

    long-to-float v1, v1

    div-float v6, v0, v1

    .line 1396
    const v0, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_3

    .line 1397
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1399
    :cond_3
    invoke-direct {p0, v6}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˇ(F)V

    .line 1400
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    if-eqz v0, :cond_4

    .line 1401
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bnr:Lo/xh;

    iget-object v1, v1, Lo/xh;->id:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v2, v2, Lo/vm;->bnn:Ljava/lang/String;

    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zv()F

    move-result v3

    move v4, v6

    iget v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    invoke-virtual/range {v0 .. v5}, Lo/vn;->ˊ(Ljava/lang/String;Ljava/lang/String;FFI)Ljava/lang/String;

    .line 1406
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDq:I

    .line 1407
    const/4 v0, 0x0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    .line 1408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᔄ:J

    .line 1409
    return-void
.end method

.method protected zn()V
    .locals 6

    .line 1432
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    iget-boolean v4, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    .line 1436
    if-eqz v4, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1438
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1441
    :cond_2
    if-eqz v5, :cond_3

    .line 1442
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zq()V

    goto :goto_1

    .line 1443
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    if-eqz v0, :cond_4

    .line 1444
    invoke-static {p0}, Lo/ᓲ;->ᐝ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    iget-object v1, v1, Lo/xh;->boQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ઽ;->ץ()Lo/ڏ;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lo/ᘇ;

    new-instance v2, Lo/abc;

    invoke-direct {v2, p0}, Lo/abc;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ([Lo/ᘇ;)Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 1451
    :cond_4
    :goto_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDd:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1455
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1456
    return-void

    .line 1458
    :cond_6
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˤ(Landroid/view/View;)V

    .line 1459
    return-void
.end method

.method protected zo()V
    .locals 2

    .line 1462
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1463
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->byT:Lo/adw;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ᕀ(Landroid/view/View;)V

    .line 1466
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zp()V

    .line 1467
    return-void
.end method

.method public ǐ(Ljava/lang/String;)V
    .locals 3

    .line 1225
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030036

    invoke-direct {v2, p0, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1227
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lo/agm;

    invoke-direct {v1, p0, p1}, Lo/agm;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1240
    return-void
.end method

.method public ɫ(I)V
    .locals 5

    .line 1161
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDf:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    return-void
.end method

.method public ʾ(Ljava/lang/String;I)V
    .locals 4

    .line 1173
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v3, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2, v2}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1175
    return-void
.end method

.method public ʾ(Lo/ant;)V
    .locals 1

    .line 1153
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    :cond_0
    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, p1}, Lo/ahb;->ˍ(Lo/ant;)V

    .line 1157
    return-void
.end method

.method public ʿ(Lo/ant;)V
    .locals 2

    .line 1179
    const v0, 0x7f060041

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1180
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->finish()V

    .line 1181
    return-void
.end method

.method public ˋ(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/vn;->ˊ(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 1185
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    :cond_0
    sget-object v0, Lo/vi$if;->bmb:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1187
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "share with all followers"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_1
    sget-object v0, Lo/vi$if;->bma:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1190
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " followers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1192
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBj:Z

    if-eqz v0, :cond_4

    .line 1195
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1196
    :cond_2
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1197
    const/4 v10, 0x0

    goto :goto_1

    .line 1199
    :cond_3
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v3}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1201
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1203
    :goto_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1204
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnm:Ljava/lang/String;

    move-object v1, v11

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v2}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v3}, Lo/aad;->vp()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v4}, Lo/aad;->vu()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v5}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    invoke-virtual {v6}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v8}, Lo/aek;->xT()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigInteger;Ljava/lang/Integer;)Lo/ant;

    move-result-object v12

    .line 1215
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBp:Lo/ahb;

    invoke-virtual {v0, v12}, Lo/ahb;->ˍ(Lo/ant;)V

    .line 1216
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    const-string v1, "sending invite message"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bns:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 1221
    :cond_4
    return-void
.end method

.method public ˋ(Lo/ant;Lo/vk;)V
    .locals 1

    .line 609
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBK:Lo/ads;

    invoke-virtual {v0, p1, p2}, Lo/ads;->ˊ(Lo/ant;Lo/vk;)V

    .line 610
    return-void
.end method

.method public ۃ(Ljava/lang/String;)V
    .locals 10

    .line 1029
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v0, v0, Lo/vm;->bnm:Ljava/lang/String;

    move-object v1, p1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v3, v3, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v4, v4, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v5, v5, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v6, v6, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    iget v7, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v8}, Lo/aek;->xT()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/math/BigInteger;)Lo/ant;

    move-result-object v9

    .line 1038
    invoke-virtual {p0, v9}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʾ(Lo/ant;)V

    .line 1039
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->zr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    sget-object v0, Lo/vi$if;->blY:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 1041
    iget v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    .line 1042
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChat #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bxD:Lo/yz;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDj:Lo/vm;

    iget-object v1, v1, Lo/vm;->bns:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 1045
    :cond_0
    return-void
.end method

.method public ᐝ(Ljava/lang/Exception;)V
    .locals 2

    .line 1342
    instance-of v0, p1, Lo/aax;

    if-eqz v0, :cond_0

    .line 1343
    const-string v0, "Unsupported DRM exception"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1345
    :cond_0
    return-void
.end method

.method public ᴵ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/anv;>;)V"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bnA:Lo/aad;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDc:Lo/xh;

    iget-object v1, v1, Lo/xh;->nD:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public ι(Lo/ant;)V
    .locals 3

    .line 1138
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDi:Lo/aek;

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    return-void

    .line 1141
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bDm:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_2

    .line 1142
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahe;->Ѓ(I)V

    goto :goto_0

    .line 1146
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity;->bBo:Lo/ahe;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahe;->Ѓ(I)V

    .line 1149
    :goto_0
    return-void
.end method
