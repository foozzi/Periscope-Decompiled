.class abstract Lo/ku;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ku$if;
    }
.end annotation


# static fields
.field protected static VERSION:Ljava/lang/String;


# instance fields
.field protected NW:Ljava/util/Hashtable;

.field private Oa:Ljava/lang/String;

.field private Ob:I

.field private Oc:Ljava/lang/String;

.field private Od:Ljava/lang/String;

.field protected Oe:Ljava/lang/String;

.field protected Of:Ljava/lang/String;

.field protected Og:Ljava/lang/String;

.field private Oh:Ljava/lang/String;

.field private Oi:Ljava/lang/String;

.field private volatile Oj:Ljava/lang/String;

.field private volatile Ok:Z

.field private volatile Ol:Z

.field private Om:Z

.field private On:Lo/lp;

.field private Oo:Lo/lp;

.field protected Op:Lo/lm;

.field protected Oq:Lo/kr;

.field protected Or:Lo/lr;

.field private volatile Os:Ljava/lang/String;

.field private volatile Ot:Ljava/lang/String;

.field private Ou:Ljava/lang/String;

.field private Ov:Ljava/util/Random;

.field private Ow:I

.field private Ox:I

.field private volatile Oy:I

.field private Oz:Lo/ki;

.field protected UUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, ""

    sput-object v0, Lo/ku;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "pubsub"

    iput-object v0, p0, Lo/ku;->Oa:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lo/ku;->Ob:I

    .line 27
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lo/ku;->Oc:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lo/ku;->Oe:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lo/ku;->Og:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ku;->Oi:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ku;->Oj:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ku;->Ok:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ku;->Om:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ku;->UUID:Ljava/lang/String;

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lo/ku;->Ot:Ljava/lang/String;

    .line 51
    const-string v0, "-pnpres"

    iput-object v0, p0, Lo/ku;->Ou:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/ku;->Ov:Ljava/util/Random;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lo/ku;->Ow:I

    .line 58
    const/16 v0, 0x140

    iput v0, p0, Lo/ku;->Ox:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lo/ku;->Oy:I

    .line 306
    new-instance v0, Lo/kv;

    invoke-direct {v0, p0}, Lo/kv;-><init>(Lo/ku;)V

    iput-object v0, p0, Lo/ku;->Oz:Lo/ki;

    .line 449
    invoke-direct/range {p0 .. p5}, Lo/ku;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    return-void
.end method

.method private aA()I
    .locals 1

    .line 2621
    iget-object v0, p0, Lo/ku;->Ov:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method private aB()V
    .locals 1

    .line 2625
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 2626
    invoke-direct {p0}, Lo/ku;->aA()I

    move-result v0

    iput v0, p0, Lo/ku;->Ob:I

    .line 2627
    return-void
.end method

.method private aC()V
    .locals 2

    .line 2630
    invoke-direct {p0}, Lo/ku;->aB()V

    .line 2631
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    iput-object v0, p0, Lo/ku;->Ot:Ljava/lang/String;

    .line 2633
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before Resubscribe Timetoken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Before Resubscribe Saved Timetoken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Ot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 2636
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/ku;->ʻ(ZZ)V

    .line 2637
    return-void
.end method

.method private ay()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    iget-object v0, v0, Lo/lp;->PH:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    iget-object v0, v0, Lo/lp;->PH:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic ʻ(Lo/ku;)Lo/lp;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    return-object v0
.end method

.method private ʻ(Ljava/util/Hashtable;)V
    .locals 10

    .line 2292
    const-string v0, "channels"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 2293
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 2295
    if-nez v2, :cond_0

    .line 2296
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    .line 2299
    :cond_0
    if-nez v3, :cond_1

    .line 2300
    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    .line 2303
    :cond_1
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ki;

    move-object v4, v0

    .line 2304
    const-string v0, "timetoken"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 2306
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2307
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    iput-object v0, p0, Lo/ku;->Ot:Ljava/lang/String;

    .line 2308
    :cond_2
    if-nez v5, :cond_3

    const-string v0, "0"

    goto :goto_0

    :cond_3
    move-object v0, v5

    :goto_0
    iput-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    .line 2316
    const/4 v6, 0x0

    :goto_1
    array-length v0, v2

    if-ge v6, v0, :cond_5

    .line 2317
    aget-object v7, v2, v6

    .line 2318
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0, v7}, Lo/lp;->ᒻ(Ljava/lang/String;)Lo/lo;

    move-result-object v8

    .line 2320
    if-nez v8, :cond_4

    .line 2321
    new-instance v9, Lo/lo;

    invoke-direct {v9, v7, v4}, Lo/lo;-><init>(Ljava/lang/String;Lo/ki;)V

    .line 2323
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0, v9}, Lo/lp;->ˊ(Lo/lo;)V

    .line 2316
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2327
    :cond_5
    const/4 v6, 0x0

    :goto_2
    array-length v0, v3

    if-ge v6, v0, :cond_7

    .line 2328
    aget-object v7, v3, v6

    .line 2329
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    invoke-virtual {v0, v7}, Lo/lp;->ᒻ(Ljava/lang/String;)Lo/lo;

    move-result-object v8

    .line 2331
    if-nez v8, :cond_6

    .line 2332
    new-instance v9, Lo/lo;

    invoke-direct {v9, v7, v4}, Lo/lo;-><init>(Ljava/lang/String;Lo/ki;)V

    .line 2334
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    invoke-virtual {v0, v9}, Lo/lp;->ˊ(Lo/lo;)V

    .line 2327
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2338
    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ku;->ᔅ(Z)V

    .line 2339
    return-void
.end method

.method private ʻ(ZZ)V
    .locals 1

    .line 2345
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ku;->ˊ(ZZLo/lu;)V

    .line 2346
    return-void
.end method

.method private ˁ(Ljava/lang/String;)V
    .locals 2

    .line 1742
    invoke-static {p1}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v0, v1}, Lo/ku;->ˋ(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 1743
    return-void
.end method

.method static synthetic ˊ(Lo/ku;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-direct {p0}, Lo/ku;->ay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ku;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lo/ku;->Os:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ku;Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ku;->ˊ(Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;
    .locals 1

    .line 1411
    invoke-virtual {p1}, Lo/lh;->aE()Lo/lg;

    move-result-object v0

    .line 1412
    if-nez v0, :cond_0

    .line 1413
    invoke-static {p2, p3, p4}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    .line 1415
    :cond_0
    return-object v0
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 527
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ku;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 528
    return-void
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 543
    iput-object p1, p0, Lo/ku;->Oe:Ljava/lang/String;

    .line 544
    iput-object p2, p0, Lo/ku;->Of:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lo/ku;->Og:Ljava/lang/String;

    .line 546
    iput-object p4, p0, Lo/ku;->Oh:Ljava/lang/String;

    .line 547
    iput-boolean p5, p0, Lo/ku;->Om:Z

    .line 549
    iget-object v0, p0, Lo/ku;->UUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lo/ku;->at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ku;->UUID:Ljava/lang/String;

    .line 552
    :cond_0
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Lo/lp;

    invoke-direct {v0}, Lo/lp;-><init>()V

    iput-object v0, p0, Lo/ku;->On:Lo/lp;

    .line 555
    :cond_1
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    if-nez v0, :cond_2

    .line 556
    new-instance v0, Lo/lp;

    invoke-direct {v0}, Lo/lp;-><init>()V

    iput-object v0, p0, Lo/ku;->Oo:Lo/lp;

    .line 558
    :cond_2
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    if-nez v0, :cond_3

    .line 559
    new-instance v0, Lo/lm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribe-Manager-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    const v3, 0x4baf0

    invoke-direct {v0, v1, v2, v3}, Lo/lm;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/ku;->Op:Lo/lm;

    .line 562
    :cond_3
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    if-nez v0, :cond_4

    .line 563
    new-instance v0, Lo/kr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-Subscribe-Manager-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    const/16 v3, 0x3a98

    invoke-direct {v0, v1, v2, v3}, Lo/kr;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/ku;->Oq:Lo/kr;

    .line 567
    :cond_4
    iget-object v0, p0, Lo/ku;->Or:Lo/lr;

    if-nez v0, :cond_5

    .line 568
    new-instance v0, Lo/lr;

    const-string v1, "TimedTaskManager"

    invoke-direct {v0, v1}, Lo/lr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ku;->Or:Lo/lr;

    .line 570
    :cond_5
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 571
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    .line 573
    :cond_6
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    const-string v1, "pnsdk"

    invoke-virtual {p0}, Lo/ku;->as()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    const-string v1, "V"

    sget-object v2, Lo/ku;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/lm;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lo/lm;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lo/ku;->as()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/lm;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    const-string v1, "V"

    sget-object v2, Lo/ku;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/kr;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lo/kr;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    const-string v1, "User-Agent"

    invoke-virtual {p0}, Lo/ku;->as()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/kr;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private ˊ(Ljava/lang/String;Lo/ki;Lo/fw;Ljava/lang/String;Lo/kn;)V
    .locals 6

    .line 2558
    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lo/ku;->Ou:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2561
    new-instance v3, Lo/le;

    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    iget-object v1, p0, Lo/ku;->Oi:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lo/le;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    :try_start_0
    invoke-virtual {p3}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/le;->ˢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2565
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    invoke-virtual {v0, v4}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v5

    .line 2566
    invoke-direct {p0, p5}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, v5, p4}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2590
    :cond_0
    goto/16 :goto_0

    .line 2570
    :catch_0
    move-exception v4

    .line 2571
    invoke-direct {p0, p5}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/lg;->OM:Lo/lg;

    invoke-virtual {p3}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 2590
    :cond_1
    goto :goto_0

    .line 2577
    :catch_1
    move-exception v4

    .line 2578
    invoke-direct {p0, p5}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lo/lg;->OM:Lo/lg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {p0, v4, v0, v2, v1}, Lo/ku;->ˊ(Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 2590
    :cond_2
    goto :goto_0

    .line 2583
    :catch_2
    move-exception v4

    .line 2584
    invoke-direct {p0, p5}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lo/lg;->OM:Lo/lg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v0, v2, v1}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 2591
    :cond_3
    :goto_0
    goto :goto_1

    .line 2592
    :cond_4
    invoke-direct {p0, p5}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p1, p3, p4}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;Ljava/lang/String;)V

    .line 2596
    :cond_5
    :goto_1
    return-void
.end method

.method private ˊ(Lo/ft;)V
    .locals 5

    .line 2276
    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2277
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lo/ft;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2278
    new-instance v3, Lo/le;

    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    iget-object v1, p0, Lo/ku;->Oi:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lo/le;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p1, v2}, Lo/ft;->ᴿ(I)Lo/fw;

    move-result-object v0

    invoke-virtual {v0}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/le;->ˢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2281
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    invoke-virtual {v0, v4}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lo/ft;->ˊ(ILo/fw;)Lo/fw;

    .line 2277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2284
    :cond_0
    return-void
.end method

.method private ˊ(Lo/kn;Lo/lk;Z)V
    .locals 0

    .line 2605
    if-eqz p3, :cond_0

    .line 2606
    invoke-virtual {p2}, Lo/lk;->aG()V

    .line 2608
    :cond_0
    invoke-virtual {p2, p1}, Lo/lk;->ˊ(Lo/kn;)V

    .line 2609
    return-void
.end method

.method static synthetic ˊ(Lo/ku;Ljava/lang/String;Lo/ki;Lo/fw;Ljava/lang/String;Lo/kn;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lo/ku;->ˊ(Ljava/lang/String;Lo/ki;Lo/fw;Ljava/lang/String;Lo/kn;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ku;Lo/ft;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/ku;->ˊ(Lo/ft;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ku;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/ku;->ᔅ(Z)V

    return-void
.end method

.method static synthetic ˊ(Lo/ku;ZLo/lu;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/ku;->ˊ(ZLo/lu;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ku;ZZLo/lu;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/ku;->ˊ(ZZLo/lu;)V

    return-void
.end method

.method private ˊ(ZLo/lu;)V
    .locals 1

    .line 2353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lo/ku;->ˊ(ZZLo/lu;)V

    .line 2354
    return-void
.end method

.method private ˊ(ZZLo/lu;)V
    .locals 10

    .line 2360
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0}, Lo/lp;->aK()Ljava/lang/String;

    move-result-object v2

    .line 2361
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    invoke-virtual {v0}, Lo/lp;->aK()Ljava/lang/String;

    move-result-object v3

    .line 2362
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0}, Lo/lp;->aI()[Ljava/lang/String;

    move-result-object v4

    .line 2363
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    invoke-virtual {v0}, Lo/lp;->aI()[Ljava/lang/String;

    move-result-object v5

    .line 2365
    array-length v0, v4

    if-gtz v0, :cond_0

    array-length v0, v5

    if-gtz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    invoke-virtual {v0}, Lo/lm;->aG()V

    .line 2367
    return-void

    .line 2370
    :cond_0
    if-nez v2, :cond_1

    .line 2371
    sget-object v0, Lo/lg;->Pd:Lo/lg;

    invoke-direct {p0, v4, v0}, Lo/ku;->ˊ([Ljava/lang/String;Lo/lg;)V

    .line 2373
    return-void

    .line 2376
    :cond_1
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2377
    const-string v2, ","

    goto :goto_0

    .line 2379
    :cond_2
    invoke-static {v2}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2382
    :goto_0
    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const-string v0, "subscribe"

    const/4 v1, 0x1

    aput-object v0, v6, v1

    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const-string v0, "0"

    const/4 v1, 0x4

    aput-object v0, v6, v1

    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v0, v6, v1

    .line 2387
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v7

    .line 2388
    const-string v0, "uuid"

    iget-object v1, p0, Lo/ku;->UUID:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    array-length v0, v5

    if-lez v0, :cond_3

    .line 2391
    const-string v0, "channel-group"

    invoke-virtual {v7, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    :cond_3
    invoke-direct {p0}, Lo/ku;->ay()Ljava/lang/String;

    move-result-object v8

    .line 2395
    if-eqz v8, :cond_4

    const-string v0, "state"

    invoke-virtual {v7, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    :cond_4
    iget v0, p0, Lo/ku;->Ox:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_5

    iget v0, p0, Lo/ku;->Ox:I

    const/16 v1, 0x140

    if-ge v0, v1, :cond_5

    const-string v0, "heartbeat"

    iget v1, p0, Lo/ku;->Ox:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscribing with timetoken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 2400
    new-instance v9, Lo/kn;

    new-instance v0, Lo/ky;

    invoke-direct {v0, p0}, Lo/ky;-><init>(Lo/ku;)V

    invoke-direct {v9, v6, v7, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 2546
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2547
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lo/kn;->ᐢ(Z)V

    .line 2548
    const-string v0, "This is a subscribe 0 request"

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 2550
    :cond_6
    invoke-virtual {v9, p2}, Lo/kn;->ᒻ(Z)V

    .line 2551
    if-eqz p3, :cond_7

    instance-of v0, p3, Lo/lu;

    if-eqz v0, :cond_7

    .line 2552
    invoke-virtual {v9, p3}, Lo/kn;->ˊ(Lo/lu;)V

    .line 2553
    :cond_7
    iget-object v0, p0, Lo/ku;->Op:Lo/lm;

    invoke-direct {p0, v9, v0, p1}, Lo/ku;->ˊ(Lo/kn;Lo/lk;Z)V

    .line 2554
    return-void
.end method

.method private ˊ([Ljava/lang/String;Lo/lg;)V
    .locals 4

    .line 2267
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 2268
    aget-object v2, p1, v1

    .line 2269
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0, v2}, Lo/lp;->ᒻ(Ljava/lang/String;)Lo/lo;

    move-result-object v0

    iget-object v3, v0, Lo/lo;->OE:Lo/ki;

    .line 2270
    invoke-virtual {v3, v2, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 2267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2272
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lo/ku;Lo/kn;)Z
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lo/ku;->ˎ(Lo/kn;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˋ(Lo/ku;)I
    .locals 1

    .line 24
    iget v0, p0, Lo/ku;->Ox:I

    return v0
.end method

.method static synthetic ˋ(Lo/ku;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lo/ku;->Ot:Ljava/lang/String;

    return-object p1
.end method

.method private ˋ(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5

    .line 1753
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "v2/presence/sub_key"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "channel"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const/4 v0, 0x4

    aput-object p1, v2, v0

    const-string v0, "leave"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 1757
    const-string v0, "uuid"

    iget-object v1, p0, Lo/ku;->UUID:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    invoke-virtual {p0}, Lo/ku;->au()Ljava/lang/String;

    move-result-object v3

    .line 1759
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1760
    const-string v0, "auth"

    invoke-virtual {p2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    :cond_0
    new-instance v4, Lo/kn;

    new-instance v0, Lo/kx;

    invoke-direct {v0, p0}, Lo/kx;-><init>(Lo/ku;)V

    invoke-direct {v4, v2, p2, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 1772
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {p0, v4, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 1773
    return-void
.end method

.method static synthetic ˎ(Lo/ku;)Lo/lp;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    return-object v0
.end method

.method private ˎ(Ljava/util/Hashtable;)V
    .locals 5

    .line 1706
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 1707
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1709
    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    const-string v0, "channels"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    :cond_0
    if-eqz v4, :cond_1

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1715
    const-string v0, "groups"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_1
    return-void
.end method

.method private ˎ(Lo/kn;)Z
    .locals 1

    .line 2357
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/kn;->al()Lo/lu;

    move-result-object v0

    iget-boolean v0, v0, Lo/lu;->PO:Z

    :goto_0
    return v0
.end method

.method static synthetic ˏ(Lo/ku;)Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ku;->Ot:Ljava/lang/String;

    return-object v0
.end method

.method private ˏ(Ljava/util/Hashtable;)Z
    .locals 6

    .line 1724
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo/ki;

    if-eqz v0, :cond_0

    const-string v0, "callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1725
    :cond_0
    new-instance v0, Lo/lh;

    const-string v1, "Invalid Callback"

    invoke-direct {v0, v1}, Lo/lh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_1
    const-string v0, "channels"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 1729
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1731
    if-eqz v4, :cond_2

    array-length v0, v4

    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1732
    :goto_0
    if-eqz v5, :cond_3

    array-length v0, v5

    if-lez v0, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 1734
    :goto_1
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 1735
    new-instance v0, Lo/lh;

    const-string v1, "Channel or Channel Group Missing"

    invoke-direct {v0, v1}, Lo/lh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ᐝ(Lo/ku;)Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ku;->Os:Ljava/lang/String;

    return-object v0
.end method

.method private ᔅ(Z)V
    .locals 2

    .line 2342
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/ku;->ˊ(ZZLo/lu;)V

    .line 2343
    return-void
.end method


# virtual methods
.method protected abstract as()Ljava/lang/String;
.end method

.method abstract at()Ljava/lang/String;
.end method

.method public au()Ljava/lang/String;
    .locals 1

    .line 2740
    iget-object v0, p0, Lo/ku;->Oj:Ljava/lang/String;

    return-object v0
.end method

.method public av()V
    .locals 1

    .line 2675
    sget-object v0, Lo/lg;->Pf:Lo/lg;

    invoke-virtual {p0, v0}, Lo/ku;->ˊ(Lo/lg;)V

    .line 2676
    return-void
.end method

.method public aw()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/ku;->Ol:Z

    return v0
.end method

.method ax()[Ljava/lang/String;
    .locals 4

    .line 118
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0}, Lo/lp;->aJ()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "v2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "presence"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "sub-key"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "channel"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v3}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "heartbeat"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected az()Ljava/lang/String;
    .locals 3

    .line 293
    iget-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 295
    iget-boolean v0, p0, Lo/ku;->Om:Z

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "https://"

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_0
    const-string v0, "http://"

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 300
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ku;->Od:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Oa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ku;->Od:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lo/ku;->Ok:Z

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ku;->Ob:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ku;->Od:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Oc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    .line 304
    :cond_2
    iget-object v0, p0, Lo/ku;->Od:Ljava/lang/String;

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2

    .line 1797
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lo/ku;->ˋ([Ljava/lang/String;)V

    .line 1798
    return-void
.end method

.method public ʵ(Ljava/lang/String;)V
    .locals 3

    .line 2751
    iput-object p1, p0, Lo/ku;->Oj:Ljava/lang/String;

    .line 2752
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2753
    :cond_0
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2755
    :cond_1
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    const-string v1, "auth"

    iget-object v2, p0, Lo/ku;->Oj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    :goto_0
    invoke-direct {p0}, Lo/ku;->aC()V

    .line 2758
    return-void
.end method

.method public ʸ(Ljava/lang/String;)V
    .locals 3

    .line 1844
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ku;->Ou:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lo/ku;->ˋ([Ljava/lang/String;)V

    .line 1845
    return-void
.end method

.method public ˀ(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lo/ku;->UUID:Ljava/lang/String;

    .line 396
    return-void
.end method

.method protected ˊ(Lo/ki;)Lo/ki;
    .locals 1

    .line 310
    if-nez p1, :cond_0

    .line 311
    iget-object v0, p0, Lo/ku;->Oz:Lo/ki;

    return-object v0

    .line 313
    :cond_0
    return-object p1
.end method

.method public ˊ(ILo/ki;)V
    .locals 5

    .line 207
    invoke-virtual {p0, p2}, Lo/ku;->ˊ(Lo/ki;)Lo/ki;

    move-result-object v4

    .line 209
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lo/ku;->Ox:I

    .line 210
    iget v0, p0, Lo/ku;->Oy:I

    if-nez v0, :cond_2

    .line 211
    iget v0, p0, Lo/ku;->Ox:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lo/ku;->Ox:I

    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lo/ku;->Oy:I

    .line 213
    :cond_2
    iget v0, p0, Lo/ku;->Ow:I

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lo/ku;->Or:Lo/lr;

    const-string v1, "Presence-Heartbeat"

    new-instance v2, Lo/ku$if;

    iget v3, p0, Lo/ku;->Oy:I

    invoke-direct {v2, p0, v3, v4}, Lo/ku$if;-><init>(Lo/ku;ILo/ki;)V

    invoke-virtual {v0, v1, v2}, Lo/lr;->ˊ(Ljava/lang/String;Lo/lq;)I

    move-result v0

    iput v0, p0, Lo/ku;->Ow:I

    goto :goto_2

    .line 216
    :cond_3
    iget v0, p0, Lo/ku;->Oy:I

    if-eqz v0, :cond_4

    iget v0, p0, Lo/ku;->Oy:I

    const/16 v1, 0x140

    if-le v0, v1, :cond_5

    .line 217
    :cond_4
    iget-object v0, p0, Lo/ku;->Or:Lo/lr;

    iget v1, p0, Lo/ku;->Ow:I

    invoke-virtual {v0, v1}, Lo/lr;->ἰ(I)V

    goto :goto_2

    .line 219
    :cond_5
    iget-object v0, p0, Lo/ku;->Or:Lo/lr;

    iget v1, p0, Lo/ku;->Ow:I

    iget v2, p0, Lo/ku;->Oy:I

    invoke-virtual {v0, v1, v2}, Lo/lr;->ᒡ(II)V

    .line 221
    :goto_2
    invoke-virtual {p0}, Lo/ku;->av()V

    .line 222
    return-void
.end method

.method public ˊ(Ljava/lang/String;JJIZZLo/ki;)V
    .locals 6

    .line 1439
    invoke-virtual {p0, p9}, Lo/ku;->ˊ(Lo/ki;)Lo/ki;

    move-result-object v2

    .line 1440
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    .line 1441
    const/4 v0, -0x1

    if-ne p6, v0, :cond_0

    .line 1442
    const/16 p6, 0x64

    .line 1444
    :cond_0
    const-string v0, "count"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string v0, "reverse"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    const-string v0, "include_token"

    invoke-static {p8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 1449
    const-string v0, "start"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    .line 1452
    const-string v0, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_2
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "v2"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "history"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "sub-key"

    const/4 v1, 0x3

    aput-object v0, v4, v1

    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v0, v4, v1

    const-string v0, "channel"

    const/4 v1, 0x5

    aput-object v0, v4, v1

    invoke-static {p1}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v4, v1

    .line 1493
    new-instance v5, Lo/kn;

    new-instance v0, Lo/kz;

    invoke-direct {v0, p0, v2, p1}, Lo/kz;-><init>(Lo/ku;Lo/ki;Ljava/lang/String;)V

    invoke-direct {v5, v4, v3, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 1494
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {p0, v5, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 1495
    return-void
.end method

.method protected ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ki;I)V
    .locals 7

    .line 1019
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lo/ku;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ki;IZ)V

    .line 1020
    return-void
.end method

.method protected ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ki;IZ)V
    .locals 6

    .line 1024
    new-instance v2, Lo/gb;

    invoke-direct {v2}, Lo/gb;-><init>()V

    .line 1025
    invoke-virtual {v2, p2}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v3

    .line 1026
    invoke-virtual {v3}, Lo/fw;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    sget-object v0, Lo/lg;->OO:Lo/lg;

    invoke-static {v0, p5, p2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1029
    return-void

    .line 1032
    :cond_0
    invoke-virtual {v3}, Lo/fw;->r()Lo/fz;

    move-result-object v4

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 1036
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1037
    invoke-virtual {v4, p3}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v5

    .line 1038
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lo/fw;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1039
    :cond_1
    if-nez p6, :cond_2

    .line 1040
    invoke-virtual {p4, p1, v4}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;)V

    goto :goto_0

    .line 1042
    :cond_2
    sget-object v0, Lo/lg;->OO:Lo/lg;

    invoke-static {v0, p5, p2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1045
    :goto_0
    return-void

    .line 1047
    :cond_3
    invoke-virtual {v5}, Lo/fw;->r()Lo/fz;

    move-result-object v0

    invoke-virtual {p4, p1, v0}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;)V

    .line 1049
    :cond_4
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Lo/fz;Lo/ki;)V
    .locals 7

    .line 956
    move-object v0, p0

    iget-object v1, p0, Lo/ku;->On:Lo/lp;

    invoke-static {p1}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lo/ku;->ˊ(Lo/lp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/fz;Lo/ki;)V

    .line 957
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/fz;Lo/ki;)V
    .locals 2

    .line 723
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 724
    const-string v0, "channel"

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string v0, "message"

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v0, "callback"

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-virtual {p0, v1}, Lo/ku;->ˋ(Ljava/util/Hashtable;)V

    .line 728
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/ki;)V
    .locals 1

    .line 1984
    const-string v0, "0"

    invoke-virtual {p0, p1, p2, v0}, Lo/ku;->ˊ(Ljava/lang/String;Lo/ki;Ljava/lang/String;)V

    .line 1985
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/ki;Ljava/lang/String;)V
    .locals 2

    .line 1996
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lo/ku;->ˊ([Ljava/lang/String;Lo/ki;Ljava/lang/String;)V

    .line 1997
    return-void
.end method

.method public ˊ(Ljava/lang/String;ZZLo/ki;)V
    .locals 6

    .line 1317
    move-object v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    move v3, p2

    move v4, p3

    move-object v5, p4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ku;->ˊ([Ljava/lang/String;[Ljava/lang/String;ZZLo/ki;)V

    .line 1318
    return-void
.end method

.method protected ˊ(Lo/kn;Lo/lk;)V
    .locals 1

    .line 2617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;Z)V

    .line 2618
    return-void
.end method

.method public ˊ(Lo/lg;)V
    .locals 2

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received disconnectAndResubscribe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kq;->ɩ(Ljava/lang/String;)V

    .line 2684
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0, p1}, Lo/lp;->ˋ(Lo/lg;)V

    .line 2685
    iget-object v0, p0, Lo/ku;->Oo:Lo/lp;

    invoke-virtual {v0, p1}, Lo/lp;->ˋ(Lo/lg;)V

    .line 2686
    invoke-direct {p0}, Lo/ku;->aC()V

    .line 2687
    return-void
.end method

.method protected ˊ(Lo/lp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/fz;Lo/ki;)V
    .locals 7

    .line 964
    invoke-virtual {p1, p2}, Lo/lp;->ᒻ(Ljava/lang/String;)Lo/lo;

    move-result-object v2

    .line 965
    invoke-virtual {p0, p6}, Lo/ku;->ˊ(Lo/ki;)Lo/ki;

    move-result-object v3

    .line 966
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v4

    .line 968
    const/16 v0, 0xa

    new-array v5, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const-string v0, "v2"

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const-string v0, "presence"

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const-string v0, "sub-key"

    const/4 v1, 0x3

    aput-object v0, v5, v1

    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v0, v5, v1

    const-string v0, "channel"

    const/4 v1, 0x5

    aput-object v0, v5, v1

    const/4 v0, 0x6

    aput-object p2, v5, v0

    const-string v0, "uuid"

    const/4 v1, 0x7

    aput-object v0, v5, v1

    invoke-static {p4}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v5, v1

    const-string v0, "data"

    const/16 v1, 0x9

    aput-object v0, v5, v1

    .line 973
    if-eqz p5, :cond_0

    const-string v0, "state"

    invoke-virtual {p5}, Lo/fz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "channel-group"

    invoke-virtual {v4, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_1
    if-eqz v2, :cond_2

    .line 977
    iget-object v0, p1, Lo/lp;->PH:Lo/fz;

    invoke-virtual {v0, p2, p5}, Lo/fz;->ˊ(Ljava/lang/String;Lo/fw;)V

    .line 980
    :cond_2
    new-instance v6, Lo/kn;

    new-instance v0, Lo/lb;

    invoke-direct {v0, p0, v3}, Lo/lb;-><init>(Lo/ku;Lo/ki;)V

    invoke-direct {v6, v5, v4, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 991
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {p0, v6, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 992
    return-void
.end method

.method public ˊ([Ljava/lang/String;Lo/ki;Ljava/lang/String;)V
    .locals 2

    .line 1953
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1955
    const-string v0, "channels"

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string v0, "callback"

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    const-string v0, "timetoken"

    invoke-virtual {v1, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    invoke-virtual {p0, v1}, Lo/ku;->ᐝ(Ljava/util/Hashtable;)V

    .line 1960
    return-void
.end method

.method public ˊ([Ljava/lang/String;[Ljava/lang/String;ZZLo/ki;)V
    .locals 7

    .line 1344
    invoke-virtual {p0, p5}, Lo/ku;->ˊ(Lo/ki;)Lo/ki;

    move-result-object v2

    .line 1345
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    .line 1346
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    const-string v0, "v2"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    const-string v0, "presence"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    const-string v0, "sub_key"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 1355
    :cond_0
    const-string v0, ","

    invoke-static {p1, v0}, Lo/li;->ˊ([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1356
    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    const-string v5, ","

    goto :goto_0

    .line 1359
    :cond_1
    invoke-static {v5}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1362
    :goto_0
    const-string v0, "channel"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "state"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    :cond_3
    if-nez p4, :cond_4

    const-string v0, "disable_uuids"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    :cond_4
    if-eqz p2, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    .line 1369
    const-string v0, "channel-group"

    const-string v1, ","

    invoke-static {p2, v1}, Lo/li;->ˊ([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1374
    new-instance v6, Lo/kn;

    new-instance v0, Lo/kw;

    invoke-direct {v0, p0, v2}, Lo/kw;-><init>(Lo/ku;Lo/ki;)V

    invoke-direct {v6, v5, v3, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 1385
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {p0, v6, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 1386
    return-void
.end method

.method public ˋ(Ljava/lang/String;Lo/ki;)V
    .locals 5

    .line 914
    new-instance v4, Ljava/util/Hashtable;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 916
    const-string v0, "channels"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/ku;->Ou:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v0, "callback"

    invoke-virtual {v4, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {p0, v4}, Lo/ku;->ᐝ(Ljava/util/Hashtable;)V

    .line 920
    return-void
.end method

.method protected ˋ(Ljava/util/Hashtable;)V
    .locals 13

    .line 824
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 825
    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 826
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ki;

    invoke-virtual {p0, v0}, Lo/ku;->ˊ(Lo/ki;)Lo/ki;

    move-result-object v5

    .line 827
    const-string v0, "storeInHistory"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 828
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 829
    iget-object v0, p0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v8

    .line 831
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "store"

    invoke-virtual {v8, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_0
    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 835
    new-instance v9, Lo/le;

    iget-object v0, p0, Lo/ku;->Oh:Ljava/lang/String;

    iget-object v1, p0, Lo/ku;->Oi:Ljava/lang/String;

    invoke-direct {v9, v0, v1}, Lo/le;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    instance-of v0, v4, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 838
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v7}, Lo/le;->ˤ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 844
    goto :goto_0

    .line 841
    :catch_0
    move-exception v10

    .line 842
    sget-object v0, Lo/lg;->OL:Lo/lg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v10, v0, v2, v1}, Lo/ku;->ˊ(Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 843
    return-void

    .line 845
    :goto_0
    goto :goto_1

    .line 846
    :cond_2
    instance-of v0, v4, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 852
    :cond_3
    :goto_1
    const-string v9, "0"

    .line 854
    iget-object v0, p0, Lo/ku;->Og:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 855
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    .line 856
    iget-object v0, p0, Lo/ku;->Oe:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Of:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lo/ku;->Og:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/le;->ι(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lo/le;->ˈ([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lo/lh; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v0

    .line 870
    goto :goto_2

    .line 865
    :catch_1
    move-exception v11

    .line 866
    sget-object v0, Lo/lg;->OL:Lo/lg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v12

    .line 867
    invoke-virtual {v5, v3, v12}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 870
    goto :goto_2

    .line 868
    :catch_2
    move-exception v11

    .line 869
    sget-object v0, Lo/lg;->OL:Lo/lg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {p0, v11, v0, v2, v1}, Lo/ku;->ˊ(Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 872
    :cond_4
    :goto_2
    const/16 v0, 0x8

    new-array v10, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lo/ku;->az()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    const-string v0, "publish"

    const/4 v1, 0x1

    aput-object v0, v10, v1

    iget-object v0, p0, Lo/ku;->Oe:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, v10, v1

    iget-object v0, p0, Lo/ku;->Of:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v0, v10, v1

    invoke-static {v9}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v10, v1

    invoke-static {v3}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v10, v1

    const-string v0, "0"

    const/4 v1, 0x6

    aput-object v0, v10, v1

    invoke-static {v7}, Lo/li;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v10, v1

    .line 895
    new-instance v11, Lo/kn;

    new-instance v0, Lo/la;

    invoke-direct {v0, p0, v5, v3}, Lo/la;-><init>(Lo/ku;Lo/ki;Ljava/lang/String;)V

    invoke-direct {v11, v10, v8, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 897
    iget-object v0, p0, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {p0, v11, v0}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 898
    return-void
.end method

.method public ˋ([Ljava/lang/String;)V
    .locals 3

    .line 1781
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 1782
    aget-object v2, p1, v1

    .line 1783
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    invoke-virtual {v0, v2}, Lo/lp;->ᐢ(Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lo/ku;->On:Lo/lp;

    iget-object v0, v0, Lo/lp;->PH:Lo/fz;

    invoke-virtual {v0, v2}, Lo/fz;->ۦ(Ljava/lang/String;)Lo/fw;

    .line 1785
    invoke-direct {p0, v2}, Lo/ku;->ˁ(Ljava/lang/String;)V

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1788
    :cond_0
    invoke-direct {p0}, Lo/ku;->aC()V

    .line 1789
    return-void
.end method

.method protected ᐝ(Ljava/util/Hashtable;)V
    .locals 1

    .line 1921
    invoke-direct {p0, p1}, Lo/ku;->ˎ(Ljava/util/Hashtable;)V

    .line 1923
    invoke-direct {p0, p1}, Lo/ku;->ˏ(Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    return-void

    .line 1927
    :cond_0
    invoke-direct {p0, p1}, Lo/ku;->ʻ(Ljava/util/Hashtable;)V

    .line 1928
    return-void
.end method

.method public ṛ(I)V
    .locals 1

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/ku;->ˊ(ILo/ki;)V

    .line 230
    return-void
.end method
