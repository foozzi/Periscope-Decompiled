.class public Lo/aad;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aad$1;,
        Lo/aad$if;
    }
.end annotation


# instance fields
.field private final blm:Landroid/content/SharedPreferences;

.field private final bny:Lo/ot;

.field private final bsA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bsB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private final bsC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private final bsD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private bsE:Ltv/periscope/android/api/PsUser;

.field private final bsp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation
.end field

.field private final bsq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bsr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bst:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field private final bsu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field private final bsv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field private final bsw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
        }
    .end annotation
.end field

.field private final bsx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/ank;Lo/anj;>;"
        }
    .end annotation
.end field

.field private final bsy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final bsz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ot;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsq:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsr:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bst:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bsu:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bsv:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bsw:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/aad;->bsx:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsB:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsC:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    .line 75
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    .line 76
    iput-object p2, p0, Lo/aad;->bny:Lo/ot;

    .line 79
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brC"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 80
    if-nez v3, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    .line 85
    :goto_0
    return-void
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;Z)Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 211
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 213
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v8, v0

    .line 214
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    iget-object v1, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    move v3, p4

    invoke-virtual {v8}, Ltv/periscope/android/api/PsUser;->um()I

    move-result v4

    invoke-virtual {v8}, Ltv/periscope/android/api/PsUser;->ul()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;ZII)Lo/anj;

    move-result-object v9

    .line 221
    iget-object v0, p0, Lo/aad;->bsx:Ljava/util/Map;

    iget-object v1, v8, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-static {p1, v1, p4}, Lo/ank;->ˋ(Ljava/lang/String;Ljava/lang/String;Z)Lo/ank;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    goto/16 :goto_0

    .line 223
    :cond_2
    return-object v6

    .line 225
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/lang/String;Ljava/lang/String;ZII)Lo/anj;
    .locals 1

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Z)Lo/anj;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lo/anj;

    invoke-direct {v0, p4, p5, p3}, Lo/anj;-><init>(IIZ)V

    .line 247
    :cond_0
    return-object v0
.end method

.method private ˊ(Ljava/util/List;Ljava/util/List;Lo/aak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;Lo/aak;)V"
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1, p2}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    invoke-virtual {v0, p3}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 452
    :cond_0
    return-void
.end method

.method private ˊ(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;Ljava/lang/String;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 325
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 326
    if-nez v2, :cond_0

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 330
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v4, v0

    .line 331
    iget-object v0, v4, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, v4, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    goto :goto_0

    .line 334
    :cond_1
    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method private ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/aah;Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 276
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    new-instance v0, Lo/aad$if;

    invoke-direct {v0, p1}, Lo/aad$if;-><init>(Lo/aah;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    return-void
.end method

.method private ˊ(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)Z"
        }
    .end annotation

    .line 341
    if-nez p2, :cond_0

    .line 342
    const/4 v0, 0x0

    return v0

    .line 344
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 345
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v3, v0

    .line 346
    iget-object v0, v3, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, v3, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    goto :goto_0

    .line 349
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public logout()V
    .locals 1

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lo/aad;->bsE:Ltv/periscope/android/api/PsUser;

    .line 627
    invoke-virtual {p0}, Lo/aad;->vg()V

    .line 628
    iget-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    iget-object v0, p0, Lo/aad;->bst:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 630
    iget-object v0, p0, Lo/aad;->bsu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 631
    iget-object v0, p0, Lo/aad;->bsq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 632
    iget-object v0, p0, Lo/aad;->bsr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 634
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 635
    return-void
.end method

.method public vf()V
    .locals 3

    .line 251
    iget-object v0, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lo/aah;->bsP:Lo/aah;

    iget-object v1, p0, Lo/aad;->bsA:Ljava/util/List;

    iget-object v2, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lo/aad;->ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V

    .line 255
    sget-object v0, Lo/aah;->bsP:Lo/aah;

    iget-object v1, p0, Lo/aad;->bsA:Ljava/util/List;

    iget-object v2, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lo/aad;->ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Lo/aah;->bsO:Lo/aah;

    iget-object v1, p0, Lo/aad;->bsy:Ljava/util/List;

    iget-object v2, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lo/aad;->ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V

    .line 259
    sget-object v0, Lo/aah;->bsO:Lo/aah;

    iget-object v1, p0, Lo/aad;->bsy:Ljava/util/List;

    iget-object v2, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lo/aad;->ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V

    .line 261
    :cond_1
    iget-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    sget-object v0, Lo/aah;->bsQ:Lo/aah;

    iget-object v1, p0, Lo/aad;->bsz:Ljava/util/List;

    iget-object v2, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lo/aad;->ˊ(Lo/aah;Ljava/util/List;Ljava/util/List;)V

    .line 264
    :cond_2
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btU:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public vg()V
    .locals 1

    .line 268
    iget-object v0, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    iget-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    iget-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iget-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    return-void
.end method

.method vh()I
    .locals 1

    .line 313
    iget-object v0, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method vi()I
    .locals 1

    .line 317
    iget-object v0, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method vj()I
    .locals 1

    .line 321
    iget-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public vk()V
    .locals 3

    .line 407
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 408
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    return-void
.end method

.method public vl()Z
    .locals 3

    .line 412
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brG"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public vm()Ljava/lang/String;
    .locals 3

    .line 441
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brH"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vn()Ljava/lang/String;
    .locals 3

    .line 445
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brI"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vo()Ljava/lang/String;
    .locals 5

    .line 554
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brD"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 555
    if-nez v3, :cond_0

    .line 556
    const/4 v0, 0x0

    return-object v0

    .line 558
    :cond_0
    invoke-static {}, Lo/akn;->bS()Lo/fl;

    move-result-object v0

    new-instance v1, Lo/aae;

    invoke-direct {v1, p0}, Lo/aae;-><init>(Lo/aad;)V

    invoke-virtual {v1}, Lo/aae;->V()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo/fl;->ˊ(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 561
    if-nez v4, :cond_1

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsProfileImageUrls;

    iget-object v0, v0, Ltv/periscope/android/api/PsProfileImageUrls;->url:Ljava/lang/String;

    return-object v0
.end method

.method public vp()Ljava/lang/String;
    .locals 3

    .line 568
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brv"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vq()Ljava/lang/String;
    .locals 3

    .line 572
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vr()I
    .locals 3

    .line 576
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brz"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public vs()I
    .locals 3

    .line 580
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bry"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public vt()I
    .locals 3

    .line 584
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brB"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public vu()Ljava/lang/String;
    .locals 3

    .line 588
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brw"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vv()I
    .locals 3

    .line 592
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brA"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public vw()Ljava/lang/String;
    .locals 3

    .line 596
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brx"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vx()Ljava/lang/String;
    .locals 3

    .line 600
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bru"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vy()Z
    .locals 3

    .line 604
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public vz()Ltv/periscope/android/api/PsUser;
    .locals 2

    .line 612
    iget-object v0, p0, Lo/aad;->bsE:Ltv/periscope/android/api/PsUser;

    if-nez v0, :cond_0

    .line 613
    new-instance v1, Ltv/periscope/android/api/PsUser;

    invoke-direct {v1}, Ltv/periscope/android/api/PsUser;-><init>()V

    .line 614
    invoke-virtual {p0}, Lo/aad;->vp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lo/aad;->vu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lo/aad;->vt()I

    move-result v0

    iput v0, v1, Ltv/periscope/android/api/PsUser;->bon:I

    .line 620
    iput-object v1, p0, Lo/aad;->bsE:Ltv/periscope/android/api/PsUser;

    .line 622
    :cond_0
    iget-object v0, p0, Lo/aad;->bsE:Ltv/periscope/android/api/PsUser;

    return-object v0
.end method

.method ĵ(I)Ljava/lang/Object;
    .locals 1

    .line 301
    iget-object v0, p0, Lo/aad;->bsB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method ĸ(I)Ljava/lang/Object;
    .locals 1

    .line 305
    iget-object v0, p0, Lo/aad;->bsC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method Ĺ(I)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 309
    iget-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Lo/aah;)I
    .locals 3

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lo/aad$1;->bsG:[I

    invoke-virtual {p2}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lo/aad;->bsr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 368
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lo/aad;->bsq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 372
    :cond_0
    sget-object v0, Lo/aad$1;->bsG:[I

    invoke-virtual {p2}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 374
    :pswitch_3
    iget-object v0, p0, Lo/aad;->bsu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 375
    if-nez v2, :cond_1

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 382
    :goto_1
    :pswitch_4
    iget-object v0, p0, Lo/aad;->bst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 383
    if-nez v2, :cond_2

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 389
    :pswitch_5
    iget-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 392
    :pswitch_6
    iget-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 395
    :pswitch_7
    iget-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Z)Lo/anj;
    .locals 2

    .line 238
    iget-object v0, p0, Lo/aad;->bsx:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lo/ank;->ˋ(Ljava/lang/String;Ljava/lang/String;Z)Lo/ank;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anj;

    return-object v0
.end method

.method public ˊ(Lo/aah;Ljava/lang/String;I)Ltv/periscope/android/api/PsUser;
    .locals 2

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lo/aad$1;->bsG:[I

    invoke-virtual {p1}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p0, Lo/aad;->bsr:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0

    .line 98
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p0, Lo/aad;->bsq:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Lo/aad$1;->bsG:[I

    invoke-virtual {p1}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 104
    :sswitch_0
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p0, Lo/aad;->bsu:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0

    .line 108
    :goto_1
    :sswitch_1
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p0, Lo/aad;->bst:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v5, p3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;ZII)Lo/anj;

    move-result-object v6

    .line 185
    iget v0, v6, Lo/anj;->bpH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v6, Lo/anj;->bpH:I

    .line 186
    iget-object v0, p0, Lo/aad;->bsx:Ljava/util/Map;

    invoke-static {p1, p2, p4}, Lo/ank;->ˋ(Ljava/lang/String;Ljava/lang/String;Z)Lo/ank;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    new-instance v1, Lo/aal;

    iget v2, v6, Lo/anj;->bpH:I

    invoke-direct {v1, p1, p2, p4, v2}, Lo/aal;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Lo/anv;>;)V"
        }
    .end annotation

    .line 147
    if-nez p3, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 151
    const/4 v7, 0x0

    .line 153
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anv;

    move-object v10, v0

    .line 155
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-virtual {v10}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-virtual {v10}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {v10}, Lo/anv;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/anw;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    add-int/lit8 v7, v7, 0x1

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    new-instance v11, Ltv/periscope/android/api/PsUser;

    invoke-direct {v11}, Ltv/periscope/android/api/PsUser;-><init>()V

    .line 165
    invoke-virtual {v10}, Lo/anv;->displayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    .line 166
    invoke-virtual {v10}, Lo/anv;->Cv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Ltv/periscope/android/api/PsUser;->bpJ:Ljava/lang/String;

    .line 167
    invoke-virtual {v10}, Lo/anv;->Cl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    .line 168
    invoke-virtual {v10}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 169
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_1
    move-object v0, p0

    move-object v1, p2

    invoke-virtual {v10}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lo/anv;->Cw()I

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;ZII)Lo/anj;

    move-result-object v11

    .line 173
    iget-object v0, p0, Lo/aad;->bsx:Ljava/util/Map;

    invoke-virtual {v10}, Lo/anv;->id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lo/ank;->ˋ(Ljava/lang/String;Ljava/lang/String;Z)Lo/ank;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    goto/16 :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lo/vf;->tL()Lo/zp;

    move-result-object v0

    add-int/lit8 v1, v6, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, p2, v1, v7}, Lo/zp;->ˏ(Ljava/lang/String;II)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v8, v0}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 181
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lo/aad;->bsv:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, p3, v1}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lo/aad;->bsw:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, p4, v1}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btY:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public ˊ(Lo/aah;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/aah;Ljava/lang/String;Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 115
    sget-object v0, Lo/aad$1;->bsG:[I

    invoke-virtual {p1}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lo/aad;->bst:Ljava/util/Map;

    invoke-direct {p0, v0, p2, p3}, Lo/aad;->ˊ(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btR:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 119
    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lo/aad;->bsu:Ljava/util/Map;

    invoke-direct {p0, v0, p2, p3}, Lo/aad;->ˊ(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 123
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btS:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 124
    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    .line 128
    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    .line 132
    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    .line 136
    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    .line 140
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btV:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 144
    :goto_0
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public ˊ(Ltv/periscope/android/api/PsUser;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btT:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public ˋ(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/HashSet<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lo/aad;->vr()I

    move-result v2

    .line 503
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 504
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 506
    add-int/lit8 v2, v2, 0x1

    .line 508
    :cond_0
    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 510
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 512
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btP:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public ˋ(Ltv/periscope/android/api/PsUser;)V
    .locals 4

    .line 416
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 417
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bru"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brx"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brv"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brw"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->bpz:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lo/akn;->bS()Lo/fl;

    move-result-object v1

    iget-object v2, p1, Ltv/periscope/android/api/PsUser;->bpA:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bry"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Ltv/periscope/android/api/PsUser;->bpB:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 424
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Ltv/periscope/android/api/PsUser;->bpC:I

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brB"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Ltv/periscope/android/api/PsUser;->bon:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p1, Ltv/periscope/android/api/PsUser;->bpG:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 427
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brF"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p1, Ltv/periscope/android/api/PsUser;->bpI:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public ᐨ(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lo/aad;->bsq:Ljava/util/List;

    sget-object v1, Lo/aak;->btR:Lo/aak;

    invoke-direct {p0, v0, p1, v1}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;Lo/aak;)V

    .line 456
    return-void
.end method

.method public ᑊ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 434
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brH"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btZ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public 一(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lo/aad;->bsv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public גּ(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lo/aad;->bsw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public זּ(Ljava/lang/String;)Lo/aah;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/aad;->bsA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lo/aah;->bsP:Lo/aah;

    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Lo/aad;->bsy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lo/aah;->bsO:Lo/aah;

    return-object v0

    .line 291
    :cond_1
    iget-object v0, p0, Lo/aad;->bsz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lo/aah;->bsQ:Lo/aah;

    return-object v0

    .line 294
    :cond_2
    iget-object v0, p0, Lo/aad;->bsD:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    sget-object v0, Lo/aah;->bsR:Lo/aah;

    return-object v0

    .line 297
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    return-object v0
.end method

.method public רּ(Ljava/lang/String;)Z
    .locals 1

    .line 476
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ﭕ(Ljava/lang/String;)V
    .locals 5

    .line 480
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v4, v0

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 482
    iget v0, v4, Ltv/periscope/android/api/PsUser;->bpB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Ltv/periscope/android/api/PsUser;->bpB:I

    .line 483
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brz"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lo/aad;->vr()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btO:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public ﭜ(Ljava/lang/String;)V
    .locals 5

    .line 489
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v3, v0

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, v3, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 491
    invoke-virtual {p0}, Lo/aad;->vr()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 492
    if-gez v4, :cond_0

    .line 493
    const/4 v4, 0x0

    .line 495
    :cond_0
    iget v0, v3, Ltv/periscope/android/api/PsUser;->bpB:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/PsUser;->bpB:I

    .line 496
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "o.zf"

    invoke-static {v1}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "brz"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 497
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btP:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public ﭡ(Ljava/lang/String;)V
    .locals 5

    .line 517
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 518
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v4, v0

    .line 519
    if-eqz v4, :cond_0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpF:Z

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 523
    :cond_0
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 528
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brA"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lo/aad;->vv()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->bub:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public ﭤ(Ljava/lang/String;)V
    .locals 6

    .line 535
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 536
    iget-object v0, p0, Lo/aad;->bsp:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v4, v0

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpF:Z

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpE:Z

    .line 540
    invoke-virtual {p0}, Lo/aad;->vv()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 541
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brA"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    iget-object v1, v4, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    iget-object v1, v4, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_0
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->buc:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btQ:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public ﹳ(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lo/aad;->bsr:Ljava/util/List;

    sget-object v1, Lo/aak;->btS:Lo/aak;

    invoke-direct {p0, v0, p1, v1}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;Lo/aak;)V

    .line 460
    return-void
.end method

.method public ﾞ(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ltv/periscope/android/api/PsUser;>;)V"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lo/aad;->ˊ(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lo/aad;->blm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 465
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brA"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    const-string v0, "o.zf"

    invoke-static {v0}, Lo/zf$cON;->ˊ(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "brC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lo/aad;->bss:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    iget-object v0, p0, Lo/aad;->bny:Lo/ot;

    sget-object v1, Lo/aak;->bud:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 473
    :cond_0
    return-void
.end method
