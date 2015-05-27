.class public Lo/aet;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lo/aek$ˊ;
.implements Lo/afi$ˊ;
.implements Lo/afn;
.implements Lo/agq$if;
.implements Lo/akq$ˊ;
.implements Lo/yp$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aet$1;,
        Lo/aet$ˋ;,
        Lo/aet$if;,
        Lo/aet$ˊ;
    }
.end annotation


# instance fields
.field private bAS:Lo/abr;

.field private bAT:Z

.field private bAU:Lo/yp;

.field private bAV:Lo/akq;

.field private bAW:Lo/akp;

.field private bAX:Z

.field private bAY:Z

.field private bAZ:Landroid/view/View;

.field private bBA:Lo/adj;

.field private bBB:Lo/aju;

.field private bBC:Lo/aet$ˋ;

.field private bBD:Landroid/view/View;

.field private bBE:Landroid/graphics/Typeface;

.field private bBF:Landroid/graphics/Typeface;

.field private bBG:Z

.field private bBH:Landroid/media/MediaFormat;

.field private bBI:Landroid/media/MediaFormat;

.field private bBJ:Ljava/lang/String;

.field private bBK:Lo/ads;

.field private bBL:J

.field private bBM:J

.field private final bBN:Ljava/lang/Runnable;

.field private final bBO:Ljava/lang/Runnable;

.field private bBP:Lo/afm;

.field private bBQ:Landroid/view/View;

.field private final bBR:I

.field private bBS:J

.field bBT:Landroid/os/Handler;

.field bBU:Ljava/lang/Runnable;

.field private bBa:Landroid/view/View;

.field private bBb:Landroid/widget/Button;

.field private bBc:Landroid/widget/EditText;

.field private bBd:Lo/vz;

.field private bBe:Ljava/lang/String;

.field private bBf:Z

.field private bBg:Lo/ajw;

.field private bBh:Lo/afi;

.field private bBi:Lo/agq;

.field private bBj:Z

.field private bBk:Z

.field private bBl:Z

.field private bBm:Ljava/lang/String;

.field private bBn:Lo/abv;

.field private bBo:Lo/ahe;

.field private bBp:Lo/ahb;

.field private final bBq:Ljava/lang/Runnable;

.field private final bBr:Ljava/util/concurrent/Semaphore;

.field private bBs:Landroid/view/View;

.field private bBt:Ljava/lang/Runnable;

.field private bBu:Lo/aei;

.field private bBv:Lo/xh;

.field private bBw:Lo/adx;

.field private bBx:Lo/aej;

.field private bBy:Landroid/widget/TextView;

.field private bBz:Lo/ady;

.field private bnA:Lo/aad;

.field protected bnB:Lo/zp;

.field private bqq:Lo/abl;

.field private brZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private bwV:Ljava/lang/String;

.field private bxA:Ljava/lang/String;

.field private bxD:Lo/yz;

.field private byD:Lo/alo;

.field private byT:Lo/adw;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aet;->bAT:Z

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aet;->bAX:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aet;->bAY:Z

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lo/aet$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/aet$ˊ;-><init>(Lo/aet;Lo/aeu;)V

    iput-object v0, p0, Lo/aet;->bBq:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lo/aet;->bBr:Ljava/util/concurrent/Semaphore;

    .line 170
    new-instance v0, Lo/aet$ˋ;

    invoke-direct {v0}, Lo/aet$ˋ;-><init>()V

    iput-object v0, p0, Lo/aet;->bBC:Lo/aet$ˋ;

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lo/yz;->ᑉ(Z)Lo/yz;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bxD:Lo/yz;

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aet;->bBL:J

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aet;->bBM:J

    .line 187
    new-instance v0, Lo/aeu;

    invoke-direct {v0, p0}, Lo/aeu;-><init>(Lo/aet;)V

    iput-object v0, p0, Lo/aet;->bBN:Ljava/lang/Runnable;

    .line 194
    new-instance v0, Lo/aez;

    invoke-direct {v0, p0}, Lo/aez;-><init>(Lo/aet;)V

    iput-object v0, p0, Lo/aet;->bBO:Ljava/lang/Runnable;

    .line 1190
    const/16 v0, 0x1388

    iput v0, p0, Lo/aet;->bBR:I

    .line 1191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/aet;->bBS:J

    .line 1192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/aet;->bBT:Landroid/os/Handler;

    .line 1193
    new-instance v0, Lo/aey;

    invoke-direct {v0, p0}, Lo/aey;-><init>(Lo/aet;)V

    iput-object v0, p0, Lo/aet;->bBU:Ljava/lang/Runnable;

    .line 1287
    return-void
.end method

.method private up()V
    .locals 3

    .line 580
    invoke-direct {p0}, Lo/aet;->yu()V

    .line 581
    iget-object v0, p0, Lo/aet;->bBc:Landroid/widget/EditText;

    invoke-static {v0}, Lo/akj;->ᔉ(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lo/aet;->bBQ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    iget-object v1, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ד(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBJ:Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    iget-object v1, p0, Lo/aet;->bBJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/akq;->ᴴ(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->up()V

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aet;->bAX:Z

    .line 587
    invoke-direct {p0}, Lo/aet;->yA()V

    .line 588
    invoke-direct {p0}, Lo/aet;->ys()V

    .line 589
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bAZ:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/adw;->removeView(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 591
    iget-object v0, p0, Lo/aet;->bBa:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-direct {p0}, Lo/aet;->yq()V

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aet;->bBf:Z

    .line 594
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    iget-object v1, p0, Lo/aet;->bBc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aet;->bBm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/afi;->יּ(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lo/aet;->bBy:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lo/aet;->bBD:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    invoke-static {}, Lo/ant;->Cz()Lo/ant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ahb;->ˍ(Lo/ant;)V

    .line 598
    return-void
.end method

.method private uq()V
    .locals 2

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aet;->bAX:Z

    .line 727
    invoke-direct {p0}, Lo/aet;->yA()V

    .line 728
    invoke-direct {p0}, Lo/aet;->yC()V

    .line 729
    iget-object v0, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {v0}, Lo/akp;->AK()V

    .line 730
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    invoke-virtual {v0}, Lo/akq;->shutdown()V

    .line 735
    :cond_0
    iget-object v0, p0, Lo/aet;->bBJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    iget-object v1, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ױ(Ljava/lang/String;)V

    .line 739
    :cond_1
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->stopPreview()V

    .line 740
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->uq()V

    .line 741
    return-void
.end method

.method private yA()V
    .locals 4

    .line 1180
    iget-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    const-string v1, "bps"

    iget-object v2, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v2}, Lo/yp;->ur()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    const-string v1, "UploadRate"

    iget-object v2, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {v2}, Lo/akp;->AC()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    const-string v1, "live"

    iget-boolean v2, p0, Lo/aet;->bAX:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    iget-object v1, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lo/akq;->ˊ(Ljava/util/HashMap;)V

    .line 1187
    :cond_0
    return-void
.end method

.method private yB()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lo/aet;->bBT:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBU:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1281
    return-void
.end method

.method private yC()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lo/aet;->bBT:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1285
    return-void
.end method

.method private yo()V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    invoke-virtual {v0}, Lo/vn;->ua()V

    .line 429
    return-void
.end method

.method private yp()V
    .locals 3

    .line 555
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->us()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 557
    :goto_0
    if-eqz v2, :cond_1

    .line 558
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "Flip to rear facing camera"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :cond_1
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "Flip to front facing camera"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 562
    :goto_1
    new-instance v0, Lo/afg;

    invoke-direct {v0, p0}, Lo/afg;-><init>(Lo/aet;)V

    invoke-virtual {v0}, Lo/afg;->start()V

    .line 577
    return-void
.end method

.method private yq()V
    .locals 4

    .line 615
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/aew;

    invoke-direct {v1, p0}, Lo/aew;-><init>(Lo/aet;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    invoke-direct {p0}, Lo/aet;->yr()V

    .line 622
    return-void
.end method

.method private yr()V
    .locals 5

    .line 625
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBt:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    return-void
.end method

.method private ys()V
    .locals 17

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yI()Z

    move-result v10

    .line 632
    if-eqz v10, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yJ()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v8, v0

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yJ()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v9, v0

    goto :goto_0

    .line 636
    :cond_0
    const/4 v8, 0x0

    .line 637
    const/4 v9, 0x0

    .line 640
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yK()Ljava/util/ArrayList;

    move-result-object v12

    .line 642
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 643
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yL()Z

    move-result v14

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yM()Z

    move-result v15

    .line 646
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 647
    const-string v0, "has_text"

    invoke-static {v11}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v0, "is_private"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v0, "is_follower_only_chat"

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v0, "share_twitter_enabled"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lo/vi$if;->bmB:Lo/vi$if;

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lo/vi;->ˊ(Lo/vi$if;Ljava/util/HashMap;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bwV:Ljava/lang/String;

    move-object v2, v11

    move-object v3, v12

    move v4, v10

    move v5, v8

    move v6, v9

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lo/vn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZFFZ)Ljava/lang/String;

    .line 655
    return-void
.end method

.method private yt()V
    .locals 2

    .line 691
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/adw;->setSystemUiVisibility(I)V

    .line 692
    return-void
.end method

.method private yu()V
    .locals 2

    .line 695
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/adw;->setSystemUiVisibility(I)V

    .line 696
    return-void
.end method

.method private yv()V
    .locals 12

    .line 913
    iget-object v9, p0, Lo/aet;->bBd:Lo/vz;

    .line 914
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yK()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v7, v9, Lo/vz;->protocol:Ljava/lang/String;

    .line 916
    iget v8, v9, Lo/vz;->port:I

    goto :goto_0

    .line 918
    :cond_0
    iget-object v7, v9, Lo/vz;->bog:Ljava/lang/String;

    .line 919
    iget v8, v9, Lo/vz;->boh:I

    .line 921
    :goto_0
    const/4 v10, 0x0

    .line 922
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_1

    .line 923
    const/4 v10, 0x1

    .line 924
    invoke-direct {p0}, Lo/aet;->yC()V

    .line 925
    iget-object v11, p0, Lo/aet;->bAV:Lo/akq;

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aet;->bAV:Lo/akq;

    .line 927
    invoke-virtual {v11}, Lo/akq;->shutdown()V

    .line 929
    :cond_1
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up RTMP with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wasRunning was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 930
    new-instance v0, Lo/akq;

    move-object v1, v7

    iget-object v2, v9, Lo/vz;->boc:Ljava/lang/String;

    move v3, v8

    iget-object v4, v9, Lo/vz;->bod:Ljava/lang/String;

    iget-object v5, v9, Lo/vz;->boe:Ljava/lang/String;

    iget-object v6, v9, Lo/vz;->bof:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lo/akq;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    .line 933
    invoke-virtual {v11, p0}, Lo/akq;->ˊ(Lo/akq$ˊ;)V

    .line 934
    iget-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    invoke-virtual {v11, v0}, Lo/akq;->ˊ(Ljava/util/HashMap;)V

    .line 935
    if-eqz v10, :cond_2

    .line 936
    iget-object v0, p0, Lo/aet;->bBH:Landroid/media/MediaFormat;

    iget-object v1, p0, Lo/aet;->bBI:Landroid/media/MediaFormat;

    invoke-virtual {v11, v0, v1}, Lo/akq;->ˊ(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 938
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->ut()V

    .line 940
    invoke-virtual {v11}, Lo/akq;->AS()V

    .line 942
    :cond_2
    iput-object v11, p0, Lo/aet;->bAV:Lo/akq;

    .line 943
    invoke-direct {p0}, Lo/aet;->yB()V

    .line 944
    return-void
.end method

.method private yw()V
    .locals 2

    .line 1051
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    return-void
.end method

.method private yz()Ljava/lang/String;
    .locals 2

    .line 1143
    iget-boolean v0, p0, Lo/aet;->bAT:Z

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    invoke-virtual {v0}, Lo/abr;->wz()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1146
    :cond_0
    const-string v1, ""

    .line 1148
    :goto_0
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    invoke-virtual {v0}, Lo/abr;->wA()V

    .line 1149
    return-object v1
.end method

.method static synthetic ʳ(Lo/aet;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/aet;->yA()V

    return-void
.end method

.method static synthetic ʹ(Lo/aet;)Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/aet;->bBG:Z

    return v0
.end method

.method static synthetic ʻ(Lo/aet;)Lo/ahe;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBo:Lo/ahe;

    return-object v0
.end method

.method static synthetic ʼ(Lo/aet;)Lo/ahb;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    return-object v0
.end method

.method static synthetic ʽ(Lo/aet;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/aet;->yt()V

    return-void
.end method

.method static synthetic ʾ(Lo/aet;)Lo/yz;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bxD:Lo/yz;

    return-object v0
.end method

.method private ʿ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lo/aet;->bxA:Ljava/lang/String;

    invoke-static {}, Lo/akn;->AB()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p3, p1, p2}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/ant;

    move-result-object v2

    .line 423
    iget-object v0, p0, Lo/aet;->bxD:Lo/yz;

    iget-object v1, p0, Lo/aet;->bBe:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 424
    iget-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    invoke-virtual {v0, v2}, Lo/ahb;->ˍ(Lo/ant;)V

    .line 425
    return-void
.end method

.method static synthetic ʿ(Lo/aet;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/aet;->yr()V

    return-void
.end method

.method static synthetic ˈ(Lo/aet;)Lo/aei;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    return-object v0
.end method

.method static synthetic ˉ(Lo/aet;)Lo/adw;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    return-object v0
.end method

.method static synthetic ˊ(Lo/aet;J)J
    .locals 0

    .line 93
    iput-wide p1, p0, Lo/aet;->bBL:J

    return-wide p1
.end method

.method static synthetic ˊ(Lo/aet;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lo/aet;->ᒻ(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/aet;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/aet;->yu()V

    return-void
.end method

.method static synthetic ˊ(Lo/aet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lo/aet;->ʿ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ˊ(Lo/aet;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lo/aet;->ᕐ(Z)V

    return-void
.end method

.method static synthetic ˊ(Lo/aet;ZILandroid/graphics/Typeface;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lo/aet;->ˊ(ZILandroid/graphics/Typeface;)V

    return-void
.end method

.method private ˊ(Lo/aju;)V
    .locals 15

    .line 432
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amc;

    move-object v10, v0

    .line 433
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v11, v0

    .line 434
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    .line 435
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amc;

    move-object v13, v0

    .line 436
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amc;

    move-object v14, v0

    .line 438
    new-instance v0, Lo/afi;

    new-instance v7, Lo/aff;

    invoke-direct {v7, p0}, Lo/aff;-><init>(Lo/aet;)V

    move-object v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object v4, v10

    move-object v5, v13

    move-object v6, v14

    const/16 v8, 0x64

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lo/afi;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/TextView;Lo/amc;Lo/amc;Lo/amc;Lo/afi$if;ILo/aju;)V

    iput-object v0, p0, Lo/aet;->bBh:Lo/afi;

    .line 455
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0, p0}, Lo/afi;->ˊ(Lo/afi$ˊ;)V

    .line 456
    return-void
.end method

.method private ˊ(ZILandroid/graphics/Typeface;)V
    .locals 1

    .line 1045
    iget-object v0, p0, Lo/aet;->bBb:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1046
    iget-object v0, p0, Lo/aet;->bBb:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 1047
    iget-object v0, p0, Lo/aet;->bBb:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1048
    return-void
.end method

.method private ˋ(FI)F
    .locals 3

    .line 897
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    int-to-float v1, p2

    sub-float v2, v0, v1

    .line 900
    const/high16 v0, 0x42820000    # 65.0f

    mul-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic ˋ(Lo/aet;J)J
    .locals 0

    .line 93
    iput-wide p1, p0, Lo/aet;->bBM:J

    return-wide p1
.end method

.method static synthetic ˋ(Lo/aet;)Ljava/lang/Runnable;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBt:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˌ(Lo/aet;)Lo/ads;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBK:Lo/ads;

    return-object v0
.end method

.method static synthetic ˍ(Lo/aet;)Ljava/lang/Runnable;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBN:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˎ(Lo/aet;J)J
    .locals 0

    .line 93
    iput-wide p1, p0, Lo/aet;->bBS:J

    return-wide p1
.end method

.method static synthetic ˎ(Lo/aet;)Landroid/os/Handler;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ˎ(FI)Z
    .locals 2

    .line 907
    mul-int/lit16 v0, p2, 0x400

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˏ(Lo/aet;)Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBs:Landroid/view/View;

    return-object v0
.end method

.method private ˏ(ZI)V
    .locals 3

    .line 717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lo/aet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {p0, v1}, Lo/aet;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lo/aet$if;

    invoke-direct {v2, p0, p1}, Lo/aet$if;-><init>(Lo/aet;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lo/aet;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 723
    return-void
.end method

.method static synthetic ˑ(Lo/aet;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/aet;->yp()V

    return-void
.end method

.method static synthetic ͺ(Lo/aet;)Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/aet;->bBj:Z

    return v0
.end method

.method static synthetic ՙ(Lo/aet;)Landroid/graphics/Typeface;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBF:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic י(Lo/aet;)Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/aet;->bBk:Z

    return v0
.end method

.method static synthetic ـ(Lo/aet;)Lo/vn;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ٴ(Lo/aet;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bwV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/aet;)Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBQ:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ᐧ(Lo/aet;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ᐨ(Lo/aet;)Lo/abr;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    return-object v0
.end method

.method private ᒻ(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    .line 601
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 602
    invoke-static {p0}, Lo/alk;->ᵌ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    new-instance v0, Lo/aev;

    invoke-direct {v0, p0, p1}, Lo/aev;-><init>(Lo/aet;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ᕐ(Z)V
    .locals 5

    .line 662
    move-object v3, p0

    monitor-enter v3

    .line 663
    :try_start_0
    iget-boolean v0, p0, Lo/aet;->bBk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 664
    monitor-exit v3

    return-void

    .line 666
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lo/aet;->bBk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 669
    :goto_0
    invoke-direct {p0}, Lo/aet;->uq()V

    .line 671
    iget-object v0, p0, Lo/aet;->bxA:Ljava/lang/String;

    invoke-static {}, Lo/akn;->AB()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ant;->ˊ(Ljava/lang/String;Ljava/math/BigInteger;)Lo/ant;

    move-result-object v3

    .line 672
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "sending message END BROADCAST"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lo/aet;->bxD:Lo/yz;

    iget-object v1, p0, Lo/aet;->bBe:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lo/yz;->ˊ(Ljava/lang/String;Lo/ant;)V

    .line 675
    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-direct {p0}, Lo/aet;->yz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/vn;->ᐠ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    if-eqz p1, :cond_1

    .line 678
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "e_b_id"

    iget-object v2, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_p_mode"

    sget-object v2, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_saved"

    iget-object v2, p0, Lo/aet;->bBz:Lo/ady;

    invoke-interface {v2}, Lo/ady;->xu()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "e_saved_file"

    iget-object v2, p0, Lo/aet;->bBJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/aet;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aet;->bBl:Z

    .line 687
    :cond_1
    invoke-virtual {p0}, Lo/aet;->finish()V

    .line 688
    return-void
.end method

.method private ᕝ(Z)V
    .locals 1

    .line 1153
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    invoke-virtual {v0, p1}, Lo/abr;->ᒾ(Z)V

    .line 1154
    return-void
.end method

.method static synthetic ᴵ(Lo/aet;)Ljava/lang/String;
    .locals 1

    .line 93
    invoke-direct {p0}, Lo/aet;->yz()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ᵎ(Lo/aet;)Lo/vn;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ᵔ(Lo/aet;)Lo/akq;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    return-object v0
.end method

.method static synthetic ᵢ(Lo/aet;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lo/aet;->bBL:J

    return-wide v0
.end method

.method static synthetic ι(Lo/aet;)Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bxA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ⁱ(Lo/aet;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lo/aet;->bBM:J

    return-wide v0
.end method

.method static synthetic ﹳ(Lo/aet;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bBr:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic ﹶ(Lo/aet;)J
    .locals 2

    .line 93
    iget-wide v0, p0, Lo/aet;->bBS:J

    return-wide v0
.end method

.method static synthetic ﹺ(Lo/aet;)Lo/akp;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bAW:Lo/akp;

    return-object v0
.end method

.method static synthetic ｰ(Lo/aet;)Ljava/util/HashMap;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->brZ:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic ﾞ(Lo/aet;)Lo/yp;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 496
    invoke-super {p0, p1, p2, p3}, Lo/ado;->onActivityResult(IILandroid/content/Intent;)V

    .line 497
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0, p1, p2, p3}, Lo/afi;->ˋ(IILandroid/content/Intent;)Z

    .line 498
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 700
    iget-object v0, p0, Lo/aet;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lo/aet;->bBg:Lo/ajw;

    invoke-virtual {v0}, Lo/ajw;->hide()V

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lo/aet;->bBK:Lo/ads;

    invoke-virtual {v0}, Lo/ads;->xf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lo/aet;->bBK:Lo/ads;

    invoke-virtual {v0}, Lo/ads;->xe()V

    goto :goto_0

    .line 704
    :cond_1
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ᕀ(Landroid/view/View;)V

    goto :goto_0

    .line 706
    :cond_2
    iget-boolean v0, p0, Lo/aet;->bBf:Z

    if-eqz v0, :cond_3

    .line 707
    const/4 v0, 0x0

    const v1, 0x7f06007b

    invoke-direct {p0, v0, v1}, Lo/aet;->ˏ(ZI)V

    goto :goto_0

    .line 708
    :cond_3
    iget-object v0, p0, Lo/aet;->bBc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 709
    const/4 v0, 0x1

    const v1, 0x7f06007a

    invoke-direct {p0, v0, v1}, Lo/aet;->ˏ(ZI)V

    goto :goto_0

    .line 711
    :cond_4
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 712
    const v0, 0x7f04000a

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Lo/aet;->overridePendingTransition(II)V

    .line 714
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 517
    :sswitch_0
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBP:Lo/afm;

    invoke-virtual {v0, v1}, Lo/adw;->ι(Landroid/view/View;)V

    .line 518
    goto :goto_0

    .line 521
    :sswitch_1
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ι(Landroid/view/View;)V

    .line 522
    goto :goto_0

    .line 525
    :sswitch_2
    invoke-virtual {p0}, Lo/aet;->onBackPressed()V

    .line 526
    goto :goto_0

    .line 529
    :sswitch_3
    invoke-direct {p0}, Lo/aet;->up()V

    .line 530
    goto :goto_0

    .line 533
    :sswitch_4
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBP:Lo/afm;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lo/vi$if;->bmG:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 535
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "Stop Broadcast pressed"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/aet;->ᕐ(Z)V

    goto :goto_0

    .line 541
    :sswitch_5
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBP:Lo/afm;

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lo/vi$if;->bmI:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 543
    invoke-direct {p0}, Lo/aet;->yp()V

    goto :goto_0

    .line 548
    :sswitch_6
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    iget-object v1, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0, v1}, Lo/adw;->ι(Landroid/view/View;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0060 -> :sswitch_1
        0x7f0b0087 -> :sswitch_5
        0x7f0b0088 -> :sswitch_4
        0x7f0b008e -> :sswitch_0
        0x7f0b0091 -> :sswitch_2
        0x7f0b0096 -> :sswitch_3
        0x7f0b0099 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 208
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lo/aet;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lo/aet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 213
    invoke-static {}, Lo/vf;->tL()Lo/zp;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bnB:Lo/zp;

    .line 214
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bnA:Lo/aad;

    .line 216
    new-instance v0, Lo/abr;

    invoke-direct {v0}, Lo/abr;-><init>()V

    iput-object v0, p0, Lo/aet;->bAS:Lo/abr;

    .line 217
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    invoke-static {v0}, Lo/akk;->ˊ(Lo/abs;)V

    .line 218
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/adw;

    iput-object v0, p0, Lo/aet;->byT:Lo/adw;

    .line 219
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/adw;->setDraggable(Z)V

    .line 220
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lo/adw;->setFriction(F)V

    .line 221
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    new-instance v1, Lo/afa;

    invoke-direct {v1, p0}, Lo/afa;-><init>(Lo/aet;)V

    invoke-virtual {v0, v1}, Lo/adw;->setOnViewDragListener(Lo/adw$ˋ;)V

    .line 270
    iget-object v0, p0, Lo/aet;->byT:Lo/adw;

    new-instance v1, Lo/afb;

    invoke-direct {v1, p0}, Lo/afb;-><init>(Lo/aet;)V

    invoke-virtual {v0, v1}, Lo/adw;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 281
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/afm;

    iput-object v0, p0, Lo/aet;->bBP:Lo/afm;

    .line 282
    iget-object v0, p0, Lo/aet;->bBP:Lo/afm;

    new-instance v1, Lo/afc;

    invoke-direct {v1, p0}, Lo/afc;-><init>(Lo/aet;)V

    invoke-virtual {v0, v1}, Lo/afm;->setGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 309
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bAZ:Landroid/view/View;

    .line 310
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lo/aet;->bBc:Landroid/widget/EditText;

    .line 312
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBa:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lo/aet;->bBa:Landroid/view/View;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lo/aet;->bBa:Landroid/view/View;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const-string v0, "fonts/MuseoSans-500.otf"

    invoke-static {p0, v0}, Lo/amm;->ͺ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBE:Landroid/graphics/Typeface;

    .line 319
    const-string v0, "fonts/MuseoSans-700.otf"

    invoke-static {p0, v0}, Lo/amm;->ͺ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBF:Landroid/graphics/Typeface;

    .line 321
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lo/aet;->bBb:Landroid/widget/Button;

    .line 322
    iget-object v0, p0, Lo/aet;->bBb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lo/aet;->bBE:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    const v2, 0x7f060097

    invoke-direct {p0, v1, v2, v0}, Lo/aet;->ˊ(ZILandroid/graphics/Typeface;)V

    .line 325
    invoke-virtual {p0}, Lo/aet;->xa()Lo/ot;

    move-result-object v7

    .line 326
    iget-object v8, p0, Lo/aet;->bnA:Lo/aad;

    .line 327
    move-object v9, p0

    .line 328
    new-instance v0, Lo/abv;

    iget-object v1, p0, Lo/aet;->bAS:Lo/abr;

    invoke-direct {v0, v7, v8, v9, v1}, Lo/abv;-><init>(Lo/ot;Lo/aad;Lo/aek$ˊ;Lo/abs;)V

    iput-object v0, p0, Lo/aet;->bBn:Lo/abv;

    .line 330
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alo;

    iput-object v0, p0, Lo/aet;->byD:Lo/alo;

    .line 331
    new-instance v0, Lo/afd;

    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v3

    iget-object v4, p0, Lo/aet;->bnA:Lo/aad;

    iget-object v5, p0, Lo/aet;->byD:Lo/alo;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lo/afd;-><init>(Lo/aet;Landroid/content/Context;Lo/vn;Lo/aad;Lo/alo;)V

    iput-object v0, p0, Lo/aet;->bBA:Lo/adj;

    .line 340
    iget-object v0, p0, Lo/aet;->byD:Lo/alo;

    iget-object v1, p0, Lo/aet;->bBA:Lo/adj;

    invoke-virtual {v0, v1}, Lo/alo;->setDelegate(Lo/als;)V

    .line 341
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ajw;

    iput-object v0, p0, Lo/aet;->bBg:Lo/ajw;

    .line 342
    iget-object v0, p0, Lo/aet;->bBg:Lo/ajw;

    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Lo/ajw;->ں(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0600d0

    invoke-virtual {v0, v1}, Lo/ajw;->ܥ(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0b010f

    invoke-virtual {v0, v1}, Lo/ajw;->ধ(I)Lo/ajw;

    move-result-object v0

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Lo/ajw;->ร(I)Lo/ajw;

    .line 346
    new-instance v0, Lo/ajv;

    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v1

    iget-object v2, p0, Lo/aet;->bBg:Lo/ajw;

    invoke-direct {v0, v1, v2}, Lo/ajv;-><init>(Lo/vn;Lo/ajw;)V

    iput-object v0, p0, Lo/aet;->bBB:Lo/aju;

    .line 348
    new-instance v0, Lo/ads;

    iget-object v1, p0, Lo/aet;->byT:Lo/adw;

    const v2, 0x7f0b009d

    invoke-virtual {p0, v2}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/alf;

    iget-object v3, p0, Lo/aet;->bBA:Lo/adj;

    invoke-direct {v0, v1, v2, v3}, Lo/ads;-><init>(Lo/adw;Lo/alf;Lo/amw;)V

    iput-object v0, p0, Lo/aet;->bBK:Lo/ads;

    .line 351
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ahb;

    iput-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    .line 352
    iget-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    new-instance v1, Lo/agp;

    invoke-direct {v1, p0, p0}, Lo/agp;-><init>(Landroid/content/Context;Lo/afn;)V

    invoke-virtual {v0, v1}, Lo/ahb;->setChatAdapter(Lo/agp;)V

    .line 354
    new-instance v0, Lo/adz;

    invoke-virtual {p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v2

    iget-object v3, p0, Lo/aet;->bBK:Lo/ads;

    iget-object v4, p0, Lo/aet;->bBA:Lo/adj;

    new-instance v6, Lo/afp;

    iget-object v1, p0, Lo/aet;->bBp:Lo/ahb;

    invoke-direct {v6, v1}, Lo/afp;-><init>(Lo/ahb;)V

    move-object v1, p0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lo/adz;-><init>(Landroid/app/Activity;Lo/vn;Lo/alg;Lo/amw;Lo/agd;Lo/afo;)V

    iput-object v0, p0, Lo/aet;->bBz:Lo/ady;

    .line 357
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ahe;

    iput-object v0, p0, Lo/aet;->bBo:Lo/ahe;

    .line 359
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/abl;

    iput-object v0, p0, Lo/aet;->bqq:Lo/abl;

    .line 362
    new-instance v0, Lo/agq;

    iget-object v1, p0, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, p0, v1}, Lo/agq;-><init>(Lo/ot;Lo/agq$if;Ljava/lang/String;)V

    iput-object v0, p0, Lo/aet;->bBi:Lo/agq;

    .line 363
    iget-object v0, p0, Lo/aet;->bBi:Lo/agq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/agq;->Ⅰ(Z)V

    .line 365
    invoke-direct {p0}, Lo/aet;->yo()V

    .line 368
    invoke-static {p0}, Lo/yy;->ᵗ(Landroid/content/Context;)Lo/yp;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bAU:Lo/yp;

    .line 369
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0, p0}, Lo/yp;->ˊ(Lo/yp$if;)V

    .line 370
    new-instance v0, Lo/akp;

    invoke-direct {v0}, Lo/akp;-><init>()V

    iput-object v0, p0, Lo/aet;->bAW:Lo/akp;

    .line 372
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    iget-object v1, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {v1}, Lo/akp;->AH()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Lo/yp;->ﻠ(I)V

    .line 373
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    iget-object v1, p0, Lo/aet;->bqq:Lo/abl;

    invoke-interface {v0, v1}, Lo/yp;->ˊ(Lo/abl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const-string v0, "RTMP"

    const-string v1, "Unable to connect to camera"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    const-string v0, "development"

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_1
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBs:Landroid/view/View;

    .line 383
    new-instance v0, Lo/afe;

    invoke-direct {v0, p0}, Lo/afe;-><init>(Lo/aet;)V

    iput-object v0, p0, Lo/aet;->bBt:Ljava/lang/Runnable;

    .line 390
    iget-object v0, p0, Lo/aet;->bBs:Landroid/view/View;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060049

    invoke-virtual {p0, v1}, Lo/aet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 392
    iget-object v0, p0, Lo/aet;->bBs:Landroid/view/View;

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lo/aet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akn;->ᴗ(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 395
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBQ:Landroid/view/View;

    .line 396
    iget-object v0, p0, Lo/aet;->bBQ:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/aei;

    iput-object v0, p0, Lo/aet;->bBu:Lo/aei;

    .line 399
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0, p0}, Lo/aei;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aei;->setActionButtonVisibility(Z)V

    .line 401
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    invoke-virtual {v0}, Lo/aei;->xJ()V

    .line 403
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lo/aet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aet;->bBD:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lo/aet;->bBD:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lo/aet;->bBD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lo/aet;->bBD:Landroid/view/View;

    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aet;->bBy:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lo/aet;->bBy:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lo/aet;->bBB:Lo/aju;

    invoke-direct {p0, v0}, Lo/aet;->ˊ(Lo/aju;)V

    .line 412
    iget-object v0, p0, Lo/aet;->bBA:Lo/adj;

    invoke-virtual {v7, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    invoke-virtual {v7, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lo/aet;->bBB:Lo/aju;

    invoke-virtual {v7, v0}, Lo/ot;->ʲ(Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .line 461
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->stopPreview()V

    .line 463
    iget-object v0, p0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->uq()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aet;->bAU:Lo/yp;

    .line 467
    :cond_0
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lo/aet;->bBj:Z

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lo/aet;->bxD:Lo/yz;

    iget-object v1, p0, Lo/aet;->bxA:Ljava/lang/String;

    iget-object v2, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/yz;->ᐩ(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aet;->bBj:Z

    .line 473
    :cond_1
    iget-object v0, p0, Lo/aet;->bBn:Lo/abv;

    invoke-virtual {v0}, Lo/abv;->kill()V

    .line 475
    iget-object v0, p0, Lo/aet;->bxD:Lo/yz;

    invoke-virtual {v0}, Lo/yz;->kill()V

    .line 477
    iget-object v0, p0, Lo/aet;->bBi:Lo/agq;

    invoke-virtual {v0}, Lo/agq;->kill()V

    .line 479
    invoke-virtual {p0}, Lo/aet;->xa()Lo/ot;

    move-result-object v3

    .line 480
    iget-object v0, p0, Lo/aet;->bBA:Lo/adj;

    invoke-virtual {v3, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    invoke-virtual {v3, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lo/aet;->bBB:Lo/aju;

    invoke-virtual {v3, v0}, Lo/ot;->ː(Ljava/lang/Object;)V

    .line 484
    iget-boolean v0, p0, Lo/aet;->bBl:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/aet;->bBJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/aet;->bBz:Lo/ady;

    invoke-interface {v0}, Lo/ady;->xu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    const-string v0, "RTMP"

    const-string v1, "Video was not saved to camera, deleting"

    invoke-static {v0, v1}, Lo/akk;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lo/aet;->bBJ:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 490
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lo/akk;->ˊ(Lo/abs;)V

    .line 491
    invoke-super {p0}, Lo/ado;->onDestroy()V

    .line 492
    return-void
.end method

.method public onEventMainThread(Lo/aai;)V
    .locals 20

    .line 765
    sget-object v0, Lo/aet$1;->bnK:[I

    move-object/from16 v1, p1

    iget-object v1, v1, Lo/aai;->bsV:Lo/aai$if;

    invoke-virtual {v1}, Lo/aai$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 767
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "createBroadcast succeeded"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vz;

    move-object v15, v0

    .line 771
    iget-object v0, v15, Lo/vz;->bnr:Lo/xh;

    iget-object v0, v0, Lo/xh;->id:Ljava/lang/String;

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aet;->bwV:Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iput-object v15, v0, Lo/aet;->bBd:Lo/vz;

    .line 773
    invoke-direct/range {p0 .. p0}, Lo/aet;->yv()V

    .line 777
    const-string v0, "RTMP"

    const-string v1, "Starting encoding"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAU:Lo/yp;

    invoke-interface {v0}, Lo/yp;->uo()V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᴲ(Ljava/lang/String;)Ljava/lang/String;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBC:Lo/aet$ˋ;

    iget-object v1, v15, Lo/vz;->boj:Ljava/lang/String;

    iput-object v1, v0, Lo/aet$ˋ;->boi:Ljava/lang/String;

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBC:Lo/aet$ˋ;

    invoke-virtual {v0}, Lo/aet$ˋ;->upload()V

    .line 786
    goto/16 :goto_3

    .line 788
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBroadcast: FAILED! error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    iget-object v2, v2, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 790
    goto/16 :goto_3

    .line 793
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "publishBroadcast succeeded"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᴬ(Ljava/lang/String;)Ljava/lang/String;

    .line 796
    invoke-direct/range {p0 .. p0}, Lo/aet;->yw()V

    goto/16 :goto_3

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishBroadcast: FAILED! error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    iget-object v2, v2, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 801
    goto/16 :goto_3

    .line 804
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 805
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/vm;

    move-object v15, v0

    .line 806
    iget-object v0, v15, Lo/vm;->bnr:Lo/xh;

    iget-object v0, v0, Lo/xh;->id:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/aet;->bBj:Z

    if-eqz v0, :cond_2

    .line 807
    goto/16 :goto_3

    .line 809
    :cond_2
    iget-boolean v0, v15, Lo/vm;->bnu:Z

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/aet;->bAT:Z

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "accessChannel succeeded"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 811
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/aet;->bBj:Z

    .line 812
    iget-object v0, v15, Lo/vm;->bnm:Ljava/lang/String;

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aet;->bxA:Ljava/lang/String;

    .line 813
    iget-object v0, v15, Lo/vm;->bns:Ljava/lang/String;

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aet;->bBe:Ljava/lang/String;

    .line 814
    iget-object v0, v15, Lo/vm;->bnr:Lo/xh;

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aet;->bBv:Lo/xh;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yG()V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bxD:Lo/yz;

    iget-object v1, v15, Lo/vm;->bnj:Ljava/lang/String;

    iget-object v2, v15, Lo/vm;->bni:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lo/yz;->ʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Joining channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lo/vm;->bnm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 819
    new-instance v16, Lo/acr;

    iget-object v0, v15, Lo/vm;->bnt:Ljava/lang/String;

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Lo/acr;-><init>(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bxD:Lo/yz;

    iget-object v1, v15, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v2, v15, Lo/vm;->bnk:Ljava/lang/String;

    new-instance v3, Lo/acu;

    const-string v4, "SHA256withECDSA"

    const-string v5, "SC"

    move-object/from16 v6, v16

    invoke-direct {v3, v6, v4, v5}, Lo/acu;-><init>(Lo/acs;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v15, Lo/vm;->bnv:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v5, p0

    iget-object v5, v5, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v5}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    iget-object v6, v6, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v6}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    iget-object v7, v7, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v7}, Lo/aad;->vp()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p0

    iget-object v8, v8, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v8}, Lo/aad;->vu()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p0

    iget-object v9, v9, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v9}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v9

    iget v10, v15, Lo/vm;->bnl:I

    move-object/from16 v11, p0

    iget-object v11, v11, Lo/aet;->bwV:Ljava/lang/String;

    iget-object v12, v15, Lo/vm;->Rp:Ljava/lang/String;

    iget-object v13, v15, Lo/vm;->key:[B

    iget-object v14, v15, Lo/vm;->bnw:Ljava/lang/String;

    invoke-virtual/range {v0 .. v14}, Lo/yz;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/acu;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBn:Lo/abv;

    iget-object v1, v15, Lo/vm;->bnm:Ljava/lang/String;

    iget-object v2, v15, Lo/vm;->bnr:Lo/xh;

    iget-object v2, v2, Lo/xh;->id:Ljava/lang/String;

    iget-object v3, v15, Lo/vm;->bnr:Lo/xh;

    iget-object v3, v3, Lo/xh;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lo/abv;->ʽ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    goto :goto_0

    .line 829
    :catch_0
    move-exception v16

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessChannel: FAILED! error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    iget-object v2, v2, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    :goto_0
    goto/16 :goto_3

    .line 838
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 839
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/wo;

    move-object v15, v0

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bwV:Ljava/lang/String;

    iget-object v1, v15, Lo/wo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, v15, Lo/wo;->url:Ljava/lang/String;

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/aet;->bBm:Ljava/lang/String;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBh:Lo/afi;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bBm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/afi;->ڌ(Ljava/lang/String;)V

    .line 844
    :cond_3
    goto/16 :goto_3

    .line 848
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 849
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/aai;->data:Ljava/lang/Object;

    check-cast v0, Lo/yi;

    move-object v15, v0

    .line 852
    iget v0, v15, Lo/yi;->bqf:F

    move/from16 v16, v0

    .line 853
    move-object/from16 v0, p0

    move/from16 v1, v16

    const/16 v2, 0xfa0

    invoke-direct {v0, v1, v2}, Lo/aet;->ˋ(FI)F

    move-result v17

    .line 856
    move-object/from16 v0, p0

    move/from16 v1, v17

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Lo/aet;->ˎ(FI)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    .line 857
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v1, v1, v16

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Video rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kbits/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 858
    const-string v0, "RTMP"

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    if-eqz v18, :cond_5

    .line 860
    const-string v0, "RTMP"

    const-string v1, "Video byterate is acceptable."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/aet;->bBG:Z

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAW:Lo/akp;

    move/from16 v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lo/akp;->ᐜ(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAU:Lo/yp;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {v1}, Lo/akp;->AH()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Lo/yp;->ﻠ(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "creating Broadcast"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Lo/aet;->wZ()Lo/vn;

    move-result-object v0

    iget-object v1, v15, Lo/yi;->bnZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᵁ(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 871
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBE:Landroid/graphics/Typeface;

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const v3, 0x7f060025

    invoke-direct {v1, v2, v3, v0}, Lo/aet;->ˊ(ZILandroid/graphics/Typeface;)V

    .line 872
    const-string v0, "RTMP"

    const-string v1, "Video byterate is NOT acceptable."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_2
    goto :goto_3

    .line 875
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aet;->bBE:Landroid/graphics/Typeface;

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const v3, 0x7f060026

    invoke-direct {v1, v2, v3, v0}, Lo/aet;->ˊ(ZILandroid/graphics/Typeface;)V

    .line 877
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred testing video byterates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    iget-object v2, v2, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    goto :goto_3

    .line 882
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/aet;->ᕝ(Z)V

    .line 883
    goto :goto_3

    .line 886
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lo/aai;->vA()Z

    move-result v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/aet;->ᕝ(Z)V

    .line 887
    .line 893
    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 6

    .line 745
    sget-object v0, Lo/aet$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 747
    :sswitch_0
    iget-object v0, p0, Lo/aet;->bBw:Lo/adx;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Lo/aej;

    iget-object v2, p0, Lo/aet;->bnA:Lo/aad;

    iget-object v3, p0, Lo/aet;->bnB:Lo/zp;

    iget-object v4, p0, Lo/aet;->bBz:Lo/ady;

    iget-object v5, p0, Lo/aet;->bwV:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/aej;-><init>(Landroid/content/Context;Lo/aad;Lo/zp;Lo/ady;Ljava/lang/String;)V

    iput-object v0, p0, Lo/aet;->bBx:Lo/aej;

    .line 750
    new-instance v0, Lo/adx;

    iget-object v1, p0, Lo/aet;->bBx:Lo/aej;

    iget-object v2, p0, Lo/aet;->bBz:Lo/ady;

    invoke-direct {v0, p0, v1, v2}, Lo/adx;-><init>(Landroid/content/Context;Lo/aej;Lo/ady;)V

    iput-object v0, p0, Lo/aet;->bBw:Lo/adx;

    .line 752
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    iget-object v1, p0, Lo/aet;->bBw:Lo/adx;

    invoke-virtual {v0, v1}, Lo/aei;->setAdapter(Lo/adx;)V

    .line 755
    :cond_0
    iget-object v0, p0, Lo/aet;->bBx:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->xL()V

    .line 756
    iget-object v0, p0, Lo/aet;->bBw:Lo/adx;

    invoke-virtual {v0}, Lo/adx;->notifyDataSetChanged()V

    .line 757
    iget-object v0, p0, Lo/aet;->bBu:Lo/aei;

    iget-object v1, p0, Lo/aet;->bBv:Lo/xh;

    invoke-virtual {v1}, Lo/xh;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aet;->bBv:Lo/xh;

    invoke-virtual {v2}, Lo/xh;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/aei;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 761
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .line 956
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yF()V

    .line 958
    invoke-super {p0}, Lo/ado;->onPause()V

    .line 959
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 948
    invoke-super {p0}, Lo/ado;->onResume()V

    .line 949
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 950
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yE()V

    .line 952
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 963
    invoke-super {p0}, Lo/ado;->onStart()V

    .line 964
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->yD()V

    .line 966
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 970
    invoke-super {p0}, Lo/ado;->onStop()V

    .line 971
    iget-object v0, p0, Lo/aet;->bAS:Lo/abr;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lo/abr;->log(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lo/aet;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "RTMP"

    const-string v1, "onStop and Finishing, ending broadcast"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/aet;->ᕐ(Z)V

    goto :goto_0

    .line 977
    :cond_0
    const-string v0, "RTMP"

    const-string v1, "Unexpected onStop, setting 5000 second timer to end broadcast."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lo/aet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/aet;->bBO:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    :goto_0
    iget-object v0, p0, Lo/aet;->bBh:Lo/afi;

    invoke-virtual {v0}, Lo/afi;->onActivityStop()V

    .line 981
    return-void
.end method

.method public uu()V
    .locals 0

    .line 985
    return-void
.end method

.method public xT()Ljava/math/BigInteger;
    .locals 1

    .line 1113
    invoke-static {}, Lo/akn;->AB()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public xV()J
    .locals 2

    .line 1097
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public xW()J
    .locals 2

    .line 1102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted getTotalDuration on live broadcast"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ym()Ljava/math/BigInteger;
    .locals 1

    .line 1118
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public yn()Z
    .locals 1

    .line 1107
    const/4 v0, 0x1

    return v0
.end method

.method public yx()V
    .locals 0

    .line 1068
    return-void
.end method

.method public yy()V
    .locals 0

    .line 1073
    return-void
.end method

.method public ɫ(I)V
    .locals 5

    .line 1077
    iget-object v0, p0, Lo/aet;->bBy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/aet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-long v2, p1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    return-void
.end method

.method public ʾ(Ljava/lang/String;I)V
    .locals 3

    .line 1087
    iget-object v0, p0, Lo/aet;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aet;->bwV:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1088
    return-void
.end method

.method public ʾ(Lo/ant;)V
    .locals 1

    .line 1062
    iget-object v0, p0, Lo/aet;->bBp:Lo/ahb;

    invoke-virtual {v0, p1}, Lo/ahb;->ˍ(Lo/ant;)V

    .line 1063
    return-void
.end method

.method public ʿ(Lo/ant;)V
    .locals 0

    .line 1093
    return-void
.end method

.method public ˊ(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 1

    .line 1013
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1014
    iput-object p1, p0, Lo/aet;->bBH:Landroid/media/MediaFormat;

    .line 1015
    iput-object p2, p0, Lo/aet;->bBI:Landroid/media/MediaFormat;

    .line 1016
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    invoke-virtual {v0, p1, p2}, Lo/akq;->ˊ(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 1020
    :cond_0
    return-void
.end method

.method public ˊ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .line 995
    move-object v6, p0

    monitor-enter v6

    .line 996
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/aet;->bBM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 998
    :goto_0
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    invoke-virtual {v0, p1, p2}, Lo/akq;->ˊ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1000
    iget-object v0, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lo/akp;->ˊ(ID)V

    .line 1002
    :cond_0
    return-void
.end method

.method public ˊ(Lo/akq$if;)V
    .locals 2

    .line 1025
    sget-object v0, Lo/aet$1;->bBX:[I

    invoke-virtual {p1}, Lo/akq$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1029
    :sswitch_0
    new-instance v0, Lo/aex;

    invoke-direct {v0, p0}, Lo/aex;-><init>(Lo/aet;)V

    invoke-virtual {p0, v0}, Lo/aet;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1042
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 1005
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lo/aet;->bAV:Lo/akq;

    invoke-virtual {v0, p1, p2}, Lo/akq;->ˋ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1007
    iget-object v0, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lo/akp;->ˋ(ID)V

    .line 1009
    :cond_0
    return-void
.end method

.method public ˋ(Lo/ant;Lo/vk;)V
    .locals 1

    .line 1124
    iget-object v0, p0, Lo/aet;->bBK:Lo/ads;

    invoke-virtual {v0, p1, p2}, Lo/ads;->ˊ(Lo/ant;Lo/vk;)V

    .line 1125
    return-void
.end method

.method public ٴ(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 502
    iget-boolean v3, p0, Lo/aet;->bAY:Z

    .line 503
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/aet;->bAY:Z

    .line 506
    iget-object v0, p0, Lo/aet;->bBd:Lo/vz;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/aet;->bAY:Z

    if-eq v3, v0, :cond_2

    .line 507
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lo/aet;->bAY:Z

    if-eqz v2, :cond_1

    const-string v2, "to"

    goto :goto_1

    :cond_1
    const-string v2, "from"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lo/aet;->bBE:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    const v2, 0x7f060097

    invoke-direct {p0, v1, v2, v0}, Lo/aet;->ˊ(ZILandroid/graphics/Typeface;)V

    .line 509
    invoke-direct {p0}, Lo/aet;->yv()V

    .line 511
    :cond_2
    return-void
.end method

.method public ᒾ([B)V
    .locals 1

    .line 989
    iget-object v0, p0, Lo/aet;->bBC:Lo/aet$ˋ;

    iput-object p1, v0, Lo/aet$ˋ;->bBY:[B

    .line 990
    iget-object v0, p0, Lo/aet;->bBC:Lo/aet$ˋ;

    invoke-virtual {v0}, Lo/aet$ˋ;->upload()V

    .line 991
    return-void
.end method

.method public ᴵ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/anv;>;)V"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lo/aet;->bnA:Lo/aad;

    iget-object v1, p0, Lo/aet;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aet;->bwV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1083
    return-void
.end method

.method public ι(Lo/ant;)V
    .locals 3

    .line 1056
    iget-object v0, p0, Lo/aet;->bBo:Lo/ahe;

    invoke-virtual {p0}, Lo/aet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ahe;->Ѓ(I)V

    .line 1058
    return-void
.end method

.method public ﹸ(J)Z
    .locals 6

    .line 1158
    long-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double v4, v0, v2

    .line 1159
    iget-object v0, p0, Lo/aet;->bAW:Lo/akp;

    invoke-virtual {v0, v4, v5}, Lo/akp;->ˏ(D)Z

    move-result v0

    return v0
.end method
