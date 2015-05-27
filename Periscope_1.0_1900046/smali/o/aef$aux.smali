.class public Lo/aef$aux;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "aux"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$aux;>;"
    }
.end annotation


# instance fields
.field private final bzS:Landroid/widget/TextView;

.field private final bzT:Landroid/widget/TextView;

.field private final bzU:Landroid/widget/TextView;

.field private final bzV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 3

    .line 432
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 436
    const v0, 0x7f0b0064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 437
    const v0, 0x7f0b00f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 438
    const v0, 0x7f0b00f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$aux;->bzT:Landroid/widget/TextView;

    .line 440
    const v0, 0x7f0b0065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 441
    const v0, 0x7f0b00f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 442
    const v0, 0x7f0b00f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$aux;->bzU:Landroid/widget/TextView;

    .line 444
    const v0, 0x7f0b0066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    const v0, 0x7f0b00f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 446
    const v0, 0x7f0b00f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$aux;->bzV:Landroid/widget/TextView;

    .line 448
    const v0, 0x7f0b0067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 449
    const v0, 0x7f0b00f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0600ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 450
    const v0, 0x7f0b00f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$aux;->bzS:Landroid/widget/TextView;

    .line 451
    return-void
.end method

.method public static ʻ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$aux;
    .locals 4

    .line 454
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 456
    new-instance v0, Lo/aef$aux;

    invoke-direct {v0, v3, p2}, Lo/aef$aux;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method

.method private ˁ(J)Ljava/lang/String;
    .locals 8

    .line 482
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    .line 483
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 484
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 485
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    mul-long/2addr v0, v6

    sub-long/2addr p1, v0

    .line 486
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 487
    const-string v0, "%02d:%02d:%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/aeh$aux;)V
    .locals 8

    .line 461
    invoke-virtual {p1}, Lo/aeh$aux;->xF()Lo/aeh$ᐝ;

    move-result-object v5

    .line 463
    iget-object v0, p0, Lo/aef$aux;->bzS:Landroid/widget/TextView;

    iget-object v1, v5, Lo/aeh$ᐝ;->bAn:Lo/ane;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lo/ane;->ˊ(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lo/aef$aux;->ˁ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, v5, Lo/aeh$ᐝ;->bAm:Lo/ani;

    invoke-virtual {v0}, Lo/ani;->Cd()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 465
    iget-object v0, p0, Lo/aef$aux;->bzT:Landroid/widget/TextView;

    const-string v1, "%.1f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v5, Lo/aeh$ᐝ;->bAm:Lo/ani;

    invoke-virtual {v3}, Lo/ani;->Cd()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lo/aef$aux;->bzT:Landroid/widget/TextView;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    :goto_0
    iget-object v0, p0, Lo/aef$aux;->bzU:Landroid/widget/TextView;

    iget-object v1, p0, Lo/aef$aux;->bB:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v5, Lo/aeh$ᐝ;->bAm:Lo/ani;

    invoke-virtual {v2}, Lo/ani;->BY()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, v5, Lo/aeh$ᐝ;->bAm:Lo/ani;

    invoke-virtual {v0}, Lo/ani;->BY()I

    move-result v0

    if-lez v0, :cond_1

    .line 474
    iget-object v0, v5, Lo/aeh$ᐝ;->bAm:Lo/ani;

    invoke-virtual {v0}, Lo/ani;->BX()J

    move-result-wide v6

    goto :goto_1

    .line 476
    :cond_1
    const-wide/16 v6, 0x0

    .line 478
    :goto_1
    iget-object v0, p0, Lo/aef$aux;->bzV:Landroid/widget/TextView;

    invoke-direct {p0, v6, v7}, Lo/aef$aux;->ˁ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 425
    move-object v0, p1

    check-cast v0, Lo/aeh$aux;

    invoke-virtual {p0, v0}, Lo/aef$aux;->ˊ(Lo/aeh$aux;)V

    return-void
.end method
