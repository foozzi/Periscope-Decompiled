.class public final Lo/fr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final JY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/gl;>;"
        }
    .end annotation
.end field

.field private Ka:Z

.field private Kc:Z

.field private Kd:Z

.field private Ki:Lo/hg;

.field private Kj:Lo/gg;

.field private Kk:Lo/fk;

.field private final Kl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/reflect/Type;Lo/fs<*>;>;"
        }
    .end annotation
.end field

.field private final Km:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/gl;>;"
        }
    .end annotation
.end field

.field private Kn:Ljava/lang/String;

.field private Ko:I

.field private Kp:I

.field private Kq:Z

.field private Kr:Z

.field private Ks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lo/hg;->KP:Lo/hg;

    iput-object v0, p0, Lo/fr;->Ki:Lo/hg;

    .line 70
    sget-object v0, Lo/gg;->Ky:Lo/gg;

    iput-object v0, p0, Lo/fr;->Kj:Lo/gg;

    .line 71
    sget-object v0, Lo/fe;->JQ:Lo/fe;

    iput-object v0, p0, Lo/fr;->Kk:Lo/fk;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/fr;->Kl:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fr;->JY:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fr;->Km:Ljava/util/List;

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lo/fr;->Ko:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lo/fr;->Kp:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/fr;->Ks:Z

    .line 94
    return-void
.end method

.method private ˊ(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;IILjava/util/List<Lo/gl;>;)V"
        }
    .end annotation

    .line 554
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    new-instance v2, Lo/fb;

    invoke-direct {v2, p1}, Lo/fb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 557
    new-instance v2, Lo/fb;

    invoke-direct {v2, p2, p3}, Lo/fb;-><init>(II)V

    goto :goto_0

    .line 559
    :cond_1
    return-void

    .line 562
    :goto_0
    const-class v0, Ljava/util/Date;

    invoke-static {v0}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-static {v0, v2}, Lo/gj;->ˊ(Lo/jy;Ljava/lang/Object;)Lo/gl;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    const-class v0, Ljava/sql/Timestamp;

    invoke-static {v0}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-static {v0, v2}, Lo/gj;->ˊ(Lo/jy;Ljava/lang/Object;)Lo/gl;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-class v0, Ljava/sql/Date;

    invoke-static {v0}, Lo/jy;->ˈ(Ljava/lang/Class;)Lo/jy;

    move-result-object v0

    invoke-static {v0, v2}, Lo/gj;->ˊ(Lo/jy;Ljava/lang/Object;)Lo/gl;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method


# virtual methods
.method public f()Lo/fl;
    .locals 13

    .line 539
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v0, p0, Lo/fr;->JY:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 542
    iget-object v0, p0, Lo/fr;->Km:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v0, p0, Lo/fr;->Kn:Ljava/lang/String;

    iget v1, p0, Lo/fr;->Ko:I

    iget v2, p0, Lo/fr;->Kp:I

    invoke-direct {p0, v0, v1, v2, v12}, Lo/fr;->ˊ(Ljava/lang/String;IILjava/util/List;)V

    .line 545
    new-instance v0, Lo/fl;

    iget-object v1, p0, Lo/fr;->Ki:Lo/hg;

    iget-object v2, p0, Lo/fr;->Kk:Lo/fk;

    iget-object v3, p0, Lo/fr;->Kl:Ljava/util/Map;

    iget-boolean v4, p0, Lo/fr;->Ka:Z

    iget-boolean v5, p0, Lo/fr;->Kq:Z

    iget-boolean v6, p0, Lo/fr;->Kc:Z

    iget-boolean v7, p0, Lo/fr;->Ks:Z

    iget-boolean v8, p0, Lo/fr;->Kd:Z

    iget-boolean v9, p0, Lo/fr;->Kr:Z

    iget-object v10, p0, Lo/fr;->Kj:Lo/gg;

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lo/fl;-><init>(Lo/hg;Lo/fk;Ljava/util/Map;ZZZZZZLo/gg;Ljava/util/List;)V

    return-object v0
.end method

.method public ˊ(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lo/fr;
    .locals 4

    .line 448
    instance-of v0, p2, Lo/ge;

    if-nez v0, :cond_0

    instance-of v0, p2, Lo/fv;

    if-nez v0, :cond_0

    instance-of v0, p2, Lo/fs;

    if-nez v0, :cond_0

    instance-of v0, p2, Lo/gk;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 452
    instance-of v0, p2, Lo/fs;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lo/fr;->Kl:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lo/fs;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_2
    instance-of v0, p2, Lo/ge;

    if-nez v0, :cond_3

    instance-of v0, p2, Lo/fv;

    if-eqz v0, :cond_4

    .line 456
    :cond_3
    invoke-static {p1}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v3

    .line 457
    iget-object v0, p0, Lo/fr;->JY:Ljava/util/List;

    invoke-static {v3, p2}, Lo/gj;->ˋ(Lo/jy;Ljava/lang/Object;)Lo/gl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_4
    instance-of v0, p2, Lo/gk;

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lo/fr;->JY:Ljava/util/List;

    invoke-static {p1}, Lo/jy;->ʽ(Ljava/lang/reflect/Type;)Lo/jy;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lo/gk;

    invoke-static {v1, v2}, Lo/ir;->ˊ(Lo/jy;Lo/gk;)Lo/gl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_5
    return-object p0
.end method

.method public ˊ(Lo/fe;)Lo/fr;
    .locals 0

    .line 275
    iput-object p1, p0, Lo/fr;->Kk:Lo/fk;

    .line 276
    return-object p0
.end method

.method public ˊ(Lo/gl;)Lo/fr;
    .locals 1

    .line 474
    iget-object v0, p0, Lo/fr;->JY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-object p0
.end method
