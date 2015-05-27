.class Lo/afi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/aay$if;
.implements Lo/ajw$if;
.implements Lo/ay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/afi$ˊ;,
        Lo/afi$if;
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
.field private final bBB:Lo/aju;

.field private bBj:Z

.field private final bCb:Landroid/widget/TextView;

.field private final bCc:Landroid/widget/TextView;

.field private final bCd:Lo/amc;

.field private final bCe:Lo/amc;

.field private final bCf:Lo/amc;

.field private final bCg:Lo/amv;

.field private final bCh:Lo/aay;

.field private final bCi:Lo/afi$if;

.field private final bCj:Lo/mr;

.field private final bCk:Lo/age;

.field private final bCl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bCm:I

.field private bCn:Landroid/location/Location;

.field private bCo:Z

.field private bCp:Lo/afi$ˊ;

.field private bCq:Ljava/lang/String;

.field private bCr:Z

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/afi;->bCa:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;Lo/amc;Lo/amc;Lo/amc;Lo/afi$if;ILo/aju;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    .line 80
    iput-object p1, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object p4, p0, Lo/afi;->bCd:Lo/amc;

    .line 82
    iput-object p2, p0, Lo/afi;->bCb:Landroid/widget/TextView;

    .line 83
    iput-object p3, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    .line 84
    iput-object p5, p0, Lo/afi;->bCe:Lo/amc;

    .line 85
    iput-object p6, p0, Lo/afi;->bCf:Lo/amc;

    .line 86
    iput-object p7, p0, Lo/afi;->bCi:Lo/afi$if;

    .line 87
    new-instance v0, Lo/aay;

    invoke-direct {v0, p1, p0, p0}, Lo/aay;-><init>(Landroid/content/Context;Lo/aay$if;Lo/ay;)V

    iput-object v0, p0, Lo/afi;->bCh:Lo/aay;

    .line 88
    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v0

    invoke-virtual {v0}, Lo/mn;->bj()Lo/mh;

    move-result-object v0

    invoke-interface {v0}, Lo/mh;->aU()Lo/mg;

    move-result-object v0

    check-cast v0, Lo/mr;

    iput-object v0, p0, Lo/afi;->bCj:Lo/mr;

    .line 89
    invoke-direct {p0, p1}, Lo/afi;->ˣ(Landroid/content/Context;)Lo/age;

    move-result-object v0

    iput-object v0, p0, Lo/afi;->bCk:Lo/age;

    .line 90
    iput-object p9, p0, Lo/afi;->bBB:Lo/aju;

    .line 91
    iput p8, p0, Lo/afi;->bCm:I

    .line 93
    new-instance v0, Lo/amv;

    invoke-direct {v0, p1}, Lo/amv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/afi;->bCg:Lo/amv;

    .line 95
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    invoke-virtual {v0, p0}, Lo/amc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lo/afi;->bCb:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    invoke-virtual {v0, p0}, Lo/amc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    invoke-virtual {v0, p0}, Lo/amc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lo/afi;->bBB:Lo/aju;

    invoke-interface {v0, p0}, Lo/aju;->ˊ(Lo/ajw$if;)V

    .line 102
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    sget-object v0, Lo/afi;->bCa:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lo/afi;->ˎ(Ljava/util/ArrayList;)V

    .line 104
    return-void
.end method

.method private yH()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lo/afi;->yI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lo/afi;->bCi:Lo/afi$if;

    iget-object v1, p0, Lo/afi;->bCn:Landroid/location/Location;

    invoke-interface {v0, v1}, Lo/afi$if;->ᐝ(Landroid/location/Location;)V

    .line 244
    :cond_0
    return-void
.end method

.method private yN()V
    .locals 3

    .line 315
    iget-boolean v0, p0, Lo/afi;->bCo:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06009d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    invoke-direct {p0, v0}, Lo/afi;->ˊ(Lo/amc;)V

    .line 319
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Lo/vi$if;->bmz:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 321
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->vN()V

    goto :goto_0

    .line 323
    :cond_1
    sget-object v0, Lo/vi$if;->bmA:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 324
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->vO()V

    .line 327
    :goto_0
    return-void
.end method

.method private yO()V
    .locals 1

    .line 330
    sget-object v0, Lo/vi$if;->bmS:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 331
    iget-object v0, p0, Lo/afi;->bBB:Lo/aju;

    invoke-interface {v0}, Lo/aju;->show()V

    .line 332
    return-void
.end method

.method private yP()V
    .locals 2

    .line 372
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/amc;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/amc;->setVisibility(I)V

    .line 374
    return-void
.end method

.method private yQ()V
    .locals 2

    .line 377
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/amc;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/amc;->setVisibility(I)V

    .line 379
    return-void
.end method

.method static synthetic ˊ(Lo/afi;)Landroid/app/Activity;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private ˊ(Lo/amc;)V
    .locals 4

    .line 335
    invoke-virtual {p1}, Lo/amc;->isActivated()Z

    move-result v3

    .line 336
    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 337
    :goto_0
    invoke-direct {p0, p1, v3}, Lo/afi;->ˊ(Lo/amc;Z)V

    .line 338
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    invoke-virtual {v0}, Lo/amv;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    invoke-virtual {v0}, Lo/amv;->dismiss()V

    .line 341
    :cond_1
    if-eqz v3, :cond_2

    .line 342
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    iget-object v1, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lo/amc;->BK()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/amv;->ˊ(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    iget-object v1, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lo/amc;->BL()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/amv;->ˊ(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 346
    :goto_1
    return-void
.end method

.method private ˊ(Lo/amc;Z)V
    .locals 1

    .line 349
    invoke-virtual {p1, p2}, Lo/amc;->setActivated(Z)V

    .line 350
    invoke-direct {p0, p2}, Lo/afi;->ᵒ(Z)F

    move-result v0

    invoke-virtual {p1, v0}, Lo/amc;->setAlpha(F)V

    .line 351
    return-void
.end method

.method static synthetic ˊ(Lo/afi;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lo/afi;->bCr:Z

    return p1
.end method

.method private ˋ(ILandroid/content/Intent;)V
    .locals 3

    .line 160
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 164
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/afi;->bCo:Z

    .line 165
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/afi;->ˊ(Lo/amc;Z)V

    .line 166
    iget-object v0, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06009d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    goto :goto_1

    .line 170
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/afi;->bCo:Z

    .line 174
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private ˎ(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 359
    :goto_0
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setActivated(Z)V

    .line 360
    iget-object v0, p0, Lo/afi;->bCb:Landroid/widget/TextView;

    if-nez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 362
    if-eqz v5, :cond_2

    .line 363
    invoke-direct {p0}, Lo/afi;->yP()V

    .line 364
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    iget-object v1, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f060036

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 366
    :cond_2
    invoke-direct {p0}, Lo/afi;->yQ()V

    .line 367
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :goto_2
    return-void
.end method

.method private ˣ(Landroid/content/Context;)Lo/age;
    .locals 4

    .line 107
    const-string v0, "development"

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lo/afj;

    invoke-direct {v0, p0, p1}, Lo/afj;-><init>(Lo/afi;Landroid/content/Context;)V

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lo/afi;->bCj:Lo/mr;

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lo/agf;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v2

    iget-object v3, p0, Lo/afi;->bCj:Lo/mr;

    invoke-virtual {v2, v3}, Lo/mn;->ˋ(Lo/mg;)Lo/mi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/agf;-><init>(Landroid/content/res/Resources;Lo/mi;)V

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No valid twitter session!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 120
    new-instance v0, Lo/afk;

    invoke-direct {v0, p0, p1}, Lo/afk;-><init>(Lo/afi;Landroid/content/Context;)V

    return-object v0
.end method

.method private ڍ(Ljava/lang/String;)Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lo/afi;->yM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/afi;->bCr:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᐟ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lo/afi;->bCk:Lo/age;

    new-instance v1, Lo/afl;

    invoke-direct {v1, p0}, Lo/afl;-><init>(Lo/afi;)V

    invoke-interface {v0, p1, p2, v1}, Lo/age;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/lz;)V

    .line 288
    return-void
.end method

.method private ᵒ(Z)F
    .locals 1

    .line 354
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    return v0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .line 147
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->disconnect()V

    .line 148
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 292
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    if-ne p1, v0, :cond_0

    .line 293
    invoke-direct {p0}, Lo/afi;->yN()V

    goto/16 :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lo/afi;->bCb:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 295
    sget-object v0, Lo/afi;->bCa:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lo/afi;->ˎ(Ljava/util/ArrayList;)V

    .line 296
    iget-object v0, p0, Lo/afi;->bCp:Lo/afi$ˊ;

    sget-object v1, Lo/afi;->bCa:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lo/afi$ˊ;->ٴ(Ljava/util/List;)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 298
    invoke-direct {p0}, Lo/afi;->yO()V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    if-ne p1, v0, :cond_3

    .line 300
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    invoke-direct {p0, v0}, Lo/afi;->ˊ(Lo/amc;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    if-ne p1, v0, :cond_6

    .line 302
    iget-object v0, p0, Lo/afi;->bCj:Lo/mr;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    invoke-direct {p0, v0}, Lo/afi;->ˊ(Lo/amc;)V

    goto :goto_0

    .line 306
    :cond_4
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    invoke-virtual {v0}, Lo/amv;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    invoke-virtual {v0}, Lo/amv;->dismiss()V

    .line 309
    :cond_5
    iget-object v0, p0, Lo/afi;->bCg:Lo/amv;

    iget-object v1, p0, Lo/afi;->bCf:Lo/amc;

    iget-object v2, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/amv;->ˊ(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 312
    :cond_6
    :goto_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 233
    const-string v0, "BroadcasterOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lo/afi;->bCn:Landroid/location/Location;

    .line 235
    iget-boolean v0, p0, Lo/afi;->bBj:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lo/afi;->yH()V

    .line 238
    :cond_0
    return-void
.end method

.method public yD()V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->connect()V

    .line 132
    return-void
.end method

.method public yE()V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->vN()V

    .line 138
    :cond_0
    return-void
.end method

.method public yF()V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lo/afi;->bCh:Lo/aay;

    invoke-virtual {v0}, Lo/aay;->vO()V

    .line 144
    :cond_0
    return-void
.end method

.method public yG()V
    .locals 1

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/afi;->bBj:Z

    .line 208
    invoke-direct {p0}, Lo/afi;->yH()V

    .line 209
    return-void
.end method

.method public yI()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lo/afi;->bCd:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/afi;->bCn:Landroid/location/Location;

    invoke-static {v0}, Lo/aba;->ˏ(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public yJ()Landroid/location/Location;
    .locals 1

    .line 251
    iget-object v0, p0, Lo/afi;->bCn:Landroid/location/Location;

    return-object v0
.end method

.method public yK()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/ArrayList<Ljava/lang/String;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lo/afi;->bCc:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    return-object v0

    .line 258
    :cond_0
    sget-object v0, Lo/afi;->bCa:Ljava/util/ArrayList;

    return-object v0
.end method

.method public yL()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/afi;->bCe:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public yM()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/afi;->bCf:Lo/amc;

    invoke-virtual {v0}, Lo/amc;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˊ(Lo/afi$ˊ;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lo/afi;->bCp:Lo/afi$ˊ;

    .line 178
    return-void
.end method

.method public ˋ(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v0, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lo/afi;->ˎ(Ljava/util/ArrayList;)V

    .line 185
    iget-object v0, p0, Lo/afi;->bCp:Lo/afi$ˊ;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lo/afi;->bCp:Lo/afi$ˊ;

    iget-object v1, p0, Lo/afi;->bCl:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lo/afi$ˊ;->ٴ(Ljava/util/List;)V

    .line 188
    :cond_0
    return-void
.end method

.method public ˋ(IILandroid/content/Intent;)Z
    .locals 1

    .line 151
    iget v0, p0, Lo/afi;->bCm:I

    if-ne p1, v0, :cond_0

    .line 152
    invoke-direct {p0, p2, p3}, Lo/afi;->ˋ(ILandroid/content/Intent;)V

    .line 153
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˎ(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 4

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->হ()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lo/afi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lo/afi;->bCm:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;->ˊ(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v3

    .line 229
    :goto_0
    return-void
.end method

.method public ڌ(Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-direct {p0, p1}, Lo/afi;->ڍ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lo/afi;->bCq:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/afi;->ᐟ(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public יּ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lo/afi;->bCq:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lo/afi;->yM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lo/vi$if;->bmC:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Lo/vi$if;->bmD:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 201
    :goto_0
    invoke-direct {p0, p2}, Lo/afi;->ڍ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0, p1, p2}, Lo/afi;->ᐟ(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void
.end method
